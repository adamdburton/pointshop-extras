-- Add model and material folders here as required
-- WARNING: THIS WILL TELL CLIENTS TO DOWNLOAD EVERYTHING POSSIBLE FROM THESE FOLDERS
-- I RECOMMEND YOU BE SELECTIVE

local models = {
	'astronauthelmet',
	'cakehat',
	'duncehat',
	'gmod_tower',
	'sam',
	'santa',
	'vikinghelmet'
}

local materials = {
	'models/astronauthelmet',
	'models/cakehat',
	'models/duncehat',
	'models/gmod_tower',
	'models/sam',
	'models/santa',
	'models/vikinghelmet'
}

-- end

function resource.AddDir(dir)
	local f, d = file.Find(dir .. '/*', 'GAME')
	
	for k, v in pairs(f) do
		resource.AddSingleFile(dir .. '/' .. v)
	end
	
	for k, v in pairs(d) do
		resource.AddDir(dir .. '/' .. v)
	end
end

for _, mf in pairs(models) do
	resource.AddDir('models/' .. mf)
end

for _, mf in pairs(materials) do
	resource.AddDir('materials/' .. mf)
end