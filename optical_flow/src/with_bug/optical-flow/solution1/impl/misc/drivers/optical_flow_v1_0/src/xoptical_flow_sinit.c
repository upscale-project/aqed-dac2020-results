// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xoptical_flow.h"

extern XOptical_flow_Config XOptical_flow_ConfigTable[];

XOptical_flow_Config *XOptical_flow_LookupConfig(u16 DeviceId) {
	XOptical_flow_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XOPTICAL_FLOW_NUM_INSTANCES; Index++) {
		if (XOptical_flow_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XOptical_flow_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XOptical_flow_Initialize(XOptical_flow *InstancePtr, u16 DeviceId) {
	XOptical_flow_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XOptical_flow_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XOptical_flow_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

