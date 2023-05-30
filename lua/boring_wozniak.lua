local M = {}

-- M.setup = function(opts)
-- 	print("Boring Wozniak loaded")
-- 	print(opts, "Options: ")
-- end

-- vim api insert function
local function insert(text)
	local position = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, position) .. text .. line:sub(position + 1)
	vim.api.nvim_set_current_line(nline)
	vim.cmd("norm! w")
end

-- data we need:
-- 100 animal names
-- 100 adjectives
local animals = require("animals")
local adjectives = require("adjectives")

--[[ 
--Inserts a string with randomized {adjective}_{animal} into the current cursor position
--
--Example usage:
--lua require("boring_wozniak").random()
--]]
M.random = function()
	local randomAnimal = animals[math.random(#animals)]
	local randomAdjective = adjectives[math.random(#adjectives)]
	local randomName = randomAdjective .. "_" .. randomAnimal
	insert(randomName)
end

--[[ 
-- Returns a string with randomized {adjective}_{animal}
--
--Example usage:
--lua require("boring_wozniak").random_string()
--]]
M.random_string = function()
	local randomAnimal = animals[math.random(#animals)]
	local randomAdjective = adjectives[math.random(#adjectives)]
	local randomName = randomAdjective .. "_" .. randomAnimal
	return randomName
end

return M
