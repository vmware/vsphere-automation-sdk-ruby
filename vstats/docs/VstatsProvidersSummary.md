# VSphereAutomation::VStats::VstatsProvidersSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Provider identifier. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Provider. | 
**id_value** | **String** | The ID given to the provider by its respective inventory. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 
**metadata** | **String** | Schema-less metadata with extra information for the provider. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. As supplied by the provider. | [optional] 
**scheme** | **String** | An optional designation of the scheme. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the provider is not designating a specific scheme. | [optional] 
**tracking_sn** | **Integer** | Timestamp which is obtained when querying counters from a provider and is used as since parameter when new counter listing is needed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. {term unset} if no timestamp has been obtained yet. | [optional] 
**type** | **String** | Provider type. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 

