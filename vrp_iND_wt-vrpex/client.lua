local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterCommand("cor",function(source,args)
	local tinta = parseInt(args[1])
	local ped = PlayerPedId()
	local arma = GetSelectedPedWeapon(ped)
	if tinta >= 0 then
		SetPedWeaponTintIndex(ped,arma,tinta)
	end
end,false)