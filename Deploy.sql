-- Git Repository Object Creation:
CREATE OR REPLACE GIT REPOSITORY GOVERNANCE.GIT_INTEGRATIONS.AGENT_SNOWFLAKE_POC
  ORIGIN = 'https://github.com/baumgartnerdataprojects/agent-snowflake-poc.git'
  API_INTEGRATION = API_INT_GITHUB_GOVERNANCE;


ALTER GIT REPOSITORY GOVERNANCE.GIT_INTEGRATIONS.AGENT_SNOWFLAKE_POC FETCH;

-- Agent Creation:
CREATE OR REPLACE AGENT GOVERNANCE.AGENTS.JAFFLE_SHOP_AGENT
  COMMENT = 'Jaffle Shop customer analytics agent — portfolio demo.'
  PROFILE = '{"display_name": "Jaffle Shop Analyst"}'
  FROM @GOVERNANCE.GIT_INTEGRATIONS.AGENT_SNOWFLAKE_POC/branches/main/cortex_project/;