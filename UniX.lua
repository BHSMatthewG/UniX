local UniX = {
	UniData = {};
};

function UniX:Add(tName, iName, iValue)
	if (UniX.UniData[tName] == nil) then
		UniX.UniData[tName] = {};
	end
	
	table.insert(UniX.UniData[tName], {iName, iValue});
end

function UniX:Decode(tName, iEncrypted)
	local t = UniX.UniData[tName];
	if (t == nil) then
		return "(invalid lcall) tName " .. tName .. " does not exist in UniX.";
	else
		for x,y in pairs(t) do
			if (y[1] == iEncrypted) then
				return y[2];
			end
		end
	end
end

function UniX:Encode(tName, iValue)
	local t = UniX.UniData[tName];
	if (t == nil) then
		return "(invalid lcall) tName " .. tName .. " does not exist in UniX.";
	else
		for x,y in pairs(t) do
			if (y[2] == iValue) then
				return y[1];
			end
		end
	end
end

return UniX;
