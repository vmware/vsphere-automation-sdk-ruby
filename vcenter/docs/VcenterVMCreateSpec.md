# VSphereAutomation::VCenter::VcenterVMCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | 
**name** | **String** | Virtual machine name. If unset, a default name will be generated by the server. | [optional] 
**placement** | [**VcenterVMPlacementSpec**](VcenterVMPlacementSpec.md) |  | [optional] 
**hardware_version** | [**VcenterVmHardwareVersion**](VcenterVmHardwareVersion.md) |  | [optional] 
**boot** | [**VcenterVmHardwareBootCreateSpec**](VcenterVmHardwareBootCreateSpec.md) |  | [optional] 
**boot_devices** | [**Array&lt;VcenterVmHardwareBootDeviceEntryCreateSpec&gt;**](VcenterVmHardwareBootDeviceEntryCreateSpec.md) | Boot device configuration. If unset, a server-specific boot sequence will be used. | [optional] 
**cpu** | [**VcenterVmHardwareCpuUpdateSpec**](VcenterVmHardwareCpuUpdateSpec.md) |  | [optional] 
**memory** | [**VcenterVmHardwareMemoryUpdateSpec**](VcenterVmHardwareMemoryUpdateSpec.md) |  | [optional] 
**disks** | [**Array&lt;VcenterVmHardwareDiskCreateSpec&gt;**](VcenterVmHardwareDiskCreateSpec.md) | List of disks. If unset, a single blank virtual disk of a guest-specific size will be created on the same storage as the virtual machine configuration, and will use a guest-specific host bus adapter type. If the guest-specific size is 0, no virtual disk will be created. | [optional] 
**nics** | [**Array&lt;VcenterVmHardwareEthernetCreateSpec&gt;**](VcenterVmHardwareEthernetCreateSpec.md) | List of Ethernet adapters. If unset, no Ethernet adapters will be created. | [optional] 
**cdroms** | [**Array&lt;VcenterVmHardwareCdromCreateSpec&gt;**](VcenterVmHardwareCdromCreateSpec.md) | List of CD-ROMs. If unset, no CD-ROM devices will be created. | [optional] 
**floppies** | [**Array&lt;VcenterVmHardwareFloppyCreateSpec&gt;**](VcenterVmHardwareFloppyCreateSpec.md) | List of floppy drives. If unset, no floppy drives will be created. | [optional] 
**parallel_ports** | [**Array&lt;VcenterVmHardwareParallelCreateSpec&gt;**](VcenterVmHardwareParallelCreateSpec.md) | List of parallel ports. If unset, no parallel ports will be created. | [optional] 
**serial_ports** | [**Array&lt;VcenterVmHardwareSerialCreateSpec&gt;**](VcenterVmHardwareSerialCreateSpec.md) | List of serial ports. If unset, no serial ports will be created. | [optional] 
**sata_adapters** | [**Array&lt;VcenterVmHardwareAdapterSataCreateSpec&gt;**](VcenterVmHardwareAdapterSataCreateSpec.md) | List of SATA adapters. If unset, any adapters necessary to connect the virtual machine&#39;s storage devices will be created; this includes any devices that explicitly specify a SATA host bus adapter, as well as any devices that do not specify a host bus adapter if the guest&#39;s preferred adapter type is SATA. | [optional] 
**scsi_adapters** | [**Array&lt;VcenterVmHardwareAdapterScsiCreateSpec&gt;**](VcenterVmHardwareAdapterScsiCreateSpec.md) | List of SCSI adapters. If unset, any adapters necessary to connect the virtual machine&#39;s storage devices will be created; this includes any devices that explicitly specify a SCSI host bus adapter, as well as any devices that do not specify a host bus adapter if the guest&#39;s preferred adapter type is SCSI. The type of the SCSI adapter will be a guest-specific default type. | [optional] 
**storage_policy** | [**VcenterVMStoragePolicySpec**](VcenterVMStoragePolicySpec.md) |  | [optional] 


