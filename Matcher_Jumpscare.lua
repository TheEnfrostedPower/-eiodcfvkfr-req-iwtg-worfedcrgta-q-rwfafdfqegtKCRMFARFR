--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]--

--// Instances

local matchermymaster = Instance.new("ScreenGui")
matchermymaster.DisplayOrder = 342394832
matchermymaster.IgnoreGuiInset = true
matchermymaster.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
matchermymaster.ResetOnSpawn = false
matchermymaster.ZIndexBehavior = Enum.ZIndexBehavior.Global
matchermymaster.Name = "matcher my master"
matchermymaster.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0.458824, 0, 0)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Visible = true
frame.Parent = matchermymaster

local gredybogga = Instance.new("ImageLabel")
gredybogga.Image = "rbxassetid://11263840386"
gredybogga.ResampleMode = Enum.ResamplerMode.Pixelated
gredybogga.ScaleType = Enum.ScaleType.Fit
gredybogga.AnchorPoint = Vector2.new(0.5, 0.5)
gredybogga.BackgroundColor3 = Color3.new(1, 1, 1)
gredybogga.BackgroundTransparency = 1
gredybogga.Position = UDim2.new(0.498831779, 0, 0.5, 0)
gredybogga.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
gredybogga.Visible = true
gredybogga.Name = "gredybogga"
gredybogga.Parent = matchermymaster

local main = Instance.new("LocalScript")
main.Name = "Main"
main.Parent = matchermymaster

local matcher_screaming = Instance.new("Sound")
matcher_screaming.PlaybackSpeed = 1.2999999523162842
matcher_screaming.SoundId = "rbxassetid://5567523008"
matcher_screaming.Volume = 3
matcher_screaming.Name = "MatcherScreaming"
matcher_screaming.Parent = matchermymaster

local distortion_sound_effect = Instance.new("DistortionSoundEffect")
distortion_sound_effect.Parent = matcher_screaming

local equalizer_soundeffect = Instance.new("EqualizerSoundEffect")
equalizer_soundeffect.HighGain = 10
equalizer_soundeffect.LowGain = 0.3700000047683716
equalizer_soundeffect.MidGain = 10
equalizer_soundeffect.Parent = matcher_screaming

local pitch_shift_sound_effect = Instance.new("PitchShiftSoundEffect")
pitch_shift_sound_effect.Octave = 0.6050000190734863
pitch_shift_sound_effect.Parent = matcher_screaming

--//Modules

local modules = {}

--// Scripts

-- Main
task.spawn(function()
	local script = main

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.gredybogga:TweenSize(UDim2.new(1.481, 0,2.867, 0),"Out","Sine",.8)
	script.Parent.MatcherScreaming:Play()
	wait(.6)
	game:GetService("TweenService"):Create(script.Parent.MatcherScreaming,TweenInfo.new(.3),{Volume = 0}):Play()
	game:GetService("TweenService"):Create(script.Parent.gredybogga,TweenInfo.new(.3),{ImageTransparency = 1}):Play()
	game:GetService("TweenService"):Create(script.Parent.Frame,TweenInfo.new(.3),{BackgroundTransparency = 1}):Play()
	wait(.5)
	script.Parent:Destroy()
end)
