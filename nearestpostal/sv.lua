-- version check
Citizen.CreateThread(
	function()
		local vRaw = LoadResourceFile(GetCurrentResourceName(), 'version.json')
		if vRaw and config.versionCheck then
			local v = json.decode(vRaw)
			PerformHttpRequest(
				'https://raw.githubusercontent.com/Hakko-Development/HD_SatMap/master/version.json',
				function(code, res, headers)
					if code == 200 then
						local rv = json.decode(res)
						if rv.version ~= v.version then
							print(
								([[

-------------------------------------------------------
HD Postals
UPDATE: %s AVAILABLE
CHANGELOG: %s
-------------------------------------------------------
]]):format(
									rv.version,
									rv.changelog
								)
							)
						end
					else
						print('hd_postals unable to check version')
					end
				end,
				'GET'
			)
		end
	end
)
