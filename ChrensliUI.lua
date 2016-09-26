function ChrensliUIWindow_OnLoad()
    ChrensliUIFrame:RegisterForDrag("LeftButton");
end

function ChrensliUIWindow_OnDragStart()
    ChrensliUIFrame:StartMoving();
end

function ChrensliUIWindow_OnDragStop()
    ChrensliUIFrame:StopMovingOrSizing();
end

SLASH_CHRENSLIUI1 = '/chrensliui';
SlashCmdList["CHRENSLIUI"] = function(arg1)
    if arg1 == nil then
        arg1 = '';
    end
	arg1 = string.lower(arg1); --converts upper case to lower case
	if ChrensliUIFrame:IsShown() then
		ChrensliUIFrame:Hide();
	else
		ChrensliUIFrame:Show();
	end
end