using Plotly: Layout, Style

import Plotly: use_style!

function use_style!()::Style

    return use_style!(
        Style(layout = Layout(autosize = false, template = "plotly_white")),
    )

end

export use_style!
