if game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 0 then
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.DeathHint.OnClientEvent,{"Oh.. Hello!","It seems that.. Guiding light doesn't want to tell you on why this happened!","Anyways.. What did you die to?","Oh, I Figured... You executed the script before A-1! I mean.. Door 1?","Well anyways, Remember this"},"Yellow")
	task.wait(.2)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):TakeDamage(500)
end

if game.Workspace:FindFirstChild("endlessdoors") then
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"Fired Twice(2x); Returning..")
	return
end
local Verif = Instance.new("WorldModel",workspace)
Verif.Name = "endlessdoors"

function ReplaceGitAu(GithubSnd,SoundName)
		local url=GithubSnd
		if not isfile(SoundName..".mp3") then
			writefile(SoundName..".mp3", game:HttpGet(url))
		end
		return (getcustomasset or getsynasset)(SoundName..".mp3")
	end


game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()



spawn(function()
	local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)

	local Achievements = debug.getupvalue(Unlock, 1)

	local custom = {

		Title = "Nova's Script Execution", 

		Desc = "You did it, You finally get to use the Script!",  --first line

		Reason = "You used nova's Endless Doors Mod!", -- Balls

		BadgeId = 12591502863, --change badge id for image

		Category = 0,

	}

	local old = {}

	for i, v in next, Achievements.Join do

		old[i] = v

	end

	for i, v in next, custom do

		Achievements.Join[i] = v

	end

	Unlock(nil, "Join")

	for i, v in next, old do

		Achievements.Join[i] = v

	end
end)

spawn(function() --INGTRO
	--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]--

	--// Instances
	local sound = Instance.new("Sound",Verif)
	sound.SoundId = "rbxassetid://4835664238"
	sound:Play()
	local int1 = Instance.new("ScreenGui")
	int1.DisplayOrder = 1000
	int1.IgnoreGuiInset = true
	int1.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	int1.ResetOnSpawn = false
	int1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	int1.Name = "Int1"
	int1.Parent = game:GetService("CoreGui")

	local logo_intro = Instance.new("Frame")
	logo_intro.AnchorPoint = Vector2.new(0.5, 0.5)
	logo_intro.BackgroundColor3 = Color3.new(1, 1, 1)
	logo_intro.BackgroundTransparency = 1
	logo_intro.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	logo_intro.ClipsDescendants = true
	logo_intro.Position = UDim2.new(0.499637425, 0, 0.340238601, 0)
	logo_intro.Size = UDim2.new(0.400000036, 0, 0.263774484, 0)
	logo_intro.Visible = true
	logo_intro.Name = "LogoIntro"
	logo_intro.Parent = int1

	local oicon = Instance.new("ImageLabel")
	oicon.Image = "rbxassetid://10906441199"
	oicon.ScaleType = Enum.ScaleType.Fit
	oicon.AnchorPoint = Vector2.new(0.5, 0.5)
	oicon.BackgroundColor3 = Color3.new(1, 1, 1)
	oicon.BackgroundTransparency = 1
	oicon.ClipsDescendants = true
	oicon.Position = UDim2.new(0.5, 0, 1.5, 0)
	oicon.Size = UDim2.new(0.453517079, 0, 1, 0)
	oicon.Visible = true
	oicon.Name = "O_Icon"
	oicon.Parent = logo_intro

	local line_bottom = Instance.new("Frame")
	line_bottom.AnchorPoint = Vector2.new(0.5, 0.5)
	line_bottom.BackgroundColor3 = Color3.new(1, 1, 1)
	line_bottom.Position = UDim2.new(0.5, 0, 0.991776168, 0)
	line_bottom.Size = UDim2.new(0, 0, 0.0149999997, 0)
	line_bottom.Visible = true
	line_bottom.ZIndex = 2
	line_bottom.Name = "LineBottom"
	line_bottom.Parent = logo_intro

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 25)
	uicorner.Parent = line_bottom

	local uigradient = Instance.new("UIGradient")
	uigradient.Parent = line_bottom

	local local_script = Instance.new("LocalScript")
	local_script.Parent = int1

	local wm = Instance.new("ImageLabel")
	wm.Image = "rbxassetid://12646095831"
	wm.ImageTransparency = 1
	wm.ScaleType = Enum.ScaleType.Fit
	wm.AnchorPoint = Vector2.new(0.5, 0.5)
	wm.BackgroundColor3 = Color3.new(1, 1, 1)
	wm.BackgroundTransparency = 1
	wm.Position = UDim2.new(0.200507611, 0, 0.949023902, 0)
	wm.Size = UDim2.new(0.273168981, 0, 0.0299999993, 0)
	wm.Visible = true
	wm.Name = "WM"
	wm.Parent = int1

	--//Modules

	local modules = {}

	--// Scripts

	-- LocalScript
	task.spawn(function()
		local script = local_script

		local oldreq = require
		local function require(target)
			if modules[target] then
				return modules[target]()
			end
			return oldreq(target)
		end

		local O_Ic = script.Parent.LogoIntro:FindFirstChild("O_Icon")
		local Line = script.Parent.LogoIntro:FindFirstChild("LineBottom")

		Line.Size = UDim2.new(0,0,0.015,0)
		O_Ic.Position = UDim2.new(0.5, 0,1.5, 0)
		local TweenService = game:GetService("TweenService")

		TweenService:Create(Line,TweenInfo.new(.8,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0.015,0)}):Play()
		wait(.6)
		TweenService:Create(O_Ic,TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position = UDim2.new(0.5, 0,0.5, 0)}):Play()
		wait(.75)
		TweenService:Create(O_Ic,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1, 0,1, 0)}):Play()
		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(0.059, 0,0.092, 0)}):Play()
		TweenService:Create(Line,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(0,0,0.015,0)}):Play()
		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Position = UDim2.new(0.036, 0,0.944, 0)}):Play()
		wait(1)
		TweenService:Create(script.Parent:FindFirstChild("WM"),TweenInfo.new(.5),{ImageTransparency = 0.8}):Play()
		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(.5),{ImageTransparency = 0.8}):Play()
	end)
end)

-----------STARTING

local Greed = false
spawn(function() --GREED
	while true do
		if Greed == false then
			Greed = true
			task.wait(80)
			game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Greed.lua"))()
			Greed = false
		end
	end
end)

local Blink = false
spawn(function() --Blink
	while true do
		if Blink == false then
			Blink = true
			task.wait(120)
			game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Blink"))()
			Blink = false
		end
	end
end)

local Matcher = false
spawn(function() --MATCHER
	while true do
		if Matcher == false then
			Matcher = true
			task.wait(150)
			game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Matcher.lua"))()
			Matcher = false
		end
	end
end)


local Rebound = false
spawn(function() --Rebound
	while true do
		if Rebound == false then
			Rebound = true
			task.wait(230)
			game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Rebound.lua"))()
			Rebound = false
		end
	end
end)

local Dark = false
spawn(function() --Rebound
	while true do
		if Dark == false then
			Dark = true
			task.wait(400)
			game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Dark.lua"))()
			Dark = false
		end
	end
end)
