include("autorun/sh_fischer-phone.lua")

concommand.Add("set_phone", function(admin, _, args)
	local t_nick = args[1]
	local f_player = nil

	for _, v in ipairs(player.GetAll()) do
		if string.lower(v:Nick()) == t_nick then
			f_player = v
			break
		end
	end

	if not f_player then
		return
	end

	print("we have:", f_player:Nick())
end)
