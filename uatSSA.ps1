# Get the correct Search Service Application object
$ssa = Get-SPEnterpriseSearchServiceApplication | Where-Object { $_.Name -like "*Search*" }

# Now confirm the object type (should not say [String])
$ssa.GetType()

# Then check or set the SPS3 property
$ssa.GetProperty("SPS3ServiceInstanceUri")

# T
$ssa.SetProperty("SPS3ServiceInstanceUri","sps3s://devprofile.ldn.rtad.local")
