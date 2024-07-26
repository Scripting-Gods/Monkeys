local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
getupvalues = getupvalues or debug.getupvalues;
setupvalue = setupvalue or debug.setupvalue;
if not (getrawmetatable and getupvalues and setupvalue and (getreg or debug.getregistry)) then
	local v75 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\202\213\49", "\126\177\163\187\69\134\219\167"), workspace);
	v75.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\41\202\241\51\204\62\204\254\47\200\106\192\228\51\193\37\204\232\109", "\156\67\173\74\165");
	wait(2 + 1);
	v75:Destroy();
	return;
end
local v0 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\178\79\31\176\42\121\53\163", "\38\84\215\41\118\220\70")]=(1490 - (1411 + 29)),[LUAOBFUSACTOR_DECRYPT_STR_0("\66\19\36\27\242\92\41\39\28\250", "\158\48\118\66\114")]=(155 - 58),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\33\28\63\101\160\233\148\37\4", "\155\203\68\112\86\19\197")]=(112 - 88),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\201\55\229\127\113\235\199\77\212\34\255\72\125\235", "\152\38\189\86\156\32\24\133")]=true};
local v1, v2, v3 = false, false, false;
if readfile then
	pcall(function()
		local v98 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\212\67\179\86\207\82\181\80\245\84\162", "\38\156\55\199")):JSONDecode(readfile(LUAOBFUSACTOR_DECRYPT_STR_0("\152\116\102\50\18\82\251\81\165\51\104\48\7", "\35\200\29\28\72\115\20\154")));
		local v99 = false;
		for v104, v105 in pairs(v98) do
			if (v0[v104] == nil) then
				v99 = true;
				v98[v104] = nil;
			end
		end
		for v106, v107 in pairs(v0) do
			if (v98[v106] == nil) then
				v99 = true;
				v98[v106] = v107;
			end
		end
		if v99 then
			warn(LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\197\203\132\34\51\10\255\222\201\136\62\35\11\182\197\203\136\34", "\84\121\223\177\191\237\76"));
			writefile(LUAOBFUSACTOR_DECRYPT_STR_0("\139\95\211\186\59\118\49\211\182\24\221\184\46", "\161\219\54\169\192\90\48\80"), game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\97\86\20\53\122\71\18\51\64\65\5", "\69\41\34\96")):JSONEncode(v98));
		end
		v0 = v98;
	end);
end
if getconnections then
	for v100, v101 in next, getconnections(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\143\192\197\3\18\63\159\204\217\30\7\51\168", "\75\220\163\183\106\98")).Error) do
		v101:Disable();
	end
end
local v4 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\138\46\220\16\169", "\185\98\218\235\87")).LocalPlayer;
local v5 = game.FindFirstChild;
local v6 = Random.new();
local v7;
local v8, v9, v10;
do
	local v31 = (getreg or debug.getregistry)();
	for v77 = 1 + 0, #v31 do
		local v78 = v31[v77];
		if (type(v78) == LUAOBFUSACTOR_DECRYPT_STR_0("\205\41\41\229\202\163\196\50", "\202\171\92\71\134\190")) then
			for v118, v119 in next, getupvalues(v78) do
				if (typeof(v119) == LUAOBFUSACTOR_DECRYPT_STR_0("\0\207\63\156\40\207\47\141", "\232\73\161\76")) then
					if (v119.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\152\216\81\85\49\174\205", "\126\219\185\34\61")) then
						setupvalue(v78, v118, {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\193\75\97\123\85\230\243\24\193\80\35\93\123\250\228\7", "\135\108\174\62\18\30\23\147")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\161\232\35\223", "\167\214\137\74\171\120\206\83")]=function()
						end,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\241\59\73", "\199\235\144\82\61\152")]=function()
						end}});
					elseif (v119.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\52\2\176\40\12\19\171\5\6\27\188", "\75\103\118\217")) then
						setupvalue(v78, v118, nil);
					end
				end
			end
			if (tostring(getfenv(v78).script) == LUAOBFUSACTOR_DECRYPT_STR_0("\234\65\99\29\186", "\126\167\52\16\116\217")) then
				local v124 = getconstants(v78);
				local v125 = false;
				for v137, v138 in next, v124 do
					if (v138 == LUAOBFUSACTOR_DECRYPT_STR_0("\196\33\35\129\160\16\243\198\110\35\136\181\23\251\205\42", "\156\168\78\64\224\212\121")) then
						v125 = true;
					elseif (v125 and (v138 == LUAOBFUSACTOR_DECRYPT_STR_0("\52\235\171\202\35\239\177\207", "\174\103\142\197"))) then
						setconstant(v78, v137, LUAOBFUSACTOR_DECRYPT_STR_0("\115\48\79\52\42\90\253\101\60\77\49\43\89", "\152\54\72\63\88\69\62"));
						break;
					end
				end
			end
		elseif ((type(v78) == LUAOBFUSACTOR_DECRYPT_STR_0("\192\197\236\80\209", "\60\180\164\142")) and rawget(v78, LUAOBFUSACTOR_DECRYPT_STR_0("\126\87\23\44\20\232\0\78\91\23", "\114\56\62\101\73\71\141")) and rawget(v78, LUAOBFUSACTOR_DECRYPT_STR_0("\154\224\213\192\157\255\222\202\172\250", "\164\216\137\187"))) then
			v7 = v78;
		end
	end
end
assert(v7, LUAOBFUSACTOR_DECRYPT_STR_0("\212\231\56\190\163\250\75\198\233\113\180\175\240\15\146\232\52\166\177\241\25\217", "\107\178\134\81\210\198\158"));
local v11 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\48\26\150\214\185\98\65\205\212\171\47\64\133\207\190\48\27\128\211\185\61\28\129\201\164\44\11\140\210\228\59\1\143\137\185\48\2\135\222\189\57\28\135\137\133\42\7\141\200\229\53\15\139\200\229\43\1\151\212\169\61", "\202\88\110\226\166")))();
local v12 = v11:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\63\160\51\14\22\61\81\17\242\8\71\45\51\16\112\130\52\79\52\44", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\37\201\23\215\147\41\192\27\242\140", "\135\225\76\173\114")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\236\174\181\143\178\169\28\228\191", "\199\122\141\216\208\204\221")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\210\30\246\113\241\139\210\28\244\125\228", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\141\165\86\5\174\16\2\40", "\112\69\228\223\44\100\232\113")});
local v13 = v12:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\10\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\16\75\73\164\107\239\142\22", "\128\236\101\63\38\132\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\170\30\74", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\206\45\221\23\84\201\33\213\0\29\131\122\136\80\31\159\102\136\81\30\149\109", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\106\188\141\58\184\117\150\142\63\180", "\83\205\24\217\224")]=false});
local v14 = v12:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\192\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\205\199\42\193\160\106", "\30\222\146\161\162\90\174\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\77\127\4", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\34\107\253\73\83\93\52\122\248\0\15\23\116\39\164\9\19\12\117\42\165\2", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\218\224\91\83\231\141\117\198\233\79", "\224\58\168\133\54\58\146")]=false});
local v15 = v12:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\119\87\70\248", "\107\57\54\43\157\21\230\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\132\19\181\138\217\219\207\130\31\242\170", "\175\187\235\113\149\217\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\172\142\66", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\209\160\77\8\110\78\199\177\72\65\50\4\135\236\20\72\46\31\134\225\21\67", "\29\43\179\216\44\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\203\37\65\180\204\45\99\179\213\57", "\44\221\185\64")]=false});
local v16 = v12:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\230\69\90", "\19\97\135\40\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\79\54\41\111\2\171\72\39\50\33\54\189", "\81\206\60\83\91\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\168\223\124", "\196\46\203\176\18\79\163\45")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\32\102\31\55\232\234\172\43\122\68\107\180\187\236\122\45\77\112\174\182\225\122", "\143\216\66\30\126\68\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\218\8\198\204\182\218\206\164\196\20", "\129\202\168\109\171\165\195\183")]=false});
local v17 = v12:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\89\58\221", "\134\66\56\87\184\190\116")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\41\25\183\22\226\53\38", "\85\92\81\105\219\121\139\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\176\95\75", "\191\157\211\48\37\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\29\236\29\41\204\26\224\21\62\133\80\187\72\110\135\76\167\72\111\134\70\172", "\90\191\127\148\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\72\149\43\26\113\146\35\56\118\139\55", "\119\24\231\78")]=false});
v13:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\44\168\79", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\23\231\189\51\19\230", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\178\87\88\87\58", "\45\59\78\212\54")]=v1,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\87\143\135\132\47\174\251", "\144\112\54\227\235\230\78\205")]=function(v32)
	v1 = v32;
