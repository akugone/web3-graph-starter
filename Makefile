regenerate: 
	npm run codegen
	graph build --network localhost
	npm run remove-local
	npm run create-local
	npm run deploy-local

sub:
	npm run remove-local
	npm run create-local
	npm run deploy-local

# To launch these commands, you need first to auth with the graph-cli and the subgraph
## Mumbai hosted subgraph: https://thegraph.com/hosted-service/subgraph/akugone/starter
deploy-mumbai: 
	graph codegen
	graph build --network mumbai
	graph auth --product hosted-service xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	graph deploy --product hosted-service akugone/starter-mumbai

## Mumbai hosted subgraph: https://thegraph.com/hosted-service/subgraph/beetogether/beetogether-polygon
deploy-polygon: 
	graph codegen
	graph build --network polygon
	graph deploy --product hosted-service beetogether/beetogether-polygon

