task.wait(1)
function RandomVariable(length)
	local res = ""
	for i = 1, length do
		res = res .. string.char(math.random(97, 122))
	end
	return res
end
local r = Random.new()
local Astolfo = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Audio = Instance.new("Sound")
local ColorEffect = Instance.new("ColorCorrectionEffect")

Astolfo.Name = "Astolfo"
Astolfo.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Astolfo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Astolfo.ResetOnSpawn = false
Astolfo.IgnoreGuiInset = true

TextLabel.Parent = Astolfo
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "This script has been trashed!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true
TextLabel.ZIndex = 5

Audio.SoundId = "rbxassetid://8389041427"
Audio.Parent = Astolfo
Audio.Looped = true
Audio:Play()

spawn(function()
	for i, v in game.Workspace:GetDescendants() do
		local faces = Enum.NormalId:GetEnumItems()
		for o,b in pairs(faces) do
			local decal = Instance.new("Decal")
			decal.Parent = v
			decal.Texture = "http://www.roblox.com/asset/?id=5873794859"
			decal.Face = b
		end
		v.Name = "xD"
		spawn(function()
			while task.wait(0.1) do
				v.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
			end
		end)
		task.wait()
	end
end)
spawn(function()
	while task.wait() do
		spawn(function()
			error(RandomVariable(250).." - youtube.com/@p2l || https://www.youtube.com/watch?v=cstrMrYHeQI")
		end)
	end
end)
spawn(function()
	ColorEffect.Parent = game.Lighting
	while task.wait() do
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "astolfo got fucked!",
			Text = "please stop using skidded script",
			Icon = "http://www.roblox.com/asset/?id=5873794859"
		})
		game.Workspace.CurrentCamera.FieldOfView = math.random(20,300)
		game.Workspace.CurrentCamera.CFrame = CFrame.new(0,0,0) * CFrame.Angles(math.random(-80,80),math.random(-179,179),0)
		ColorEffect.TintColor = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
		ColorEffect.Saturation = math.random(0,5)
		ColorEffect.Contrast = math.random(0,5)
		ColorEffect.Brightness = r:NextNumber(0,1)
	end
end)

for i=0,100 do
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Parent = Astolfo
	ImageLabel.AnchorPoint = Vector2.new(0.5,0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Size = UDim2.new(0, math.random(50,500), 0, math.random(50,300))
	ImageLabel.Position = UDim2.new(.5,0,.5,0)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=5873794859"
	spawn(function()
		while true do
			ImageLabel.Position = UDim2.new(r:NextNumber(0,1),0,r:NextNumber(0,1),0)
			ImageLabel.Size = UDim2.new(0, math.random(50,500), 0, math.random(50,300))
			task.wait(0.1)
		end
	end)
	task.wait(0.05)
end
task.wait(2)
game.Players.LocalPlayer:Kick("Astolfo Fucked up by ManMike#7100 and p2l#4100")
