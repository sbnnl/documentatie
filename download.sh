TEST_RESULTS_BUCKET="https://wsk-valtimo-acc-cucumber-test-results-f1403diq.s3.eu-central-1.amazonaws.com"
EXECUTIONS_PATH=".temp/executions/main"

rm -rf ${EXECUTIONS_PATH}
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/borgstelling-aanvragen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/borgstelling-aanvullen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/borgstelling-beeindigen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/borgstelling-uitbetalen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/herfiatteren.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/portefeuille-overnemen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/pro-forma-aanvragen.json
curl --create-dirs -O --output-dir ${EXECUTIONS_PATH} ${TEST_RESULTS_BUCKET}/main/docs/100_producten/100_borgstelling/pro-forma-borgstelling-gebruiken.json