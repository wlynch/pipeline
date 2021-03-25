package v1beta1

import "context"

var paramCtxKey struct{}

type paramCtxVal map[string]ParamSpec

func AddContextParams(ctx context.Context, in []Param) context.Context {
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
		ps := ParamSpec{
			Name:    p.Name,
			Type:    p.Value.Type,
			Default: &p.Value,
		}
		ps.SetDefaults(ctx)
		out[p.Name] = ps
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
		out[p.Name] = p
	}
	return context.WithValue(ctx, paramCtxKey, out)
}

func GetContextParams(ctx context.Context) []Param {
	v := ctx.Value(paramCtxKey)
	if v == nil {
		return nil
	}

	pv := v.(paramCtxVal)
	out := make([]Param, 0, len(pv))
	for _, ps := range pv {
		out = append(out, Param{
			Name:  ps.Name,
			Value: *ps.Default,
		})
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
		out = append(out, ps)
	}
	return out
}
