param location string = resourceGroup().location
param resourceNamePrefix string = 'promitor-testing-resource-${geo}'
param region string = 'USA'
param geo string = 'us'

resource workflow 'Microsoft.Logic/workflows@2019-05-01' = {
  name: 'promitor-testing-resource-${geo}-1'
  location: location
  tags: {
    region: region
    app: 'promitor-resource-discovery-tests'
  }
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {}
      triggers: {}
      actions: {}
      outputs: {}
    }
    parameters: {}
  }
}

resource serverlessAppPlan 'Microsoft.Web/serverfarms@2021-01-15' = {
  name: '${resourceNamePrefix}-serverless-app-plan'
  location: location
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
    size: 'Y1'
    family: 'Y'
  }
  kind: 'functionapp'
  properties: {
    reserved: true
  }
}

resource functionApp 'Microsoft.Web/sites@2021-01-15' = {
  name: '${resourceNamePrefix}-serverless-functions'
  location: location
  kind: 'functionapp'
  properties: {
    serverFarmId: serverlessAppPlan.id
    reserved: true
    keyVaultReferenceIdentity: 'SystemAssigned'
  }
}
