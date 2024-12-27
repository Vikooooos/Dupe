-- Settings
local itemName = "ItemNameHere"  -- Replace with item name
local itemAmount = 1 -- Amount to duplicate

-- Get player and item
local player = game.Players.LocalPlayer
local character = player.Character
local item = character:FindFirstChild(itemName)

-- Check if item exists
if item then
    -- Dupe function
    local function dupeItem()
        local clone = item:Clone()
        character.HumanoidRootPart.Backpack:WaitForChild("Humanoid"):EquipTool(clone)
        clone.Parent = character.HumanoidRootPart.Backpack
    end

    -- Dupe loop
    for i = 1, itemAmount do
        dupeItem()
        wait(0.1)  -- Delay to avoid crashing
    end
else
    print("Item not found.")
end
``
