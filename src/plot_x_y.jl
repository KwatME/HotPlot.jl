using Plotly: Layout, plot, scatter

function plot_x_y(x_::Tuple{Vararg{Vector{<:Real}}}, y_::Tuple{Vararg{Vector{<:Real}}}; name_::Union{Nothing, Tuple{Vararg{String}}} = nothing, layout::Union{Nothing, Layout} = nothing)

    n_trace = length(x_)

    if name_ === nothing

        name_ = Tuple(string(index) for index in 1:n_trace)

    end

    trace_ = Tuple(Dict{String, Any}() for index in 1:n_trace)

    for index in 1:n_trace

        trace_[index]["x"] = x_[index]

        trace_[index]["y"] = y_[index]

        trace_[index]["name"] = name_[index]

    end

    traces_ = [scatter(trace) for trace in trace_]

    if layout === nothing

        layout = Layout()

    end

    return plot(traces_, layout)

end



function plot_x_y(y_::Tuple{Vararg{Vector{<:Real}}}; kwargs...)

    return plot_x_y(Tuple(collect(1:length(y)) for y in y_), y_; kwargs...)

end

export plot_x_y
