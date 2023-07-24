npm installl
npm install -g hana-cli
hana-cli createModule
cds build
cd db
hana-cli copy2DefaultEnv
cd ..
npm install
cds bind -2 <DB Module>:SharedDevKey
cds watch --profile hybrid