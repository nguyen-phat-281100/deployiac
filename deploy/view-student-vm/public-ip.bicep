param publicIpName string
param location string
param publicIpSku string
param publicIPAllocationMethod string
param dnsLabelPrefix string

resource pip 'Microsoft.Network/publicIPAddresses@2021-02-01' = {
  name: publicIpName
  location: location
  sku: {
    name: publicIpSku
  }
  properties: {
    publicIPAllocationMethod: publicIPAllocationMethod
    dnsSettings: {
      domainNameLabel: dnsLabelPrefix
    }
  }
}

output id string = pip.id
output properties object = pip.properties

