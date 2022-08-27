print("loaded kickdetector")
getgenv().doneloading = false

task.spawn(function()
    while not doneloading do
        task.wait()
        local robloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
        if robloxPromptGui then
            local promptOverlay = robloxPromptGui:FindFirstChild("promptOverlay")
            if promptOverlay then
                local errorPrompt = promptOverlay:FindFirstChild("ErrorPrompt")
                if errorPrompt and ep:FindFirstChild('MessageArea') and ep.MessageArea:FindFirstChild("ErrorFrame") then
                    game:Shutdown()
                end
            end
        end
    end
end)

repeat task.wait(0.1) until game:IsLoaded()
repeat task.wait(0.1) until player.PlayerGui.ScreenGui:FindFirstChild("Menus")

print("Game was properly loaded, so now the main Rosemoc file will handle any disconnections")

getgenv().doneloading = true