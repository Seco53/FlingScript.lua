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
TextLabel.Text = "ULTIMATE SERVER KILLER"
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

local function LFZRPUG_fake_script() -- Frame.LocalScript 
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
coroutine.wrap(LFZRPUG_fake_script)()
local function TWUFSQB_fake_script() -- TextButton.LocalScript 
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
coroutine.wrap(TWUFSQB_fake_script)()
local function ECMT_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Seco53/FlingScript.lua/refs/heads/main/FlingingScript.lua"))()
	end)
end
coroutine.wrap(ECMT_fake_script)()
local function KPOH_fake_script() -- TextButton_2.LocalScript 
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
coroutine.wrap(KPOH_fake_script)()
local function NHCB_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local btn = script.Parent
	local players = game.Players:GetPlayers() -- Get list of all players
	local highlightsActive = false -- Track whether highlights are currently active
	local highlightCoroutines = {} -- Table to store running coroutines for each player
	
	-- Function to create highlights with black fill and start the rainbow outline coroutine
	local function createHighlight()
		for _, player in pairs(players) do
			if player.Character then
				-- Check if the player already has a highlight
				local existingHighlight = player.Character:FindFirstChild("Highlight")
				if not existingHighlight then
					-- Create the highlight
					local highlight = Instance.new("Highlight")
					highlight.Parent = player.Character
					highlight.Adornee = player.Character
					highlight.FillTransparency = 0 -- Set fill transparency to 0 for black fill
					highlight.FillColor = Color3.fromRGB(0,0,0)
					highlight.OutlineTransparency = 0
					highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- Start with red outline
	
					-- Coroutine for changing the outline color to create a rainbow effect
					local function rainbowOutline()
						local timeElapsed = 0
						while highlightsActive and highlight.Parent do
							local hue = (timeElapsed / 5) % 1 -- Cycle hue every 5 seconds
							highlight.OutlineColor = Color3.fromHSV(hue, 1, 1) -- Set outline color using HSV
							timeElapsed = timeElapsed + wait(0.1) -- Update every 0.1 seconds
						end
					end
	
					-- Start the rainbow coroutine
					highlightCoroutines[player.UserId] = coroutine.create(rainbowOutline)
					coroutine.resume(highlightCoroutines[player.UserId])
				end
			end
		end
	end
	
	-- Function to remove highlights and stop the rainbow coroutine
	local function removeHighlights()
		for _, player in pairs(players) do
			if player.Character then
				-- Check for existing highlights and remove them
				local existingHighlight = player.Character:FindFirstChild("Highlight")
				if existingHighlight then
					existingHighlight:Destroy() -- Remove the highlight
					highlightCoroutines[player.UserId] = nil -- Remove the coroutine reference
				end
			end
		end
	end
	
	btn.MouseButton1Click:Connect(function()
		highlightsActive = not highlightsActive -- Toggle the state
		if highlightsActive then
			createHighlight() -- Create highlights if they are active
		else
			removeHighlights() -- Remove highlights if they are inactive
		end
	end)
	
end
coroutine.wrap(NHCB_fake_script)()
local function JABUO_fake_script() -- TextLabel.LocalScript 
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
coroutine.wrap(JABUO_fake_script)()
local function GPIQ_fake_script() -- TextButton_3.LocalScript 
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
coroutine.wrap(GPIQ_fake_script)()
local function HBCU_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		print("Attached")
	end)
end
coroutine.wrap(HBCU_fake_script)()
local function ZIYCU_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local screengui = script.Parent.Parent
	
	frame.Draggable = true
	frame.Active = true
	
	screengui.ResetOnSpawn = false
end
coroutine.wrap(ZIYCU_fake_script)()
