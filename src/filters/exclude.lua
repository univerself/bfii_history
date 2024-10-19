if FORMAT:match 'docx' then
  function Div(el)
    if el.classes[1] == "no-docx" or el.classes[2] == "no-docx" then
      el.content = ""
    end
    return el
  end
end

