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
	local v69 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\202\213\49", "\126\177\163\187\69\134\219\167"), workspace);
	v69.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\41\202\241\51\204\62\204\254\47\200\106\192\228\51\193\37\204\232\109", "\156\67\173\74\165");
	wait(1842 - (1574 + 265));
	v69:Destroy();
	return;
end
local v0 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\178\79\31\176\42\121\53\163", "\38\84\215\41\118\220\70")]=(4 + 46),[LUAOBFUSACTOR_DECRYPT_STR_0("\66\19\36\27\242\92\41\39\28\250", "\158\48\118\66\114")]=(155 - 58),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\33\28\63\101\160\233\148\37\4", "\155\203\68\112\86\19\197")]=(963 - (714 + 225)),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\201\55\229\127\113\235\199\77\212\34\255\72\125\235", "\152\38\189\86\156\32\24\133")]=true};
local v1, v2, v3, v4 = false, false, false, false;
if readfile then
	pcall(function()
		local v92 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\212\67\179\86\207\82\181\80\245\84\162", "\38\156\55\199")):JSONDecode(readfile(LUAOBFUSACTOR_DECRYPT_STR_0("\152\116\102\50\18\82\251\81\165\51\104\48\7", "\35\200\29\28\72\115\20\154")));
		local v93 = false;
		for v99, v100 in pairs(v92) do
			if (v0[v99] == nil) then
				v93 = true;
				v92[v99] = nil;
			end
		end
		for v101, v102 in pairs(v0) do
			if (v92[v101] == nil) then
				v93 = true;
				v92[v101] = v102;
			end
		end
		if v93 then
			warn(LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\197\203\132\34\51\10\255\222\201\136\62\35\11\182\197\203\136\34", "\84\121\223\177\191\237\76"));
			writefile(LUAOBFUSACTOR_DECRYPT_STR_0("\139\95\211\186\59\118\49\211\182\24\221\184\46", "\161\219\54\169\192\90\48\80"), game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\97\86\20\53\122\71\18\51\64\65\5", "\69\41\34\96")):JSONEncode(v92));
		end
		v0 = v92;
	end);
end
if getconnections then
	for v94, v95 in next, getconnections(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\143\192\197\3\18\63\159\204\217\30\7\51\168", "\75\220\163\183\106\98")).Error) do
		v95:Disable();
	end
end
local v5 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\138\46\220\16\169", "\185\98\218\235\87")).LocalPlayer;
local v6 = game.FindFirstChild;
local v7 = Random.new();
local v8;
local v9, v10, v11;
do
	local v31 = (getreg or debug.getregistry)();
	for v71 = 2 - 1, #v31 do
		local v72 = v31[v71];
		if (type(v72) == LUAOBFUSACTOR_DECRYPT_STR_0("\205\41\41\229\202\163\196\50", "\202\171\92\71\134\190")) then
			for v115, v116 in next, getupvalues(v72) do
				if (typeof(v116) == LUAOBFUSACTOR_DECRYPT_STR_0("\0\207\63\156\40\207\47\141", "\232\73\161\76")) then
					if (v116.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\152\216\81\85\49\174\205", "\126\219\185\34\61")) then
						setupvalue(v72, v115, {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\193\75\97\123\85\230\243\24\193\80\35\93\123\250\228\7", "\135\108\174\62\18\30\23\147")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\161\232\35\223", "\167\214\137\74\171\120\206\83")]=function()
						end,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\241\59\73", "\199\235\144\82\61\152")]=function()
						end}});
					elseif (v116.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\52\2\176\40\12\19\171\5\6\27\188", "\75\103\118\217")) then
						setupvalue(v72, v115, nil);
					end
				end
			end
			if (tostring(getfenv(v72).script) == LUAOBFUSACTOR_DECRYPT_STR_0("\234\65\99\29\186", "\126\167\52\16\116\217")) then
				local v125 = getconstants(v72);
				local v126 = false;
				for v140, v141 in next, v125 do
					if (v141 == LUAOBFUSACTOR_DECRYPT_STR_0("\196\33\35\129\160\16\243\198\110\35\136\181\23\251\205\42", "\156\168\78\64\224\212\121")) then
						v126 = true;
					elseif (v126 and (v141 == LUAOBFUSACTOR_DECRYPT_STR_0("\52\235\171\202\35\239\177\207", "\174\103\142\197"))) then
						setconstant(v72, v140, LUAOBFUSACTOR_DECRYPT_STR_0("\115\48\79\52\42\90\253\101\60\77\49\43\89", "\152\54\72\63\88\69\62"));
						break;
					end
				end
			end
		elseif ((type(v72) == LUAOBFUSACTOR_DECRYPT_STR_0("\192\197\236\80\209", "\60\180\164\142")) and rawget(v72, LUAOBFUSACTOR_DECRYPT_STR_0("\126\87\23\44\20\232\0\78\91\23", "\114\56\62\101\73\71\141")) and rawget(v72, LUAOBFUSACTOR_DECRYPT_STR_0("\154\224\213\192\157\255\222\202\172\250", "\164\216\137\187"))) then
			v8 = v72;
		end
	end
end
assert(v8, LUAOBFUSACTOR_DECRYPT_STR_0("\212\231\56\190\163\250\75\198\233\113\180\175\240\15\146\232\52\166\177\241\25\217", "\107\178\134\81\210\198\158"));
local v12 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\48\26\150\214\185\98\65\205\212\171\47\64\133\207\190\48\27\128\211\185\61\28\129\201\164\44\11\140\210\228\59\1\143\137\185\48\2\135\222\189\57\28\135\137\133\42\7\141\200\229\53\15\139\200\229\43\1\151\212\169\61", "\202\88\110\226\166")))();
local v13 = v12:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\63\160\51\14\22\61\81\17\242\8\71\45\51\16\112\130\52\79\52\44", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\37\201\23\215\147\41\192\27\242\140", "\135\225\76\173\114")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\236\174\181\143\178\169\28\228\191", "\199\122\141\216\208\204\221")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\210\30\246\113\241\139\210\28\244\125\228", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\18\139\173\71\68\169\5\80\4\196\143\69\30\146\16\80\21\136\190\79\1", "\112\69\228\223\44\100\232\113")});
local v14 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\10\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\4\86\72", "\128\236\101\63\38\132\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\170\30\74", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\206\45\221\23\84\201\33\213\0\29\131\122\136\80\31\159\102\136\81\30\149\109", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\106\188\141\58\184\117\150\142\63\180", "\83\205\24\217\224")]=false});
local v15 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\192\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\205\199\42\193\160\106\173", "\30\222\146\161\162\90\174\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\77\127\4", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\34\107\253\73\83\93\52\122\248\0\15\23\116\39\164\9\19\12\117\42\165\2", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\218\224\91\83\231\141\117\198\233\79", "\224\58\168\133\54\58\146")]=false});
local v15 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\119\87\70\248", "\107\57\54\43\157\21\230\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\142\5\225\176\210\200\200", "\175\187\235\113\149\217\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\172\142\66", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\209\160\77\8\110\78\199\177\72\65\50\4\135\236\20\72\46\31\134\225\21\67", "\29\43\179\216\44\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\203\37\65\180\204\45\99\179\213\57", "\44\221\185\64")]=false});
v14:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\230\69\90", "\19\97\135\40\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\93\32\51\38\52\188", "\81\206\60\83\91\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\174\214\115\58\207\89", "\196\46\203\176\18\79\163\45")]=v1,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\35\114\18\38\250\236\179", "\143\216\66\30\126\68\155")]=function(v32)
	v1 = v32;
