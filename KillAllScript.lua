-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.284249753, 0, 0.344481617, 0)
Frame.Size = UDim2.new(0, 365, 0, 218)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.0958904102, 0, 0.62844038, 0)
TextButton.Size = UDim2.new(0, 146, 0, 50)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Kill All"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 2
TextButton_2.Position = UDim2.new(0.523287773, 0, 0.62844038, 0)
TextButton_2.Size = UDim2.new(0, 146, 0, 50)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "ESP"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 2
TextLabel.Position = UDim2.new(2.50829402e-07, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 365, 0, 33)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "SERVERSIDE SCRIPT"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 2
TextButton_3.Position = UDim2.new(0.298630148, 0, 0.261467904, 0)
TextButton_3.Size = UDim2.new(0, 146, 0, 50)
TextButton_3.Font = Enum.Font.SourceSansBold
TextButton_3.Text = "Attach"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

-- Scripts:

local function BIQZXQ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	-- Variables
	local frame = script.Parent
	local speed = 0.025 -- Speed of the rainbow effect (lower value = faster transition)
	
	-- Function to generate rainbow colors
	local function rainbowColor(hue)
		return Color3.fromHSV(hue, 1, 1) -- Full saturation and brightness
	end
	
	-- Rainbow loop
	while true do
		for hue = 0, 1, speed do
			frame.BorderColor3 = rainbowColor(hue)
			wait(0.05) -- Small delay for smooth transition
		end
	end
	
end
coroutine.wrap(BIQZXQ_fake_script)()
local function OUOUD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	-- Variables
	local frame = script.Parent
	local speed = 0.025 -- Speed of the rainbow effect (lower value = faster transition)
	
	-- Function to generate rainbow colors
	local function rainbowColor(hue)
		return Color3.fromHSV(hue, 1, 1) -- Full saturation and brightness
	end
	
	-- Rainbow loop
	while true do
		for hue = 0, 1, speed do
			frame.BorderColor3 = rainbowColor(hue)
			wait(0.05) -- Small delay for smooth transition
		end
	end
	
end
coroutine.wrap(OUOUD_fake_script)()
local function KCEJS_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local flingActive = false -- Tracks if the fling is active
	local power = 500 -- Adjust this to change the power level
	local player = game.Players.LocalPlayer
	local runService = game:GetService("RunService")
	
	script.Parent.MouseButton1Click:Connect(function()
		flingActive = not flingActive -- Toggle fling mode on/off
	
		if flingActive then
			-- Disable character collisions
			runService.Stepped:Connect(function()
				if player.Character then
					for _, part in ipairs(player.Character:GetDescendants()) do
						if part:IsA("BasePart") and part.CanCollide then
							part.CanCollide = false
						end
					end
				end
			end)
	
			-- Coroutine for flinging to each player
			coroutine.wrap(function()
				while flingActive and player.Character and player.Character:FindFirstChild("HumanoidRootPart") do
					for _, target in ipairs(game.Players:GetPlayers()) do
						if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
							-- Teleport to each player
							player.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
	
							-- Apply fling force
							local bambam = Instance.new("BodyThrust")
							bambam.Parent = player.Character.HumanoidRootPart
							bambam.Force = Vector3.new(power, 0, power)
							bambam.Location = player.Character.HumanoidRootPart.Position
	
							wait(1) -- Delay between each teleport
							bambam:Destroy() -- Clean up force after each fling
						end
					end
					wait(1) -- Delay between each round of teleportation
				end
			end)()
		else
			-- Clean up after fling is disabled
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				for _, thrust in ipairs(player.Character.HumanoidRootPart:GetChildren()) do
					if thrust:IsA("BodyThrust") then
						thrust:Destroy()
					end
				end
			end
		end
	end)
	
end
coroutine.wrap(KCEJS_fake_script)()
local function UFWSXK_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	-- Variables
	local frame = script.Parent
	local speed = 0.025 -- Speed of the rainbow effect (lower value = faster transition)
	
	-- Function to generate rainbow colors
	local function rainbowColor(hue)
		return Color3.fromHSV(hue, 1, 1) -- Full saturation and brightness
	end
	
	-- Rainbow loop
	while true do
		for hue = 0, 1, speed do
			frame.BorderColor3 = rainbowColor(hue)
			wait(0.05) -- Small delay for smooth transition
		end
	end
	
