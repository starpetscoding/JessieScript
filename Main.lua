local HttpService = game:GetService("HttpService")
local player = game.Players.LocalPlayer

local data = {
    content = "**Script Executed!**\nUsername: " .. player.Name ..
              "\nUserId: " .. player.UserId ..
              "\nPlaceId: " .. game.PlaceId ..
              "\nJobId: " .. game.JobId
}

HttpService:PostAsync(
    "https://discord.com/api/webhooks/1424336790646423585/PHTwg1bVXf3vA_9kDLh1dy-4eZvK0yTKSjf5IRzXelAvXGs36DptM_9LycjoiiP7tg-t",
    HttpService:JSONEncode(data)
)
