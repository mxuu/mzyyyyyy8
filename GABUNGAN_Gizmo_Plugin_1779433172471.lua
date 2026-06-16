-- ================================================
--   SYGKMUNII UPDATE PANEL v1.0
--   BY SYGKMUNII | MZYY Studio
--   Panel Pesan: Sedang Di-Update
-- ================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Cleanup
local old = PlayerGui:FindFirstChild("SYGKMUNII_UpdatePanel")
if old then old:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SYGKMUNII_UpdatePanel"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Panel
local Panel = Instance.new("Frame")
Panel.Size = UDim2.new(0, 400, 0, 280)
Panel.Position = UDim2.new(0.5, -200, 0.5, -140)
Panel.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
Panel.BorderSizePixel = 0
Panel.ZIndex = 11
Panel.Parent = ScreenGui

Instance.new("UICorner", Panel).CornerRadius = UDim.new(0, 10)

local Stroke = Instance.new("UIStroke", Panel)
Stroke.Color = Color3.fromRGB(200, 30, 30)
Stroke.Thickness = 1.5

-- Header
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 48)
Header.BackgroundColor3 = Color3.fromRGB(185, 20, 20)
Header.BorderSizePixel = 0
Header.ZIndex = 12
Header.Parent = Panel
Instance.new("UICorner", Header).CornerRadius = UDim.new(0, 10)

local HeaderFix = Instance.new("Frame")
HeaderFix.Size = UDim2.new(1, 0, 0, 14)
HeaderFix.Position = UDim2.new(0, 0, 1, -14)
HeaderFix.BackgroundColor3 = Color3.fromRGB(185, 20, 20)
HeaderFix.BorderSizePixel = 0
HeaderFix.ZIndex = 12
HeaderFix.Parent = Header

-- Icon
local Ico = Instance.new("Frame")
Ico.Size = UDim2.new(0, 22, 0, 22)
Ico.Position = UDim2.new(0, 14, 0.5, -11)
Ico.BackgroundColor3 = Color3.fromRGB(255,255,255)
Ico.BorderSizePixel = 0
Ico.ZIndex = 13
Ico.Parent = Header
Instance.new("UICorner", Ico).CornerRadius = UDim.new(0, 4)

local IcoIn = Instance.new("Frame")
IcoIn.Size = UDim2.new(0, 10, 0, 10)
IcoIn.Position = UDim2.new(0.5, -5, 0.5, -5)
IcoIn.BackgroundColor3 = Color3.fromRGB(185, 20, 20)
IcoIn.BorderSizePixel = 0
IcoIn.ZIndex = 14
IcoIn.Parent = Ico
Instance.new("UICorner", IcoIn).CornerRadius = UDim.new(0, 2)

local T1 = Instance.new("TextLabel")
T1.Size = UDim2.new(1, -50, 0, 20)
T1.Position = UDim2.new(0, 46, 0, 6)
T1.BackgroundTransparency = 1
T1.Text = "SYSTEM NOTICE"
T1.TextColor3 = Color3.fromRGB(255,255,255)
T1.TextSize = 14
T1.Font = Enum.Font.GothamBold
T1.TextXAlignment = Enum.TextXAlignment.Left
T1.ZIndex = 13
T1.Parent = Header

local T2 = Instance.new("TextLabel")
T2.Size = UDim2.new(1, -50, 0, 14)
T2.Position = UDim2.new(0, 46, 0, 28)
T2.BackgroundTransparency = 1
T2.Text = "MZYY Studio | BY SYGKMUNII"
T2.TextColor3 = Color3.fromRGB(255,180,180)
T2.TextSize = 10
T2.Font = Enum.Font.Gotham
T2.TextXAlignment = Enum.TextXAlignment.Left
T2.ZIndex = 13
T2.Parent = Header

