local HttpService = game:GetService("HttpService")
local player = game.Players.LocalPlayer

local data = {
    content = "**Script Executed!**\nUsername: " .. player.Name ..
              "\nUserId: " .. player.UserId ..
              "\nPlaceId: " .. game.PlaceId ..
              "\nJobId: " .. game.JobId
}

HttpService:PostAsync(
    "https://discord.com/api/webhooks/1424340320820400128/_CF8mACEK3OJJrdkF8hDvBnEIUQexVYTnlfk7OwEuO_pXeoUpX0gzzhzGOeQq7GCXGPP",
    HttpService:JSONEncode(data)
)
