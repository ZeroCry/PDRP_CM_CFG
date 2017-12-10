local Language = {}

CRAFTINGMOD.Language = Language

Language.CurrentLanguage = CRAFTINGMOD.Config.Language

Language.List = {}

function Language:Translate(str)
  if Language.List[Language.CurrentLanguage]  then
    for k, v in pairs(Language.List[Language.CurrentLanguage]) do
      if table.HasValue( v, str ) then
        return tostring(v[2])
      end
    end
  end

  return str
end

function Language:Register(name, language)
  self.List[name] = language
end
