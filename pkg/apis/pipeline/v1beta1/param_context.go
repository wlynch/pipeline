package v1beta1

import (
	"context"
	"fmt"
)

var paramCtxKey struct{}

type paramCtxVal map[string]ParamSpec

/*
type combinedParamSpec struct {
	Name string

	Type        ParamType
	Description string
	Default     *ArrayOrString

	Value ArrayOrString
}
*/

func AddContextParams(ctx context.Context, in []Param) context.Context {
	if in == nil {
		return ctx
	}

	out := paramCtxVal{}

	// Copy map to ensure that contexts are unique.
	v := ctx.Value(paramCtxKey)
	if v != nil {
		for n, cps := range v.(paramCtxVal) {
			out[n] = cps
		}
	}
	for _, p := range in {
		// The user may have omitted type data. Fill this in in to normalize data.
		if v := p.Value; v.Type == "" {
			fmt.Printf("%+v\n", v)
			if len(v.ArrayVal) > 0 {
				p.Value.Type = ParamTypeArray
			}
			if v.StringVal != "" {
				p.Value.Type = ParamTypeString
			}
		}
		out[p.Name] = ParamSpec{
			Name: p.Name,
			Type: p.Value.Type,
			//Value: p.Value,
		}
	}
	return context.WithValue(ctx, paramCtxKey, out)
}

func AddContextParamSpec(ctx context.Context, in []ParamSpec) context.Context {
	if in == nil {
		return ctx
	}

	out := paramCtxVal{}

	// Copy map to ensure that contexts are unique.
	v := ctx.Value(paramCtxKey)
	if v != nil {
		for n, ps := range v.(paramCtxVal) {
			out[n] = ps
		}
	}
	for _, p := range in {
		cps := ParamSpec{
			Name:        p.Name,
			Type:        p.Type,
			Description: p.Description,
			Default:     p.Default,
		}
		/*
			if cps.Type == ParamTypeString {
				cps.Value = ArrayOrString{
					Type:      ParamTypeString,
					StringVal: fmt.Sprintf("$(params.%s)", cps.Name),
				}
			} else {
				cps.Value = ArrayOrString{
					Type:     ParamTypeArray,
					ArrayVal: []string{fmt.Sprintf("$(params.%s[*])", cps.Name)},
				}
			}
		*/
		out[p.Name] = cps
	}
	return context.WithValue(ctx, paramCtxKey, out)
}

func GetContextParams(ctx context.Context, overrides ...Param) []Param {
	v := ctx.Value(paramCtxKey)
	if v == nil {
		return nil
	}

	pv := v.(paramCtxVal)
	fmt.Printf("ctx p %+v\n", pv)
	out := make([]Param, 0, len(pv))
	// Overrides take precendece. Include these in output params
	// and prune from the context params.
	for _, o := range overrides {
		if _, ok := pv[o.Name]; ok {
			delete(pv, o.Name)
		}
		out = append(out, o)
	}
	// Include the reset of the context params.
	for _, ps := range pv {
		p := Param{
			Name: ps.Name,
		}
		if ps.Type == ParamTypeString {
			p.Value = ArrayOrString{
				Type:      ParamTypeString,
				StringVal: fmt.Sprintf("$(params.%s)", ps.Name),
			}
		} else {
			p.Value = ArrayOrString{
				Type:     ParamTypeArray,
				ArrayVal: []string{fmt.Sprintf("$(params.%s[*])", ps.Name)},
			}
		}
		out = append(out, p)
	}

	return out
}

func GetContextParamSpecs(ctx context.Context) []ParamSpec {
	v := ctx.Value(paramCtxKey)
	if v == nil {
		return nil
	}

	pv := v.(paramCtxVal)
	out := make([]ParamSpec, 0, len(pv))
	for _, ps := range pv {
		out = append(out, ParamSpec{
			Name:        ps.Name,
			Type:        ps.Type,
			Description: ps.Description,
			Default:     ps.Default,
		})
	}
	return out
}
