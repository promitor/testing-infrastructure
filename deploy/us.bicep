param location string = resourceGroup().location

resource workflow 'Microsoft.Logic/workflows@2017-07-01' = {
  name: 'promitor-testing-resource-discovery-us-1'
  location: location
  tags: {
    region: 'USA'
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