end});
v14:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\0\206", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\87\47\221\204", "\134\66\56\87\184\190\116"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\15\186\12\231\53", "\85\92\81\105\219\121\139\65")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\178\92\73\126\222\254\184", "\191\157\211\48\37\28")]=function(v33)
	v2 = v33;
end});
v14:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\30\249\25", "\90\191\127\148\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\34\30\110\130\60\14", "\119\24\231\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\40\163\75\201\76\5", "\113\226\77\197\42\188\32")]=v4,[LUAOBFUSACTOR_DECRYPT_STR_0("\25\23\248\185\56\23\247\190", "\213\90\118\148")]=function(v34)
	v4 = v34;
end});
v14:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\47\185\83", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\67\147\155\138\39\168\226\80\30\161\153\137\37\168\254\80\119\183\166\207", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\9\253\197\87\167", "\59\211\72\111\156\176")]=v3,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\134\239\33\76\134\224\38", "\77\46\231\131")]=function(v35)
	v3 = v35;
end});
v15:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\85\187\69", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\18\55\161\253\188\5\123\90", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\133\62", "\86\75\236\80\204\201\221")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\64\111", "\235\18\33\23\229\158")]=(11 + 88),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")]=v0.refill_at,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\126\112\70\201", "\128\132\17\28\41\187\47")]=Color3.fromRGB(368 - 113, 1061 - (118 + 688), 303 - (25 + 23)),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\60\5\40\88\12\55\8\46", "\61\97\82\102\90")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\47\167\94\194\121\31\4\169", "\105\204\78\203\43\167\55\126")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\134\171\47\18\17\5\196\90", "\49\197\202\67\126\115\100\167")]=function(v36)
	v0.refill_at = v36;
