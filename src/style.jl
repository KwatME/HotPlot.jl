using Plotly: Layout, Style, use_style!

layout = Layout(autosize=false)

style = Style(layout=layout)

use_style!(style)

function set_style()

    layout = Layout(autosize=false)

    style = Style(layout=layout)

    use_style!(style)

end

export set_style