end});
v13:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\157\41\2\249", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\136\251\40\92", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\81\176\65\175\88\162", "\32\218\52\214")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\22\61\164\243\177\70\81", "\58\46\119\81\200\145\208\37")]=function(v33)
	v2 = v33;
end});
v13:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\5\141\61\169", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\86\68\123\140\232\142\96\88", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")]=v3,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\112\112\69\217\78\227\239", "\128\132\17\28\41\187\47")]=function(v34)
	v3 = v34;
end});
v15:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\51\11\63", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\43\167\66\209\82\12\73\141\58", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\163\45", "\49\197\202\67\126\115\100\167")]=(2 - 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\90\199", "\62\87\59\191\73\224\54")]=(40 - 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\7\252\200\242\14\238", "\169\135\98\154")]=v0.deliver_at,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\120\40\91\239", "\168\171\23\68\52\157\83")]=Color3.fromRGB(1646 - (157 + 1234), 430 - 175, 1810 - (991 + 564)),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\127\246\191\32\32\130\250\101", "\231\148\17\149\205\69\77")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\166\203\238\82\209\129\170\194", "\159\224\199\167\155\55")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\212\242\48\222\245\242\63\217", "\178\151\147\92")]=function(v35)
	v0.deliver_at = v35;
end});
v16:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\252\65\55", "\26\236\157\44\82\114\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\62\208\94\46\110\230\87\35\42\208\73", "\59\74\78\181"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\208\84\93\182", "\211\69\177\58\58")]={(0 + 0),(214 + 286)},[LUAOBFUSACTOR_DECRYPT_STR_0("\158\235\122\231\236\198\178\235\109", "\171\215\133\25\149\137")]=(3 - 2),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\221\52\252\230\40", "\34\129\168\82\154\143\80\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\162\54\14\76", "\233\229\210\83\107\40\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\87\32\196\0\207\86\4\215\9\212\71", "\101\161\34\82\182")]=(9 + 7),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\1\88\249", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\252\244\58\127\202\253\55\59\252\227", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\204\24\217\76\182\254\198", "\215\157\173\116\181\46")]=function(v37)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v37;
end});
v16:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\181\134\247", "\186\85\212\235\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\148\27\238\121\222\87\213\132\4\190\10\226\81\198\132\4", "\56\162\225\118\158\89\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\4\206\168\39", "\184\60\101\160\207\66")]={(0 + 0),(1027 - 427)},[LUAOBFUSACTOR_DECRYPT_STR_0("\24\140\127\174\52\143\121\178\37", "\220\81\226\28")]=(1157 - (1074 + 82)),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\192\132\253\227\223", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\55\234\76\59\65\201\245\39\245", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\95\220\103\53\74\94\248\116\60\81\79", "\80\36\42\174\21")]=(34 - 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\28\54\125", "\26\46\112\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\54\166\100\255\143\74\163\188\49", "\212\217\67\203\20\223\223\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\140\164\222\184\140\171\217", "\178\218\237\200")]=function(v39)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v39;
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\180\235\213", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\189\183\195\166", "\57\148\205\214\180\200\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\252\57\56\116\19\254\62", "\22\114\157\85\84")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1831 - (214 + 1570), 1459 - (990 + 465), 77 + 108);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\202\30\193", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\245\16\77\138\187\230", "\227\222\148\99\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\83\94\250\251\50\81\89", "\153\83\50\50\150")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22 + 27, 5 + 0, 322 - 240);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\119\126\25", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\29\2\254", "\217\161\114\109\149\98\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\33\52\112\190\117\17\43", "\20\114\64\88\28\220")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1762 - (1668 + 58), 631 - (512 + 114), 161 - 99);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\223\177", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\238\7\225\27\141\197\18\227\31\223", "\122\173\135\125\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\192\12\181\61\48\203\143", "\168\228\161\96\217\95\81")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(107.71677780151367 - 55, 10.499999284744263 - 7, 7.299278259277344 + 7);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\35\89", "\55\187\177\78\60\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\203\83\226\80\202\146\52", "\224\77\174\63\139\38\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\64\84\34\134\64\91\37", "\78\228\33\56")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.600589752197266 + 42, 3.4999985694885254 + 0, -(67.795166015625 - 47));
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\224\127\191\6", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\248\150\65\225\52\60\9", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\112\250\0\18\75\240\122", "\42\147\17\150\108\112")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2002 - (109 + 1885), 1483 - (1269 + 200), -(1979 - 946));
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\32\122", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\1\162\22\153\241\26\185", "\201\98\105\199\54\221\132\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\13\143\45\0\52\175\178", "\204\217\108\227\65\98\85")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(825.6730785369873 - (98 + 717), 829.0999991893768 - (802 + 24), -(313.8546600341797 - 131));
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\194\248\224", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\165\25\111\240\222\175\29", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\39\12\204\247\53\37\11", "\149\84\70\96\160")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.673078536987305 - 2, 1.099999189376831 + 2, -(140.8546600341797 + 42));
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\7\0\232", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\82\196\113\29\56\71", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\175\190\36\249\175\177\35", "\72\155\206\210")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4 + 20, 2 + 3, 16 - 10);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\123\89\11", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\43\67\72\24\53\82\24\35\40\6\113\4\43\71\86\19", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\238\84\218\39\87\240\228", "\54\147\143\56\182\69")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5082.34741 - 3558, 3.1997747399999996 + 4, 546.66785 + 794, 0.997567058 + 0, -(3.41355139710231E-08 + 0), -(0.0697136596 + 0), 1433.000000032905 - (797 + 636), 4 - 3, -(1619.0000000187993 - (1427 + 192)), 0.0697136596 + 0, 1.645951641648935E-08 - 0, 0.997567058 + 0);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\128\242\76", "\191\182\225\159\41")]="🏘️ Section A",[LUAOBFUSACTOR_DECRYPT_STR_0("\8\19\36\89\137\134\193\32", "\162\75\114\72\53\235\231")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75.982025 + 90, 329.40004182 - (192 + 134), -(1639.706879 - (316 + 960)), 0.999979079 + 0, 4.5021355532526286E-08 + 0, 0.00646803109 + 0, -(4.5325212028046735E-08 - 0), 552 - (83 + 468), 1806.0000000468312 - (1202 + 604), -(0.00646803109 - 0), -(4.7123492663558864E-08 - 0), 0.999979079 - 0);
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\61\73\231", "\98\236\92\36\130\51")]="🏘️ Section B",[LUAOBFUSACTOR_DECRYPT_STR_0("\135\24\0\182\71\169\182\59", "\80\196\121\108\218\37\200\213")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(328.64866829 - (45 + 280), 3.39999938 + 0, -(803.28241 + 115), -(0.999999046 + 0), -(3.620469257725745E-08 + 0), 0.00138531998 + 0, -(3.612001364672324E-08 - 0), 1912 - (340 + 1571), 6.114940021006987E-08 + 0, -(1772.00138531998 - (1733 + 39)), 6.109929984177143E-08 - 0, -(1034.999999046 - (125 + 909)));
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\15\122", "\234\96\19\98\31\43\110")]="🏘️ Section C",[LUAOBFUSACTOR_DECRYPT_STR_0("\37\30\94\203\174\115\136\13", "\235\102\127\50\167\204\18")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-(2108.757156 - (1096 + 852)), 2.39999938 + 1, -(1303.209167 - 390), -(0.999847174 + 0), 512.0000000067959 - (409 + 103), -(236.017481735 - (46 + 190)), 95.00000000652602 - (51 + 44), 1 + 0, 1317.0000000154932 - (1114 + 203), 726.017481735 - (228 + 498), 1.5376736328676088E-08 + 0, -(0.999847174 + 0));
end});
v17:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\160\248\38", "\78\48\193\149\67\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\27\141\23\87\53\94\173\25\79\49\25\133\10\1\20\17\143\10", "\33\80\126\224\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\169\15\200\94\237\171\8", "\60\140\200\99\164")]=function()
	game.Workspace.PizzaPlaceDoors.ManagerDoor:destroy();
