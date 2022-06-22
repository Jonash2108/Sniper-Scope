local si_weapon = {205991906,3342088282,177293209,1785463520}
function scope()
scope_scaleform = graphics.request_scaleform_movie("REMOTE_SNIPER_HUD")
graphics.begin_scaleform_movie_method(scope_scaleform, "REMOTE_SNIPER_HUD")
graphics.draw_scaleform_movie_fullscreen(scope_scaleform, 255, 255, 255, 255, 0)
graphics.end_scaleform_movie_method(scope_scaleform)
end
menu.add_feature("瞄准镜[狙]/Mod scope", "toggle",0, function(k)
if k.on then
for i , k in pairs(si_weapon) do
    if ped.get_current_ped_weapon(player.get_player_ped(player.player_id())) == k then
	  if controls.get_control_normal(0,114)== 1.0 then
         scope()
	  end
    end
end
end
    return HANDLER_CONTINUE
end)
