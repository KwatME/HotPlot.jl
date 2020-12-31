using Plotly: attr

function update_attribute(attribute; kwargs...)
    
    update = attr(;kwargs...)
    
    return attr(attribute.fields; update.fields)
    
end

export update_attribute
