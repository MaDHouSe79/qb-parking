-- Impound vehicle
function StolenVehicle(entity)
    for i = 1, #LocalVehicles do
		if entity == LocalVehicles[i].entity then
			QBCore.Functions.TriggerCallback("qb-parking:server:stolen", function(callback)
				if callback.status then
					FreezeEntityPosition(LocalVehicles[i].entity, false)
					table.remove(LocalVehicles, i)
				end
			end, LocalVehicles[i])
		end
    end
end
