using Plotly: plot, scatter

function plot_v_(
    v_::Tuple{Vararg{Vector{<:Real}}};
    name_::Tuple{Vararg{String}}=Tuple(string(index) for index in 1:length(v_)),
)

    n_v = length(v_)

    trace_ = [Dict{String,Any}() for index in 1:n_v]

    for index in 1:n_v

        trace_[index]["y"] = v_[index]

        trace_[index]["name"] = name_[index]

    end

    data = [scatter(trace) for trace in trace_]

    return display(plot(data))

end

export plot_v_