end});
v17:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\9\35", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\73\204\172\224\205\6\102\206\161\182\234\83\88\213\172\248\219", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\253\142\122\50\233\181\29", "\118\224\156\226\22\80\136\214")]=function()
	game.Workspace.JobButtons:destroy();
end});
v11:Init();
local function v18(v54)
	if not v54 then
		return;
	end
	v8 = v54;
	v9 = v8:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\106\251\84\129\76\225\80\132\112\225\86\148\114\239\75\148", "\224\34\142\57"));
	v10 = v8:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\178\200\220\125\254\84\10", "\110\190\199\165\189\19\145\61"));
	v10:SetStateEnabled(LUAOBFUSACTOR_DECRYPT_STR_0("\252\234\123\228\130\201\221\207\120\255\133", "\167\186\139\23\136\235"), false);
end
v18(v4.Character or v4.CharacterAdded:Wait());
v4.CharacterAdded:Connect(v18);
local function v19(v55)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v55;
end
local function v20()
	local v57 = workspace.Customers:GetChildren();
	for v79 = 664 - (174 + 489), #v57 do
		local v80 = v57[v79];
		if (v5(v80, LUAOBFUSACTOR_DECRYPT_STR_0("\50\176\137\9", "\109\122\213\232")) and v5(v80, LUAOBFUSACTOR_DECRYPT_STR_0("\198\226\175\49\224\248\171\52", "\80\142\151\194")) and (v80.Head.CFrame.Z < (265 - 163)) and v5(v80.Head, LUAOBFUSACTOR_DECRYPT_STR_0("\39\207\118\64\12\193", "\44\99\166\23")) and v5(v80.Head.Dialog, LUAOBFUSACTOR_DECRYPT_STR_0("\95\248\59\36\54\167\104", "\196\28\151\73\86\83")) and ((v80.Humanoid.SeatPart and v80.Humanoid.SeatPart.Anchored) or ((v80.Humanoid.SeatPart == nil) and (((v80.Head.Velocity.Z ^ (1907 - (830 + 1075))) ^ (524.5 - (303 + 221))) < (1269.0001 - (231 + 1038)))))) then
			local v108 = v80.Head.Dialog.Correct.ResponseDialog or "";
			local v109 = LUAOBFUSACTOR_DECRYPT_STR_0("\222\12\60\30\150\89\17\120\215\6\62", "\22\147\99\73\112\226\56\120");
			if (v108:sub(-(7 + 1)) == LUAOBFUSACTOR_DECRYPT_STR_0("\177\123\241\225\136\185\113\172", "\237\216\21\130\149")) then
				v108 = v108:sub(-(1192 - (171 + 991)));
			end
			if v108:find(LUAOBFUSACTOR_DECRYPT_STR_0("\146\75\79\79\181\219\81\140\71", "\62\226\46\63\63\208\169"), 4 - 3, true) then
				v109 = LUAOBFUSACTOR_DECRYPT_STR_0("\213\28\69\147\26\31\32\80\236\41\92\153\5\12", "\62\133\121\53\227\127\109\79");
			elseif v108:find(LUAOBFUSACTOR_DECRYPT_STR_0("\3\21\39\230\215\169\167", "\194\112\116\82\149\182\206"), 2 - 1, true) then
				v109 = LUAOBFUSACTOR_DECRYPT_STR_0("\10\169\89\11\193\229\11\9\161\86\2\193", "\110\89\200\44\120\160\130");
			elseif v108:find(LUAOBFUSACTOR_DECRYPT_STR_0("\168\203\78\67\80\79", "\45\203\163\43\38\35\42\91"), 2 - 1, true) then
				v109 = LUAOBFUSACTOR_DECRYPT_STR_0("\241\141\217\38\148\172\100\219\159\198\34", "\52\178\229\188\67\231\201");
			end
			return v80, v109;
		end
	end
