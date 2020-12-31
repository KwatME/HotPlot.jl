using Plotly: Layout, attr

function extend_layout(layout; kwargs...)
    new_layout = Layout()

    new_layout.fields = attr(layout.fields; kwargs...).fields

    return new_layout
end

export extend_layout
