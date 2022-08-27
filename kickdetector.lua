local doneloading = false

task.spawn(function()
    while not doneloading do
        task.wait()
        local ep = game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
        if ep and ep:FindFirstChild('MessageArea') and ep.MessageArea:FindFirstChild("ErrorFrame") then
            game:Shutdown()
        end
    end
end)

repeat task.wait(0.1) until game:IsLoaded()
repeat task.wait(0.1) until player.PlayerGui.ScreenGui:FindFirstChild("Menus")

print("Game was properly loaded, so now the main Rosemoc file will handle any disconnections")

doneloading = true