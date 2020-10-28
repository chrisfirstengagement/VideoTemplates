Param (
	[ValidateNotNullOrEmpty()][String]$resourceGroupName,
	[ValidateNotNullOrEmpty()][String]$location,
	[ValidateNotNullOrEmpty()][String]$workingDirectory
)

$templateFile = $workingDirectory + "/App_Service.json"
$templateParameterFile = $workingDirectory + "/App_Service.Parameters.json"

New-AzResourceGroup -Name $resourceGroupName -Location $location -Force
New-AzResourceGroupDeployment -Name "ExampleDeployment" `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $templateParameterFile `
  -Force