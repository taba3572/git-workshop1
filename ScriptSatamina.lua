local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")

-- == ตั้งค่าระบบ ==
local WALK_SPEED = 16
local RUN_SPEED = 28
local EXHAUSTED_SPEED = 6      -- ความเร็วตอนเหนื่อยจัด (เดินช้ามาก)
local DAMAGE_RATE = 5          -- เลือดลดต่อวินาที ถ้าฝืนวิ่ง

local MAX_STAMINA = 100
local STAMINA_DRAIN = 15       -- วิ่งแล้วเหนื่อยเร็วแค่ไหน
local STAMINA_REGEN = 5        -- พักแล้วหายเหนื่อยเร็วแค่ไหน

local currentStamina = MAX_STAMINA
local isRunning = false

-- ตรวจจับการกดปุ่ม Shift
uis.InputBegan:Connect(function(input, processed)
	if processed then return end
	if input.KeyCode == Enum.KeyCode.LeftShift then
		isRunning = true
	end
end)

uis.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		isRunning = false
	end
end)
