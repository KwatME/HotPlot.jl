using Plotly: Layout, plot, scatter

Vector_ = Vector{Vector{<:Real}}

function plot_x_y(x_::Vector_, y_::Vector_; name_ = nothing, layout = nothing)

    n_trace = length(x_)

    if name_ === nothing

        name_ = [string(index) for index in 1:n_trace]

    end

    trace_ = [Dict{String, Any}() for index in 1:n_trace]

    for index in 1:n_trace

        trace_[index]["x"] = x_[index]

        trace_[index]["y"] = y_[index]

        trace_[index]["name"] = name_[index]

    end

    data = [scatter(trace) for trace in trace_]

    if layout === nothing

        layout = Layout()

    end

    return display(plot(data, layout))

end



function plot_x_y(y_::Vector_; kwargs...)

    x_ = [collect(1:length(y)) for y in y_]

    return plot_x_y(x_, y_; kwargs...)

end

export plot_x_y
