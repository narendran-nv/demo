npm installl
npm install -g hana-cli
hana-cli createModule
cds build
cd db

cds bind -2 <DB Module>:SharedDevKey
cds watch --profile hybrid

[XSUAA]

cds compile srv/ --to xsuaa > xs-security.json
cf create-service xsuaa application <App Name>-auth -c xs-security.json
cf create-service-key <App Name>-auth default
cds bind -2 <XSUAA Module>:default
cds watch --profile hybrid

[]

cd app
npm install -save passport @sap/xssec @sap/xsenv @sap/audit-logging
cd ..

cds compile srv/ --to xsuaa > xs-security.json
cf create-service xsuaa application <XSUAA NAME> -c xs-security.json
cf create-service-key <XSUAA NAME> default 
cds bind -2 <XSUAA NAME>:default

[]

cds watch --profile hybrid
cds bind --exec -- npm start --prefix app
    
    [move the section after -- to package.json]

        cds bind --exec -- npm deploy-app