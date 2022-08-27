local connection = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    print(child)
    if child and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:Shutdown()
    end
end)

repeat task.wait(0.1) until game:IsLoaded()
repeat task.wait(0.1) until player.PlayerGui.ScreenGui:FindFirstChild("Menus")

print("Game was properly loaded, so now the main Rosemoc file will handle any disconnections")

connection:Disconnect()