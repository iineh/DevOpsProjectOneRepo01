param vnetName string
param location string = 'westus'
param addressSpace string = '10.0.0.0/16'
param subnet1Name string = 'subnet1'
param subnet1Prefix string = '10.0.1.0/24'
param subnet2Name string = 'subnet2'
param subnet2Prefix string = '10.0.2.0/24'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressSpace
      ]
    }
    subnets: [
      {
        name: subnet1Name
        properties: {
          addressPrefix: subnet1Prefix
        }
      }
      {
        name: subnet2Name
        properties: {
          addressPrefix: subnet2Prefix
        }
      }
    ]
  }
}