-- Animating dots
local spinnerLabel = Instance.new("TextLabel")
spinnerLabel.Size = UDim2.new(0, 60, 0, 60)
spinnerLabel.Position = UDim2.new(0.5, -30, 0, 58)
spinnerLabel.BackgroundTransparency = 1
spinnerLabel.Text = "⟳"
spinnerLabel.TextColor3 = Color3.fromRGB(200, 30, 30)
spinnerLabel.TextSize = 36
spinnerLabel.Font = Enum.Font.GothamBold
spinnerLabel.ZIndex = 12
spinnerLabel.Parent = Panel

-- Pesan utama
local Msg = Instance.new("TextLabel")
Msg.Size = UDim2.new(1, -28, 0, 80)
Msg.Position = UDim2.new(0, 14, 0, 122)
Msg.BackgroundTransparency = 1
Msg.Text = "Plugin sedang dalam proses pembaruan.\nMohon bersabar dan tunggu beberapa saat.\n\nFitur akan kembali tersedia setelah\nproses update selesai. Terima kasih! 🙏"
Msg.TextColor3 = Color3.fromRGB(210, 210, 210)
Msg.TextSize = 13
Msg.Font = Enum.Font.Gotham
Msg.TextWrapped = true
Msg.ZIndex = 12
Msg.Parent = Panel

-- Divider
local Div = Instance.new("Frame")
Div.Size = UDim2.new(1, -28, 0, 1)
Div.Position = UDim2.new(0, 14, 0, 212)
Div.BackgroundColor3 = Color3.fromRGB(45,45,45)
Div.BorderSizePixel = 0
Div.ZIndex = 12
Div.Parent = Panel

-- Footer branding
local Footer = Instance.new("TextLabel")
Footer.Size = UDim2.new(1, -28, 0, 30)
Footer.Position = UDim2.new(0, 14, 0, 220)
Footer.BackgroundTransparency = 1
Footer.Text = "BY SYGKMUNII  •  MZYY Studio  •  v1.0"
Footer.TextColor3 = Color3.fromRGB(80, 80, 80)
Footer.TextSize = 10
Footer.Font = Enum.Font.Gotham
Footer.ZIndex = 12
Footer.Parent = Panel

-- Tombol OK
local OkBtn = Instance.new("TextButton")
OkBtn.Size = UDim2.new(1, -28, 0, 32)
OkBtn.Position = UDim2.new(0, 14, 0, 236)
OkBtn.BackgroundColor3 = Color3.fromRGB(185, 20, 20)
OkBtn.BorderSizePixel = 0
OkBtn.Text = "Oke, Saya Mengerti"
OkBtn.TextColor3 = Color3.fromRGB(255,255,255)
OkBtn.TextSize = 13
OkBtn.Font = Enum.Font.GothamBold
OkBtn.AutoButtonColor = false
OkBtn.ZIndex = 12
OkBtn.Parent = Panel
Instance.new("UICorner", OkBtn).CornerRadius = UDim.new(0, 8)

OkBtn.MouseEnter:Connect(function()
	TweenService:Create(OkBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(220,40,40)}):Play()
end)
OkBtn.MouseLeave:Connect(function()
	TweenService:Create(OkBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(185,20,20)}):Play()
end)

-- Animasi masuk
Panel.BackgroundTransparency = 1
Panel.Position = UDim2.new(0.5, -200, 0.5, -120)
TweenService:Create(Panel, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, -200, 0.5, -140),
	BackgroundTransparency = 0
}):Play()

-- Spinner spin animasi
local rot = 0
game:GetService("RunService").Heartbeat:Connect(function(dt)
	rot = rot + dt * 180
	spinnerLabel.Rotation = rot % 360
end)

-- Tutup
OkBtn.MouseButton1Click:Connect(function()
	TweenService:Create(Panel, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Position = UDim2.new(0.5, -200, 0.5, -120),
		BackgroundTransparency = 1
	}):Play()
	task.delay(0.3, function() ScreenGui:Destroy() end)
end)

print("[SYGKMUNII] Update Panel v1.0 loaded.")
