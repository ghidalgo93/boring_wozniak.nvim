local M = {}

-- M.setup = function(opts)
-- 	print("Boring Wozniak loaded")
-- 	print(opts, "Options: ")
-- end

-- functions we need
-- random
-- animals[math.random(#animals)]
--
-- vim insert function
local function insert(text)
	local position = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, position) .. text .. line:sub(position + 1)
	vim.api.nvim_set_current_line(nline)
end

-- data we need:
-- 100 animal names
-- 100 adjectives
local animals = require("animals")
local adjectives = require("adjectives")

--[[ 
--Example usage:
--lua require("boring_wozniak").random()
--]]
M.random = function()
	local randomAnimal = animals[math.random(#animals)]
	local randomAdjective = adjectives[math.random(#adjectives)]
	local randomName = randomAdjective .. "_" .. randomAnimal
	insert(randomName)
end

return M