end});
v15:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\90\210\44", "\62\87\59\191\73\224\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\7\252\192\235\14\186\236\233\6", "\169\135\98\154"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\126\42", "\168\171\23\68\52\157\83")]=(1886 - (927 + 959)),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\112\237", "\231\148\17\149\205\69\77")]=(333 - 234),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\162\193\250\66\243\148", "\159\224\199\167\155\55")]=v0.refill_end,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\252\48\221\229", "\178\151\147\92")]=Color3.fromRGB(987 - (16 + 716), 492 - 237, 352 - (11 + 86)),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\243\79\32\23\65\127\130\233", "\26\236\157\44\82\114\44")]=(2 - 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\47\217\78\47\0\212\86\47", "\59\74\78\181")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\6\208\86\86\177\36\210\81", "\211\69\177\58\58")]=function(v38)
	v0.refill_end = v38;
end});
v15:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\153\228\116\240", "\171\215\133\25\149\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\205\62\243\249\53\238\2\192\220", "\34\129\168\82\154\143\80\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\187\61", "\233\229\210\83\107\40\46")]=(286 - (175 + 110)),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\42", "\101\161\34\82\182")]=(60 - 36),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\8\95\255\206\238\150", "\78\136\109\57\158\187\130\226")]=v0.deliver_at,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\48\245\254\44", "\145\94\95\153")]=Color3.fromRGB(1257 - 1002, 2051 - (503 + 1293), 712 - 457),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\195\23\199\75\186\248\195\0", "\215\157\173\116\181\46")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\181\135\231\223\27\181\134\247", "\186\85\212\235\146")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\225\128\26\242\59\239\91\201", "\56\162\225\118\158\89\142")]=function(v40)
	v0.deliver_at = v40;
end});
v12:Init();
local function v16(v42)
	if not v42 then
		return;
	end
	v9 = v42;
	v10 = v9:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\116\16\205\174\44\215\85\1\242\160\45\204\108\4\210\187", "\184\60\101\160\207\66"));
	v11 = v9:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\151\113\189\63\141\117\184", "\220\81\226\28"));
	v11:SetStateEnabled(LUAOBFUSACTOR_DECRYPT_STR_0("\53\212\142\247\227\201\20\241\141\236\228", "\167\115\181\226\155\138"), false);
end
v16(v5.Character or v5.CharacterAdded:Wait());
v5.CharacterAdded:Connect(v16);
local function v17(v43)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v43;
end
local function v18()
	local v45 = workspace.Customers:GetChildren();
	for v73 = 1062 - (810 + 251), #v45 do
		local v74 = v45[v73];
		if (v6(v74, LUAOBFUSACTOR_DECRYPT_STR_0("\202\39\230\88", "\166\130\66\135\60\27\17")) and v6(v74, LUAOBFUSACTOR_DECRYPT_STR_0("\108\95\195\116\62\75\67\202", "\80\36\42\174\21")) and (v74.Head.CFrame.Z < (71 + 31)) and v6(v74.Head, LUAOBFUSACTOR_DECRYPT_STR_0("\106\25\54\118\65\23", "\26\46\112\87")) and v6(v74.Head.Dialog, LUAOBFUSACTOR_DECRYPT_STR_0("\154\44\185\102\186\188\81", "\212\217\67\203\20\223\223\37")) and ((v74.Humanoid.SeatPart and v74.Humanoid.SeatPart.Anchored) or ((v74.Humanoid.SeatPart == nil) and (((v74.Head.Velocity.Z ^ (1 + 1)) ^ (0.5 + 0)) < (533.0001 - (43 + 490)))))) then
			local v103 = v74.Head.Dialog.Correct.ResponseDialog or "";
			local v104 = LUAOBFUSACTOR_DECRYPT_STR_0("\151\130\189\220\174\140\161\220\158\136\191", "\178\218\237\200");
			if (v103:sub(-(741 - (711 + 22))) == LUAOBFUSACTOR_DECRYPT_STR_0("\191\187\245\196\179\180\226\158", "\176\214\213\134")) then
				v103 = v103:sub(-(116 - 86));
			end
			if v103:find(LUAOBFUSACTOR_DECRYPT_STR_0("\228\168\166\196\173\68\86\250\164", "\57\148\205\214\180\200\54"), 860 - (240 + 619), true) then
				v104 = LUAOBFUSACTOR_DECRYPT_STR_0("\34\248\37\36\115\0\242\59\61\70\27\231\47\53", "\22\114\157\85\84");
			elseif v103:find(LUAOBFUSACTOR_DECRYPT_STR_0("\215\202\6\215\92\241\173", "\200\164\171\115\164\61\150"), 1 + 0, true) then
				v104 = LUAOBFUSACTOR_DECRYPT_STR_0("\141\245\22\86\130\185\241\51\76\153\164\245", "\227\222\148\99\37");
			elseif v103:find(LUAOBFUSACTOR_DECRYPT_STR_0("\48\90\87\243\234\54", "\153\83\50\50\150"), 1 - 0, true) then
				v104 = LUAOBFUSACTOR_DECRYPT_STR_0("\126\126\118\25\96\174\125\84\108\105\29", "\45\61\22\19\124\19\203");
			end
			return v74, v104;
		end
	end
