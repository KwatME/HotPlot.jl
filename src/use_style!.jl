using Plotly: Layout, Style

import Plotly: use_style!

function use_style!()
    return use_style!(Style(layout = Layout(autosize = false, templateaa = "plotly_white")))
end

export use_style!