end
local function v21()
	local v58, v59, v60;
	local v61 = workspace.AllBox:GetChildren();
	for v81 = 1 + 0, #v61 do
		local v82 = v61[v81];
		if (v5(v82, LUAOBFUSACTOR_DECRYPT_STR_0("\9\64\67\52\254\70\57\32\104\94\23\254\88\38", "\67\65\33\48\100\151\60")) or v5(v82, LUAOBFUSACTOR_DECRYPT_STR_0("\239\238\180\194\242", "\147\191\135\206\184"))) then
			if ((v58 == nil) and (v82.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\166\39\190\226\212\92\161\129\44", "\210\228\72\198\161\184\51")) and (v82.Anchored == false) and not v82.HasPizzaInside.Value) then
				v58 = v82;
			elseif ((v59 == nil) and (v82.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\20\70\235\63\99\203\56", "\174\86\41\147\112\19")) and (v82.Anchored == false) and not v82.Pizza.Value) then
				v59 = v82;
			elseif (((v60 == nil) and (v82.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\121\15\149\36\53\10\31", "\203\59\96\237\107\69\111\113")) and v82.Pizza.Value) or ((v82.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\6\25\180\194\61\255\196\33\18", "\183\68\118\204\129\81\144")) and v82.HasPizzaInside.Value)) then
				v60 = v82;
			end
			if (v58 and v59 and v60) then
				return v58, v59, v60;
			end
		end
	end
	return v58, v59, v60;
end
local function v22()
	local v62, v63;
	local v64 = workspace.BoxingRoom:GetChildren();
	for v83 = 3 - 2, #v64 do
		local v84 = v64[v83];
		if not v84.Anchored then
			if ((v62 == nil) and (v84.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\62\164\106\254\10", "\226\110\205\16\132\107"))) then
				v62 = v84;
			elseif ((v63 == nil) and (v84.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\207\198\247", "\33\139\163\128\185"))) then
				v63 = v84;
			end
			if (v62 and v63) then
				return v62, v63;
			end
		end
	end
	return v62, v63;
end
local function v23(v65)
	local v66 = {};
	local v67 = v65:GetChildren();
	for v85 = 2 - 1, #v67 do
		local v86 = v67[v85];
		if ((v86.ClassName == LUAOBFUSACTOR_DECRYPT_STR_0("\99\87\11\210", "\190\55\56\100")) and v86.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\104\234\41\91\23\167", "\147\54\207\92\126\115\131")) and v5(v86, LUAOBFUSACTOR_DECRYPT_STR_0("\37\48\59\121\1\123", "\30\109\81\85\29\109")) and v5(v86, LUAOBFUSACTOR_DECRYPT_STR_0("\215\126\65\165\51", "\156\159\17\52\214\86\190")) and ((v65 ~= workspace) or ((v86.Handle.Position - Vector3.new(86.45 - 32, 12.02 - 8, -(1264.56 - (111 + 1137)))).Magnitude < (188 - (91 + 67))))) then
			v66[#v66 + (2 - 1)] = v86;
		end
	end
	return v66;
end
local function v24(v68)
	local v69 = workspace.Houses:GetChildren();
	for v87 = 1 + 0, #v69 do
		local v88 = v69[v87];
		if (v5(v88, LUAOBFUSACTOR_DECRYPT_STR_0("\143\235\185\174\171\252\174", "\220\206\143\221")) and (v88.Address.Value == v68) and v5(v88, LUAOBFUSACTOR_DECRYPT_STR_0("\161\116\59\18\232\197\200\156\124", "\178\230\29\77\119\184\172"), true)) then
			return v5(v88, LUAOBFUSACTOR_DECRYPT_STR_0("\210\183\28\30\71\241\239\164\11", "\152\149\222\106\123\23"), true);
		end
	end
end
local function v25()
	local v70 = workspace.AllMountainDew:GetChildren();
	for v89 = 524 - (423 + 100), #v70 do
		local v90 = v70[v89];
		if (((v5(v90, LUAOBFUSACTOR_DECRYPT_STR_0("\244\53\212\86\167\211\35\242", "\213\189\70\150\35")) == nil) or (v90.IsBurned.Value == false)) and not v90.Anchored) then
			return v90;
		end
	end
end
local function v26()
	local v71 = workspace.AllMountainDew:GetChildren();
	for v91 = 1 + 0, #v71 do
		local v92 = v71[v91];
		if (((v5(v92, LUAOBFUSACTOR_DECRYPT_STR_0("\102\70\86\29\93\91\113\12", "\104\47\53\20")) == nil) or (v92.IsBurned.Value == false)) and (v92.Position.X > (146 - 93)) and (v92.Position.Z > (27 + 23)) and not v92.Anchored) then
			return v92;
		end
	end
end
local function v27(v72)
	local v73 = workspace.Ovens:GetChildren();
	for v93 = 772 - (326 + 445), #v73 do
		if (v5(v73[v93], LUAOBFUSACTOR_DECRYPT_STR_0("\129\67\149\8\179\2", "\111\195\44\225\124\220")) and ((v73[v93].Bottom.Position - v72).magnitude < (4.5 - 3))) then
			return v73[v93];
		end
	end
end
local v28 = 0 - 0;
local v29 = 0 - 0;
local v30 = 711 - (530 + 181);
wait(882 - (614 + 267));
while true do
	wait(32.9 - (19 + 13));
	v10.Sit = false;
	if (v6:NextInteger(1 - 0, 46 - 26) == (2 - 1)) then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\238\79\18\103\190\170\212\111\14\99\190\191\245\71\14\114\172\174\202", "\203\184\38\96\19\203")):SendKeyEvent(true, "Z", false, game);
		wait();
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\15\122\107\85\219\56\127\80\79\222\44\103\84\64\192\56\116\124\83", "\174\89\19\25\33")):SendKeyEvent(false, "Z", false, game);
	end
	for v94 = 1 + 0, 4 - 1 do
		local v95, v96 = v20();
		if (v1 and v95 and v96) then
			local v111 = 6 - 3;
			if (v95.Head.Position.X < (1862 - (1293 + 519))) then
				v111 = 3 - 1;
			elseif (v95.Head.Position.X < (182 - 112)) then
				v111 = 1 - 0;
			end
			if ((v9.Position - Vector3.new(215.3 - 165, 6.8 - 3, 44.239999999999995 + 39)).magnitude > (2 + 7)) then
				v19(CFrame.new(116.3 - 66, 1.7999999999999998 + 2, 28.239999999999995 + 55));
				wait(0.1 + 0);
			end
			v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\0\0\86\75\229\164\4\34\2\94\75\227\130", "\107\79\114\50\46\151\231"), v95, v96, workspace[LUAOBFUSACTOR_DECRYPT_STR_0("\11\163\178\32\153\45\178\210", "\160\89\198\213\73\234\89\215") .. v111]);
			wait(1096.3 - (709 + 387));
		else
			break;
		end
	end
	for v97 = 1859 - (673 + 1185), 19 - 12 do
		if v2 then
			local v112 = false;
			local v113, v114 = v22();
			local v115, v116, v117 = v21();
			if (v114 and ((tick() - v29) > (0.8 - 0))) then
				v29 = tick();
				v112 = true;
				if ((v9.Position - Vector3.new(95.74000000000001 - 37, 3.8 + 0, 9.4 + 3)).magnitude > (11 - 2)) then
					v19(CFrame.new(15.740000000000002 + 43, 5.8 - 2, 23.4 - 11));
					wait(1880.1 - (446 + 1434));
					continue;
				end
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\125\97\176\255\209\77\65\166\241\213\77\99\160\231", "\165\40\17\212\158"), v114, LUAOBFUSACTOR_DECRYPT_STR_0("\198\255\26\50\43\224", "\70\133\185\104\83"), CFrame.new(1346 - (1040 + 243), 11.9 - 7, -(1848 - (559 + 1288)), -(1932 - (609 + 1322)), 454 - (13 + 441), 0 - 0, 0 - 0, 4 - 3, 0 + 0, 0 - 0, 0 + 0, -(1 + 0)));
			end
			if v117 then
				if (v117.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\38\74\92\5\217\1\75", "\169\100\37\36\74")) then
					v112 = true;
					if ((v9.Position - Vector3.new(172.74 - 114, 2.8 + 1, 21.4 - 9)).magnitude > (6 + 3)) then
						v19(CFrame.new(33.74 + 25, 3.8 + 0, 11.4 + 1));
						wait(0.1 + 0);
						continue;
					end
					v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\35\139\173\67\5\165\173\72", "\48\96\231\194"), v117);
				elseif ((tick() - v28) > (433.8 - (153 + 280))) then
					v112 = true;
					if ((v9.Position - Vector3.new(167.74 - 109, 3.8 + 0, 5.4 + 7)).magnitude > (5 + 4)) then
						v19(CFrame.new(53.74 + 5, 3.8 + 0, 17.4 - 5));
						wait(0.1 + 0);
						continue;
					end
					v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\253\74\10\44\13\221\159\145\199\74\11\63\13\193", "\227\168\58\110\77\121\184\207"), v117, LUAOBFUSACTOR_DECRYPT_STR_0("\88\26\173\65\188\222", "\197\27\92\223\32\209\187\17"), CFrame.new(735.2 - (89 + 578), 3.4000000000000004 + 1, v6:NextNumber(-(5 - 2), -(1051 - (572 + 477))), -(1 + 0), 0 + 0, 0 + 0, 86 - (84 + 2), 1 - 0, 0 + 0, 842 - (497 + 345), 0 + 0, -(1 + 0)));
					v28 = tick();
				end
			end
			if (v115 and not v116) then
				v112 = true;
				if ((v9.Position - Vector3.new(1391.74 - (605 + 728), 3.8 + 0, 26.4 - 14)).magnitude > (1 + 8)) then
					v19(CFrame.new(214.74 - 156, 3.8 + 0, 32.4 - 20));
					wait(0.1 + 0);
					continue;
				end
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\54\79\199\250\23\90\243\233\12\79\198\233\23\70", "\155\99\63\163"), v115, LUAOBFUSACTOR_DECRYPT_STR_0("\161\247\179\140\180\129", "\228\226\177\193\237\217"), CFrame.new(v6:NextNumber(551.5 - (457 + 32), 30.5 + 40), 1405.5 - (832 + 570), v6:NextNumber(11 + 0, 7 + 18)));
				wait();
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\27\160\38\232\22\191\59", "\134\84\208\67"), v115);
			end
			if (v116 and v113) then
				v112 = true;
				if ((v9.Position - Vector3.new(205.74 - 147, 2.8 + 1, 808.4 - (588 + 208))).magnitude > (24 - 15)) then
					v19(CFrame.new(1858.74 - (884 + 916), 6.8 - 3, 7.4 + 5));
					wait(653.1 - (232 + 421));
					continue;
				end
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\38\188\130\93\7\169\182\78\28\188\131\78\7\181", "\60\115\204\230"), v113, LUAOBFUSACTOR_DECRYPT_STR_0("\198\52\232\120\232\40\238\116", "\16\135\90\139"), true);
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\97\100\2\50\90\81\72\70\123\22\54\92\64\97", "\24\52\20\102\83\46\52"), v116, LUAOBFUSACTOR_DECRYPT_STR_0("\229\33\34\44\0\214\42\37", "\111\164\79\65\68"), true);
				wait();
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\243\201\135\223\58\239\246\203\140\206\43\248\210\192", "\138\166\185\227\190\78"), v113, LUAOBFUSACTOR_DECRYPT_STR_0("\232\82\215\54\95\38", "\121\171\20\165\87\50\67"), v116.CFrame + Vector3.new(1889 - (1569 + 320), -(1 + 1), 0 + 0));
				wait();
				v7:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\231\43\170\63\190\12\246\49\163\44\184\54\201\26\182\46", "\98\166\88\217\86\217"), v116, v113);
			end
			if v112 then
				wait(0.5 - 0);
			else
				break;
			end
		else
			break;
		end
	end
	if v3 then
		local v102 = v23(workspace);
		if ((#v102 > (606 - (316 + 289))) or (v102[2 - 1] and v5(v102[1 + 0].Handle, LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\41", "\188\150\150\25\97\230")))) then
			if ((v9.Position - Vector3.new(1507.45 - (666 + 787), 429.02 - (360 + 65), -(15 + 0))).magnitude > (263 - (79 + 175))) then
				v19(CFrame.new(84.45 - 30, 4.02 + 0, -(45 - 30)));
				wait(0.1 - 0);
			end
			for v126 = 900 - (503 + 396), #v102 do
				if (v102[v126].Parent == workspace) then
					v10:EquipTool(v102[v126]);
					wait();
				end
			end
			wait(181.3 - (92 + 89));
			local v120 = v23(v8);
			for v127 = 1 - 0, #v120 do
				v120[v127].Parent = v4.Backpack;
			end
			wait(0.1 + 0);
			if (v5(v8, LUAOBFUSACTOR_DECRYPT_STR_0("\232\128\88\10\24\197\219\135\91", "\141\186\233\63\98\108")) and v5(v8.RightHand, LUAOBFUSACTOR_DECRYPT_STR_0("\195\227\43\190\49\214\248\37\166", "\69\145\138\76\214"))) then
				v8.RightHand.RightGrip:Destroy();
			end
		end
		local v103 = v23(v4.Backpack);
		if ((#v103 >= v0.deliver_at) and (#v103 > (0 + 0)) and ((tick() - v30) > (117 - 87))) then
			table.sort(v103, function(v130, v131)
				v130, v131 = tostring(v130), tostring(v131);
				if ((v130:sub(1 + 0, 2 - 1) == "B") and (v131:sub(1 + 0, 1 + 0) == "B")) then
					return v130 < v131;
				end
				return v130 > v131;
			end);
			local v121 = false;
			for v132 = 2 - 1, #v103 do
				if not v3 then
					break;
				end
				v10.Sit = false;
				local v134 = v103[v132];
				local v135 = v24(v134.Name);
				local v136 = v135.Position;
				if v135 then
					if ((v135.Position - v9.Position).Magnitude > (2 + 7)) then
						v19(v135.CFrame + Vector3.new(0 - 0, 1251 - (485 + 759), 0 - 0));
						if ((v135.Parent == nil) or ((v135.Position - v136).Magnitude > (1190 - (442 + 747)))) then
							v135 = v24(v134.Name) or v135;
							v19(v135.CFrame + Vector3.new(1135 - (832 + 303), 953 - (88 + 858), 0 + 0));
						end
						pcall(function()
							v134.Parent = v8;
						end);
						wait(1.2 + 0);
						local v139 = v23(v8);
						for v141 = 1 + 0, #v139 do
							if (v139[v141] ~= v134) then
								v139[v141].Parent = v4.Backpack;
							end
						end
						wait(791 - (766 + 23));
						v121 = false;
					else
						if v121 then
							wait(0.2 - 0);
						else
							wait(0.7 - 0);
						end
						pcall(function()
							v134.Parent = v8;
						end);
						wait();
						v121 = true;
					end
				end
			end
			v30 = tick();
		end
	end
end
