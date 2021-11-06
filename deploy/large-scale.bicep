param resourceNamePrefix string = 'promitor-scale-resources-'

resource workflowInNorthEurope 'Microsoft.Logic/workflows@2019-05-01' = [for i in range(1, 200): {
  name: '${resourceNamePrefix}-workflow-ne-${i}'
  location: 'northeurope'
  tags: {
    region: 'Europe'
    app: 'promitor-large-scale-testing'
    instance: '${resourceNamePrefix}-workflow-we-${i}'
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
}]

resource workflowInWestEurope 'Microsoft.Logic/workflows@2019-05-01' = [for i in range(1, 200): {
  name: '${resourceNamePrefix}-workflow-we-${i}'
  location: 'westeurope'
  tags: {
    region: 'Europe'
    app: 'promitor-large-scale-testing'
    instance: '${resourceNamePrefix}-workflow-we-${i}'
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
}]

resource workflowInEastUs 'Microsoft.Logic/workflows@2019-05-01' = [for i in range(1, 200): {
  name: '${resourceNamePrefix}-workflow-ue-${i}'
  location: 'eastus'
  tags: {
    region: 'North America'
    app: 'promitor-large-scale-testing'
    instance: '${resourceNamePrefix}-workflow-we-${i}'
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
}]

resource workflowInEastAsia 'Microsoft.Logic/workflows@2019-05-01' = [for i in range(1, 200): {
  name: '${resourceNamePrefix}-workflow-ea-${i}'
  location: 'eastasia'
  tags: {
    region: 'Asia'
    app: 'promitor-large-scale-testing'
    instance: '${resourceNamePrefix}-workflow-we-${i}'
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
}]

resource workflowInEastAustralia 'Microsoft.Logic/workflows@2019-05-01' = [for i in range(1, 200): {
  name: '${resourceNamePrefix}-workflow-we-${i}'
  location: 'australiaeast'
  tags: {
    region: 'Australia'
    app: 'promitor-large-scale-testing'
    instance: '${resourceNamePrefix}-workflow-we-${i}'
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
}]
