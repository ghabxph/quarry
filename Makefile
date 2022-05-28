DEPLOY := /home/gabriel/files/projects/hawksight/hs-dapp/target/deploy
IDL := /home/gabriel/files/projects/hawksight/hs-dapp/sdk-node/src/idls

build:
	@anchor build -p quarry_mine
	@anchor build -p quarry_merge_mine
	@anchor build -p quarry_mint_wrapper
	@mv target/deploy/quarry_mine.so ${DEPLOY}
	@mv target/deploy/quarry_merge_mine.so ${DEPLOY}
	@mv target/deploy/quarry_mint_wrapper.so ${DEPLOY}
	@mv target/types/quarry_mine.ts ${IDL}
	@mv target/types/quarry_merge_mine.ts ${IDL}
	@mv target/types/quarry_mint_wrapper.ts ${IDL}