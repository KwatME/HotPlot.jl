using Plotly: Layout, attr

using Kraft: merge_recursively

function extend_layout(layout; kwargs...)

    new_layout = Layout()

    new_layout.fields = merge_recursively(layout.fields, attr(; kwargs...).fields)

    return new_layout
end

export extend_layout