end
coroutine.wrap(UFWSXK_fake_script)()
local function FYFX_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	
	-- Function to create a highlight for a player
	local function createHighlight(character)
		if character and character:FindFirstChild("HumanoidRootPart") then
			local highlight = Instance.new("Highlight")
			highlight.Parent = character
			highlight.Adornee = character.HumanoidRootPart
			highlight.FillColor = Color3.fromRGB(0, 0, 0) -- Set fill color to black using Color3.fromRGB
			highlight.FillTransparency = 1 -- Make the fill color transparent
			highlight.OutlineTransparency = 0 -- Set the outline to fully visible
			highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- Set the outline color to white
	
			return highlight -- Return the highlight instance
		end
	end
	
	-- Function to refresh highlights for all players
	local function refreshHighlights()
		for _, targetPlayer in ipairs(game.Players:GetPlayers()) do
			if targetPlayer ~= player and targetPlayer.Character then
				local existingHighlight = targetPlayer.Character:FindFirstChildOfClass("Highlight")
				if not existingHighlight then
					createHighlight(targetPlayer.Character) -- Create highlight if it doesn't exist
				end
			end
		end
	end
	
	-- Function to handle player added
	local function onPlayerAdded(newPlayer)
		newPlayer.CharacterAdded:Connect(function(character)
			wait(0.1) -- Wait for a moment to ensure character is loaded
			createHighlight(character) -- Create highlight for the new player's character
		end)
	end
	
	-- Function to handle player removing (deleting highlight)
	local function onPlayerRemoving(removedPlayer)
		if removedPlayer.Character then
			local highlight = removedPlayer.Character:FindFirstChildOfClass("Highlight")
			if highlight then
				highlight:Destroy() -- Remove the highlight if the player leaves
			end
		end
	end
	
	-- Monitor player deaths and respawns
	local function monitorPlayer(player)
		player.CharacterAdded:Connect(function(character)
			wait(0.1) -- Ensure character is fully loaded
			local existingHighlight = character:FindFirstChildOfClass("Highlight")
			if existingHighlight then
				existingHighlight:Destroy() -- Remove existing highlight
			end
			createHighlight(character) -- Create a new highlight for the respawned character
		end)
	end
	
	-- Initial setup: add highlights for existing players
	for _, targetPlayer in ipairs(game.Players:GetPlayers()) do
		if targetPlayer ~= player then
			monitorPlayer(targetPlayer) -- Monitor each existing player
			if targetPlayer.Character then
				createHighlight(targetPlayer.Character) -- Create highlight if character exists
			end
		end
	end
	
	-- Connect events for new players
	game.Players.PlayerAdded:Connect(onPlayerAdded)
	game.Players.PlayerRemoving:Connect(onPlayerRemoving)
	
	-- Monitor existing players
	game.Players.PlayerAdded:Connect(function(newPlayer)
		monitorPlayer(newPlayer)
	end)
	
	-- Refresh highlights every few seconds
	while true do
		refreshHighlights()
		wait(2) -- Adjust refresh interval as needed
	end
	
end
coroutine.wrap(FYFX_fake_script)()
local function GDBWPTE_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	-- Variables
	local frame = script.Parent
	local speed = 0.025 -- Speed of the rainbow effect (lower value = faster transition)
	
	-- Function to generate rainbow colors
	local function rainbowColor(hue)
		return Color3.fromHSV(hue, 1, 1) -- Full saturation and brightness
	end
	
	-- Rainbow loop
	while true do
		for hue = 0, 1, speed do
			frame.BorderColor3 = rainbowColor(hue)
			wait(0.05) -- Small delay for smooth transition
		end
	end
	
end
coroutine.wrap(GDBWPTE_fake_script)()
local function CGRVPH_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	-- Variables
	local frame = script.Parent
	local speed = 0.025 -- Speed of the rainbow effect (lower value = faster transition)
	
	-- Function to generate rainbow colors
	local function rainbowColor(hue)
		return Color3.fromHSV(hue, 1, 1) -- Full saturation and brightness
	end
	
	-- Rainbow loop
	while true do
		for hue = 0, 1, speed do
			frame.BorderColor3 = rainbowColor(hue)
			wait(0.05) -- Small delay for smooth transition
		end
	end
	
end
coroutine.wrap(CGRVPH_fake_script)()
local function ZSPQHI_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		print("Attached")
	end)
end
coroutine.wrap(ZSPQHI_fake_script)()
local function GDLYG_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local screengui = script.Parent.Parent
	
	frame.Draggable = true
	frame.Active = true
	
	screengui.ResetOnSpawn = false
end
coroutine.wrap(GDLYG_fake_script)()
