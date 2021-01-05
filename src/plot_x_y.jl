using Plotly: Layout, plot, scatter

function plot_x_y(
    x_::Tuple{Vararg{Vector{Float64}}},
    y_::Tuple{Vararg{Vector{Float64}}};
    name_::Union{Nothing, Tuple{Vararg{String}}} = nothing,
    layout::Union{Nothing, Layout} = nothing,
 )::Any

    n = length(x_)

    if name_ === nothing

        name_ = Tuple(string(i) for i in 1:n)

    end

    trace_ = Tuple(Dict{String, Any}() for i in 1:n)

    for i in 1:n

        trace_[i]["x"] = x_[i]

        trace_[i]["y"] = y_[i]

        trace_[i]["name"] = name_[i]

    end

    trace_ = [scatter(t) for t in trace_]

    if layout === nothing

        layout = Layout()

    end

    return plot(trace_, layout)

end



function plot_x_y(y_::Tuple{Vararg{Vector{Float64}}}; kwargs...)::Any

    return plot_x_y(Tuple(Float64.(1:length(y)) for y in y_), y_; kwargs...)

end

export plot_x_y
