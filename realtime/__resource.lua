resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_script "rt_server.lua"
client_script "rt_client.lua"

server_exports
({
	"SetClientRender",
	"IsClientRendering"
})