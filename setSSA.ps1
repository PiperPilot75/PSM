# DO NOT RUN AS ONE SCRIPT

# STEP 1
# On the App server (Search host):
$ssa = Get-SPEnterpriseSearchServiceApplication
$ssa.SetProperty("SPS3ServiceInstanceUri", "sps3s://devprofile.ldn.rtad.local")

# STEP 2
# Then on every server hosting Search components (App + any WFEs with crawl/query):
Restart-Service SPSearchHostController
Restart-Service SPTimerV4

# STEP 3
# Wait 2–3 minutes, then confirm the property:

$ssa.GetProperty("SPS3ServiceInstanceUri")
