#ifndef PORTABLE_WORDSIZES
#ifdef __MW_TARGET_USE_HARDWARE_RESOURCES_H__
#ifndef __MW_TARGET_HARDWARE_RESOURCES_H__
#define __MW_TARGET_HARDWARE_RESOURCES_H__

#define MW_MULTI_TASKING_MODE 1

#define MW_USECODERTARGET 1
#define MW_TARGETHARDWARE ZedBoard
#define MW_CONNECTIONINFO_TCPIP_IPADDRESS codertarget.zynq.HardwareParameterInfo.getDeviceAddress
#define MW_CONNECTIONINFO_TCPIP_PORT 17725
#define MW_CONNECTIONINFO_TCPIP_VERBOSE 0
#define MW_CONNECTIONINFO_TCPIP_RUNINBACKGROUND 1
#define MW_CONNECTIONINFO_XCPONTCPIP_IPADDRESS codertarget.zynq.HardwareParameterInfo.getDeviceAddress
#define MW_CONNECTIONINFO_XCPONTCPIP_PORT 17725
#define MW_CONNECTIONINFO_XCPONTCPIP_VERBOSE 0
#define MW_EXTMODE_CONFIGURATION TCP/IP
#define MW_EXTMODE_RUNNING on
#define MW_RTOS Linux
#define MW_RTOSBASERATETASKPRIORITY 40
#define MW_DETECTTASKOVERRUNS 0.000000
#define MW_SCHEDULER_INTERRUPT_SOURCE 0
#define MW_BOARDPARAMETERS_DEVICEADDRESS 169.254.0.2
#define MW_BOARDPARAMETERS_USERNAME root
#define MW_BOARDPARAMETERS_PASSWORD root
#define MW_RUNTIME_BUILDACTION 2
#define MW_CLOCKING_CPUCLOCKRATEMHZ 1000
#define MW_DATAVERSION 2016.02

#endif /* __MW_TARGET_HARDWARE_RESOURCES_H__ */

#endif

#endif
