using Plotly: Layout, Style

import Plotly: use_style!

function use_style!()
    layout = Layout(autosize = false)

    style = Style(layout = layout)

    return use_style!(style)
end

export use_style!