end
local function v19()
	local v46, v47, v48;
	local v49 = workspace.AllBox:GetChildren();
	for v75 = 1 + 0, #v49 do
		local v76 = v49[v75];
		if (v6(v76, LUAOBFUSACTOR_DECRYPT_STR_0("\233\19\30\197\11\106\163\192\59\3\230\11\116\188", "\217\161\114\109\149\98\16")) or v6(v76, LUAOBFUSACTOR_DECRYPT_STR_0("\34\41\34\102\189", "\20\114\64\88\28\220"))) then
			if ((v46 == nil) and (v76.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\19\14\202\151\244\223\174\52\5", "\221\81\97\178\212\152\176")) and (v76.Anchored == false) and not v76.HasPizzaInside.Value) then
				v46 = v76;
			elseif ((v47 == nil) and (v76.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\239\232\5\212\10\200\233", "\122\173\135\125\155")) and (v76.Anchored == false) and not v76.Pizza.Value) then
				v47 = v76;
			elseif (((v48 == nil) and (v76.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\166\206\24\150\47\52\198", "\168\228\161\96\217\95\81")) and v76.Pizza.Value) or ((v76.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\249\222\54\127\35\88\200\212\42", "\55\187\177\78\60\79")) and v76.HasPizzaInside.Value)) then
				v48 = v76;
			end
			if (v46 and v47 and v48) then
				return v46, v47, v48;
			end
		end
	end
	return v46, v47, v48;
end
local function v20()
	local v50, v51;
	local v52 = workspace.BoxingRoom:GetChildren();
	for v77 = 1745 - (1344 + 400), #v52 do
		local v78 = v52[v77];
		if not v78.Anchored then
			if ((v50 == nil) and (v78.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\29\199\69\241\71", "\224\77\174\63\139\38\175"))) then
				v50 = v78;
			elseif ((v51 == nil) and (v78.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\160\68\79", "\78\228\33\56"))) then
				v51 = v78;
			end
			if (v50 and v51) then
				return v50, v51;
			end
		end
	end
	return v50, v51;
end
local function v21(v53)
	local v54 = {};
	local v55 = v53:GetChildren();
	for v79 = 406 - (255 + 150), #v55 do
		local v80 = v55[v79];
		if ((v80.ClassName == LUAOBFUSACTOR_DECRYPT_STR_0("\250\113\189\15", "\229\174\30\210\99")) and v80.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\37\168\147\20\233\121", "\89\123\141\230\49\141\93")) and v6(v80, LUAOBFUSACTOR_DECRYPT_STR_0("\219\112\248\8\28\79", "\42\147\17\150\108\112")) and v6(v80, LUAOBFUSACTOR_DECRYPT_STR_0("\39\169\56\108\226", "\136\111\198\77\31\135")) and ((v53 ~= workspace) or ((v80.Handle.Position - Vector3.new(43.45 + 11, 3.0199999999999996 + 1, -(68.56 - 52))).Magnitude < (96 - 66)))) then
			v54[#v54 + (1740 - (404 + 1335))] = v80;
		end
	end
	return v54;
end
local function v22(v56)
	local v57 = workspace.Houses:GetChildren();
	for v81 = 407 - (183 + 223), #v57 do
		local v82 = v57[v81];
		if (v6(v82, LUAOBFUSACTOR_DECRYPT_STR_0("\35\13\163\68\184\247\4", "\201\98\105\199\54\221\132\119")) and (v82.Address.Value == v56) and v6(v82, LUAOBFUSACTOR_DECRYPT_STR_0("\158\5\149\36\50\60\182\163\13", "\204\217\108\227\65\98\85"), true)) then
			return v6(v82, LUAOBFUSACTOR_DECRYPT_STR_0("\121\202\227\224\28\201\68\217\244", "\160\62\163\149\133\76"), true);
		end
	end
end
local function v23()
	local v58 = workspace.AllMountainDew:GetChildren();
	for v83 = 1 - 0, #v58 do
		local v84 = v58[v83];
		if (((v6(v84, LUAOBFUSACTOR_DECRYPT_STR_0("\255\179\47\58\209\216\165\9", "\163\182\192\109\79")) == nil) or (v84.IsBurned.Value == false)) and not v84.Anchored) then
			return v84;
		end
	end
end
local function v24()
	local v59 = workspace.AllMountainDew:GetChildren();
	for v85 = 1 + 0, #v59 do
		local v86 = v59[v85];
		if (((v6(v86, LUAOBFUSACTOR_DECRYPT_STR_0("\29\53\34\213\231\58\35\4", "\149\84\70\96\160")) == nil) or (v86.IsBurned.Value == false)) and (v86.Position.X > (20 + 33)) and (v86.Position.Z > (387 - (10 + 327))) and not v86.Anchored) then
			return v86;
		end
	end
end
local function v25(v60)
	local v61 = workspace.Ovens:GetChildren();
	for v87 = 1 + 0, #v61 do
		if (v6(v61[v87], LUAOBFUSACTOR_DECRYPT_STR_0("\26\9\25\249\55\11", "\141\88\102\109")) and ((v61[v87].Bottom.Position - v60).magnitude < (339.5 - (118 + 220)))) then
			return v61[v87];
		end
	end
end
local v26 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\151\82\216\123\90\50\71\192\189\84\207", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\167\59\250\169\183", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\104\93\9\59\82\58\86\2\38\67", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\18\55\86\93\5\40\72\81", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\253\81\209\45\66\179\246\93\218\41\89\228", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\137\250\76\204\211", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\0\33\82\131\147\130\57\23\44", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\51\73\227\71\13\191\61\81\225\86", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\24\30\177\5\175\167\53\161\23", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\118\21", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\13\91\196\167\50\146\3\19\94\200\187", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\174\224\36\76", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\23\135\16\85\112\13\148\23\79\53\94\135\10\68\41", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\27", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\241\5\42\174\158\180\6\42\163\132\255", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\73\214", "\168\38\44\161\195\150")};
local v27 = {};
for v62, v63 in ipairs(workspace.SupplyButtons:GetChildren()) do
	v27[v62] = v63.Unpressed;
end
table.sort(v27, function(v66, v67)
	return v66.Position.X < v67.Position.X;
end);
local v28 = 0 + 0;
local v29 = 449 - (108 + 341);
local v30 = 0 + 0;
wait(4 - 3);
while true do
	wait(1493.9 - (711 + 782));
	v11.Sit = false;
	if (v7:NextInteger(1 - 0, 489 - (270 + 199)) == (1 + 0)) then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\182\245\144\98\37\233\186\63\142\236\151\98\29\233\184\23\135\249\144", "\118\224\156\226\22\80\136\214")):SendKeyEvent(true, "Z", false, game);
		wait();
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\116\231\75\148\87\239\85\169\76\254\76\148\111\239\87\129\69\235\75", "\224\34\142\57")):SendKeyEvent(false, "Z", false, game);
	end
	for v88 = 1820 - (580 + 1239), 8 - 5 do
		local v89, v90 = v18();
		if (v1 and v89 and v90) then
			local v106 = 3 + 0;
			if (v89.Head.Position.X < (2 + 48)) then
				v106 = 1 + 1;
			elseif (v89.Head.Position.X < (182 - 112)) then
				v106 = 1 + 0;
			end
			if ((v10.Position - Vector3.new(1217.3 - (645 + 522), 1793.8 - (1010 + 780), 83.24 + 0)).magnitude > (42 - 33)) then
				v17(CFrame.new(146.3 - 96, 1839.8 - (1045 + 791), 209.24 - 126));
				wait(0.1 - 0);
			end
			v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\241\181\193\216\97\210\82\3\206\171\192\201\118", "\110\190\199\165\189\19\145\61"), v89, v90, workspace[LUAOBFUSACTOR_DECRYPT_STR_0("\232\238\112\225\152\211\223\249", "\167\186\139\23\136\235") .. v106]);
			wait(505.3 - (351 + 154));
		else
			break;
		end
	end
	for v91 = 1575 - (1281 + 293), 273 - (28 + 238) do
		if v2 then
			local v107 = false;
			local v108, v109 = v20();
			local v110, v111, v112 = v19();
			if (v109 and ((tick() - v29) > (0.8 - 0))) then
				v29 = tick();
				v107 = true;
				if ((v10.Position - Vector3.new(1617.74 - (1381 + 178), 3.8 + 0, 10.4 + 2)).magnitude > (4 + 5)) then
					v17(CFrame.new(199.74 - 141, 2.8 + 1, 482.4 - (381 + 89)));
					wait(0.1 + 0);
					continue;
				end
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\47\165\140\12\14\176\184\31\21\165\141\31\14\172", "\109\122\213\232"), v109, LUAOBFUSACTOR_DECRYPT_STR_0("\205\209\176\49\227\242", "\80\142\151\194"), CFrame.new(43 + 20, 6.9 - 2, -(1157 - (1074 + 82)), -(1 - 0), 1784 - (214 + 1570), 1455 - (990 + 465), 0 + 0, 1 + 0, 0 + 0, 0 - 0, 1726 - (1668 + 58), -(627 - (512 + 114))));
			end
			if v112 then
				if (v112.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\33\201\111\99\19\195\121", "\44\99\166\23")) then
					v107 = true;
					if ((v10.Position - Vector3.new(151.74 - 93, 5.8 - 2, 41.4 - 29)).magnitude > (5 + 4)) then
						v17(CFrame.new(11.740000000000002 + 47, 3.8 + 0, 40.4 - 28));
						wait(1994.1 - (109 + 1885));
						continue;
					end
					v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\95\251\38\37\54\134\115\239", "\196\28\151\73\86\83"), v112);
				elseif ((tick() - v28) > (1469.8 - (1269 + 200))) then
					v107 = true;
					if ((v10.Position - Vector3.new(110.74000000000001 - 52, 818.8 - (98 + 717), 838.4 - (802 + 24))).magnitude > (15 - 6)) then
						v17(CFrame.new(72.74000000000001 - 14, 1.7999999999999998 + 2, 10.4 + 2));
						wait(0.1 + 0);
						continue;
					end
					v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\198\19\45\17\150\93\40\100\252\19\44\2\150\65", "\22\147\99\73\112\226\56\120"), v112, LUAOBFUSACTOR_DECRYPT_STR_0("\155\83\240\244\128\189", "\237\216\21\130\149"), CFrame.new(15.200000000000003 + 53, 11.4 - 7, v7:NextNumber(-(9 - 6), -(1 + 1)), -(1 + 0), 0 + 0, 0 + 0, 0 + 0, 1434 - (797 + 636), 0 - 0, 1619 - (1427 + 192), 0 + 0, -(2 - 1)));
					v28 = tick();
				end
			end
			if (v110 and not v111) then
				v107 = true;
				if ((v10.Position - Vector3.new(53.74 + 5, 2.8 + 1, 338.4 - (192 + 134))).magnitude > (1285 - (316 + 960))) then
					v17(CFrame.new(33.74 + 25, 3.8 + 0, 12.4 + 0));
					wait(0.1 - 0);
					continue;
				end
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\183\94\91\94\164\204\110\144\65\79\90\162\221\71", "\62\226\46\63\63\208\169"), v110, LUAOBFUSACTOR_DECRYPT_STR_0("\198\63\71\130\18\8", "\62\133\121\53\227\127\109\79"), CFrame.new(v7:NextNumber(613.5 - (83 + 468), 1876.5 - (1202 + 604)), 13.5 - 10, v7:NextNumber(18 - 7, 69 - 44)));
				wait();
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\63\4\55\251\244\161\186", "\194\112\116\82\149\182\206"), v110);
			end
			if (v111 and v108) then
				v107 = true;
				if ((v10.Position - Vector3.new(383.74 - (45 + 280), 3.8 + 0, 11.4 + 1)).magnitude > (4 + 5)) then
					v17(CFrame.new(33.74 + 25, 1.7999999999999998 + 2, 21.4 - 9));
					wait(1911.1 - (340 + 1571));
					continue;
				end
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\12\184\72\25\212\231\62\43\167\92\29\210\246\23", "\110\89\200\44\120\160\130"), v108, LUAOBFUSACTOR_DECRYPT_STR_0("\138\205\72\78\76\88\62\73", "\45\203\163\43\38\35\42\91"), true);
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\231\149\216\34\147\172\100\192\138\204\38\149\189\77", "\52\178\229\188\67\231\201"), v111, LUAOBFUSACTOR_DECRYPT_STR_0("\0\79\83\12\248\78\38\37", "\67\65\33\48\100\151\60"), true);
				wait();
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\234\247\170\217\231\218\215\188\215\227\218\245\186\193", "\147\191\135\206\184"), v108, LUAOBFUSACTOR_DECRYPT_STR_0("\167\14\180\192\213\86", "\210\228\72\198\161\184\51"), v111.CFrame + Vector3.new(0 + 0, -(1774 - (1733 + 39)), 0 - 0));
				wait();
				v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\23\90\224\25\116\192\6\64\233\10\114\250\57\107\252\8", "\174\86\41\147\112\19"), v111, v108);
			end
			if v107 then
				wait(1034.5 - (125 + 909));
			else
				break;
			end
		else
			break;
		end
	end
	if v4 then
		local v96 = v21(workspace);
		if ((#v96 > (1949 - (1096 + 852))) or (v96[1 + 0] and v6(v96[1 - 0].Handle, LUAOBFUSACTOR_DECRYPT_STR_0("\99\81\221", "\203\59\96\237\107\69\111\113")))) then
			if ((v10.Position - Vector3.new(53.45 + 1, 516.02 - (409 + 103), -(251 - (46 + 190)))).magnitude > (104 - (51 + 44))) then
				v17(CFrame.new(16.450000000000003 + 38, 1321.02 - (1114 + 203), -(741 - (228 + 498))));
				wait(0.1 + 0);
			end
			for v127 = 1 + 0, #v96 do
				if (v96[v127].Parent == workspace) then
					v11:EquipTool(v96[v127]);
					wait();
				end
			end
			wait(663.3 - (174 + 489));
			local v117 = v21(v9);
			for v128 = 2 - 1, #v117 do
				v117[v128].Parent = v5.Backpack;
			end
			wait(1905.1 - (830 + 1075));
			if (v6(v9, LUAOBFUSACTOR_DECRYPT_STR_0("\22\31\171\233\37\216\214\42\18", "\183\68\118\204\129\81\144")) and v6(v9.RightHand, LUAOBFUSACTOR_DECRYPT_STR_0("\60\164\119\236\31\165\28\164\96", "\226\110\205\16\132\107"))) then
				v9.RightHand.RightGrip:Destroy();
			end
		end
		local v97 = v21(v5.Backpack);
		if ((#v97 >= v0.deliver_at) and (#v97 > (524 - (303 + 221))) and ((tick() - v30) > (1299 - (231 + 1038)))) then
			table.sort(v97, function(v131, v132)
				v131, v132 = tostring(v131), tostring(v132);
				if ((v131:sub(1 + 0, 1163 - (171 + 991)) == "B") and (v132:sub(4 - 3, 2 - 1) == "B")) then
					return v131 < v132;
				end
				return v131 > v132;
			end);
			local v118 = false;
			for v133 = 2 - 1, #v97 do
				if not v4 then
					break;
				end
				v11.Sit = false;
				local v135 = v97[v133];
				local v136 = v22(v135.Name);
				local v137 = v136.Position;
				if v136 then
					if ((v136.Position - v10.Position).Magnitude > (8 + 1)) then
						v17(v136.CFrame + Vector3.new(0 - 0, 19 - 12, 0 - 0));
						if ((v136.Parent == nil) or ((v136.Position - v137).Magnitude > (3 - 2))) then
							v136 = v22(v135.Name) or v136;
							v17(v136.CFrame + Vector3.new(1248 - (111 + 1137), 165 - (91 + 67), 0 - 0));
						end
						pcall(function()
							v135.Parent = v9;
						end);
						wait(1.2 + 0);
						local v152 = v21(v9);
						for v156 = 524 - (423 + 100), #v152 do
							if (v152[v156] ~= v135) then
								v152[v156].Parent = v5.Backpack;
							end
						end
						wait(1 + 1);
						v118 = false;
					else
						if v118 then
							wait(0.2 - 0);
						else
							wait(0.7 + 0);
						end
						pcall(function()
							v135.Parent = v9;
						end);
						wait();
						v118 = true;
					end
				end
			end
			v30 = tick();
		end
	end
	if v3 then
		local v98 = false;
		for v113, v114 in pairs(v0) do
			if ((type(v114) == LUAOBFUSACTOR_DECRYPT_STR_0("\229\214\237\219\68\249", "\33\139\163\128\185")) and (v114 <= v0.refill_at)) then
				v98 = true;
				break;
			end
		end
		if v98 then
			local v119 = v10.CFrame;
			local v120 = false;
			local v121 = 771 - (326 + 445);
			local v122;
			while v3 do
				local v138 = true;
				local v139 = workspace.AllSupplyBoxes:GetChildren();
				for v142 = 4 - 3, 4 - 2 do
					local v143 = true;
					local v144 = 0 - 0;
					for v145, v146 in ipairs(v27) do
						local v147 = v26[v146.BrickColor.Name];
						if (v0[v147] and (v0[v147] < v0.refill_end)) then
							local v153 = 711 - (530 + 181);
							if (#v139 > (911 - (614 + 267))) then
								for v164 = 33 - (19 + 13), #v139 do
									local v165 = v139[v164];
									if ((v26[v165.BrickColor.Name] == v147) and (v165.Anchored == false) and (v165.Position.Z < -(1529 - 589))) then
										v153 = v153 + (2 - 1);
									end
								end
							end
							if (v153 < (5 - 3)) then
								if v143 then
									v143 = false;
									v17(v146.CFrame + Vector3.new(0 + 0, 4 - 1, 3.5 - 1));
									wait(1812.1 - (1293 + 519));
								end
								if not v3 then
									break;
								end
								v10.CFrame = v146.CFrame + Vector3.new(0 - 0, 7 - 4, 0 - 0);
								wait(0.1 - 0);
								v144 = v144 + (2 - 1);
							end
							v138 = false;
						end
					end
					wait(0.2 + 0);
					if ((v142 == (1 + 0)) and (v144 < (6 - 3))) then
						wait(0.6 + 0);
					end
				end
				if (v138 or not v3) then
					break;
				end
				v17(CFrame.new(3 + 5, 8.4 + 4, -(2116 - (709 + 387))));
				if not v3 then
					break;
				end
				if (v120 and ((v122.Position.X > (1900 - (673 + 1185))) or ((tick() - v121) > (17 - 11)))) then
					v120 = false;
					if (v122.Position.X < (134 - 92)) then
						v17(CFrame.new(32.5 - 12, 6 + 2, -(27 + 8)));
						wait(0.1 - 0);
						local v154 = workspace.AllSupplyBoxes:GetChildren();
						for v158 = 1 + 0, #v154 do
							local v159 = v154[v158];
							if ((v159.Anchored == false) and (v159.Position.Z > -(109 - 54))) then
								v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\98\72\0\223\67\93\52\204\88\72\1\204\67\65", "\190\55\56\100"), v159, LUAOBFUSACTOR_DECRYPT_STR_0("\117\137\46\31\30\230", "\147\54\207\92\126\115\131"), CFrame.new(v7:NextNumber(0 - 0, 1920 - (446 + 1434)), v7:NextNumber(-(1293 - (1040 + 243)), -(89 - 59)), -(1917 - (559 + 1288))));
								wait();
							end
						end
						wait(1931.1 - (609 + 1322));
					end
				end
				if not v120 then
					if (v10.Position.Z > -(1354 - (13 + 441))) then
						v17(CFrame.new(29 - 21, 31.4 - 19, -(5080 - 4060)));
					end
					wait(0.1 + 0);
					v122 = nil;
					local v148 = 0 - 0;
					local v149 = workspace.AllSupplyBoxes:GetChildren();
					for v150 = 1 + 0, #v149 do
						local v151 = v149[v150];
						if ((v151.Anchored == false) and (v151.Position.Z < -(412 + 528)) and v26[v151.BrickColor.Name] and v0[v26[v151.BrickColor.Name]] and (v0[v26[v151.BrickColor.Name]] < v0.refill_end)) then
							v151.CFrame = CFrame.new((112 - 74) - ((3.3 + 1) * math.floor(v148 / (3 - 1))), 4 + 1, -(4 + 3) - ((4 + 1) * (v148 % (2 + 0))));
							v8:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\56\33\49\124\25\123\61\35\58\109\8\108\25\40", "\30\109\81\85\29\109"), v151, LUAOBFUSACTOR_DECRYPT_STR_0("\220\87\70\183\59\219", "\156\159\17\52\214\86\190"), v151.CFrame);
							v122 = v151;
							v148 = v148 + 1 + 0;
							if (v148 > (446 - (153 + 280))) then
								break;
							end
						end
					end
					if v122 then
						v120 = true;
						v121 = tick();
					end
				end
			end
		end
	end
end
