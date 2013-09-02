.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x35

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x37

.field static final TRANSACTION_cancelBondProcess:I = 0x1a

.field static final TRANSACTION_cancelDiscovery:I = 0x12

.field static final TRANSACTION_cancelPairingUserInput:I = 0x31

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x17

.field static final TRANSACTION_closeGattLeConnection:I = 0x67

.field static final TRANSACTION_closeRemoteGattService:I = 0x64

.field static final TRANSACTION_connectChannelToSink:I = 0x4c

.field static final TRANSACTION_connectChannelToSource:I = 0x4b

.field static final TRANSACTION_connectHeadset:I = 0x38

.field static final TRANSACTION_connectInputDevice:I = 0x3b

.field static final TRANSACTION_connectPanDevice:I = 0x47

.field static final TRANSACTION_createBond:I = 0x18

.field static final TRANSACTION_createBondOutOfBand:I = 0x19

.field static final TRANSACTION_deregisterCharacteristicsWatcher:I = 0x62

.field static final TRANSACTION_deregisterEl2capConnection:I = 0x54

.field static final TRANSACTION_disable:I = 0x7

.field static final TRANSACTION_disableDUN:I = 0x74

.field static final TRANSACTION_disconnectChannel:I = 0x4d

.field static final TRANSACTION_disconnectDUN:I = 0x73

.field static final TRANSACTION_disconnectHeadset:I = 0x39

.field static final TRANSACTION_disconnectInputDevice:I = 0x3c

.field static final TRANSACTION_disconnectPanDevice:I = 0x48

.field static final TRANSACTION_disconnectSap:I = 0x71

.field static final TRANSACTION_discoverCharacteristicResponse:I = 0x6c

.field static final TRANSACTION_discoverCharacteristics:I = 0x5c

.field static final TRANSACTION_discoverPrimaryByUuidResponse:I = 0x6a

.field static final TRANSACTION_discoverPrimaryResponse:I = 0x69

.field static final TRANSACTION_enable:I = 0x5

.field static final TRANSACTION_enableDUN:I = 0x75

.field static final TRANSACTION_enableNoAutoConnect:I = 0x6

.field static final TRANSACTION_fetchRemoteUuids:I = 0x29

.field static final TRANSACTION_findIncludedResponse:I = 0x6b

.field static final TRANSACTION_findInfoResponse:I = 0x6d

.field static final TRANSACTION_gattConnect:I = 0x59

.field static final TRANSACTION_gattConnectCancel:I = 0x5a

.field static final TRANSACTION_getAdapterConnectionState:I = 0x15

.field static final TRANSACTION_getAddress:I = 0x8

.field static final TRANSACTION_getBluetoothState:I = 0x4

.field static final TRANSACTION_getBondState:I = 0x1d

.field static final TRANSACTION_getCOD:I = 0xa

.field static final TRANSACTION_getCharacteristicProperties:I = 0x5e

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x4f

.field static final TRANSACTION_getConnectedInputDevices:I = 0x3d

.field static final TRANSACTION_getConnectedPanDevices:I = 0x45

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xf

.field static final TRANSACTION_getEffectiveAmpPolicy:I = 0x55

.field static final TRANSACTION_getGattServiceName:I = 0x5b

.field static final TRANSACTION_getGattServiceProperty:I = 0x5d

.field static final TRANSACTION_getGattServices:I = 0x58

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x51

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x50

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x3f

.field static final TRANSACTION_getInputDevicePriority:I = 0x41

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x3e

.field static final TRANSACTION_getMainChannelFd:I = 0x4e

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x44

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x46

.field static final TRANSACTION_getProfileConnectionState:I = 0x16

.field static final TRANSACTION_getRemoteAlias:I = 0x25

.field static final TRANSACTION_getRemoteClass:I = 0x27

.field static final TRANSACTION_getRemoteFeature:I = 0x2c

.field static final TRANSACTION_getRemoteL2capPsm:I = 0x2b

.field static final TRANSACTION_getRemoteName:I = 0x24

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x2a

.field static final TRANSACTION_getRemoteUuids:I = 0x28

.field static final TRANSACTION_getScanMode:I = 0xd

.field static final TRANSACTION_getTrustState:I = 0x33

.field static final TRANSACTION_getUuids:I = 0xc

.field static final TRANSACTION_isBluetoothDock:I = 0x34

.field static final TRANSACTION_isDiscovering:I = 0x13

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isHostPatchRequired:I = 0x72

.field static final TRANSACTION_isServiceRegistered:I = 0x2

.field static final TRANSACTION_isTetheringOn:I = 0x42

.field static final TRANSACTION_listBonds:I = 0x1c

.field static final TRANSACTION_notifyIncomingConnection:I = 0x3a

.field static final TRANSACTION_readByTypeResponse:I = 0x6e

.field static final TRANSACTION_readOutOfBandData:I = 0x14

.field static final TRANSACTION_readResponse:I = 0x6f

.field static final TRANSACTION_registerAppConfiguration:I = 0x49

.field static final TRANSACTION_registerCharacteristicsWatcher:I = 0x60

.field static final TRANSACTION_registerEl2capConnection:I = 0x53

.field static final TRANSACTION_registerGattAppConfiguration:I = 0x65

.field static final TRANSACTION_registerRssiUpdateWatcher:I = 0x20

.field static final TRANSACTION_registerService:I = 0x3

.field static final TRANSACTION_removeBond:I = 0x1b

.field static final TRANSACTION_removeServiceRecord:I = 0x36

.field static final TRANSACTION_sendConnectionStateChange:I = 0x52

.field static final TRANSACTION_sendIndication:I = 0x68

.field static final TRANSACTION_setBluetoothClass:I = 0x1f

.field static final TRANSACTION_setBluetoothTethering:I = 0x43

.field static final TRANSACTION_setCharacteristicProperty:I = 0x5f

.field static final TRANSACTION_setDesiredAmpPolicy:I = 0x56

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1e

.field static final TRANSACTION_setDiscoverableTimeout:I = 0x10

.field static final TRANSACTION_setInputDevicePriority:I = 0x40

.field static final TRANSACTION_setLEConnectionParams:I = 0x22

.field static final TRANSACTION_setName:I = 0xb

.field static final TRANSACTION_setPairingConfirmation:I = 0x2f

.field static final TRANSACTION_setPasskey:I = 0x2e

.field static final TRANSACTION_setPin:I = 0x2d

.field static final TRANSACTION_setRemoteAlias:I = 0x26

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x30

.field static final TRANSACTION_setScanMode:I = 0xe

.field static final TRANSACTION_setTrust:I = 0x32

.field static final TRANSACTION_setUseWifiForBtTransfers:I = 0x57

.field static final TRANSACTION_startDiscovery:I = 0x11

.field static final TRANSACTION_startRemoteGattService:I = 0x63

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x4a

.field static final TRANSACTION_unregisterGattAppConfiguration:I = 0x66

.field static final TRANSACTION_unregisterRssiUpdateWatcher:I = 0x21

.field static final TRANSACTION_updateCharacteristicValue:I = 0x61

.field static final TRANSACTION_updateLEConnectionParams:I = 0x23

.field static final TRANSACTION_writeResponse:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1649
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v16

    .line 54
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    .end local v16           #_result:Z
    :sswitch_2
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 68
    .local v3, _arg0:Landroid/os/ParcelUuid;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isServiceRegistered(Landroid/os/ParcelUuid;)Z

    move-result v16

    .line 69
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v16, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_2

    .line 70
    .restart local v16       #_result:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 75
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_3
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 84
    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .line 85
    .local v4, _arg1:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerService(Landroid/os/ParcelUuid;Z)Z

    move-result v16

    .line 86
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 81
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 84
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 87
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 92
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_4
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v16

    .line 94
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v16           #_result:I
    :sswitch_5
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v16

    .line 102
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v16, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 103
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 108
    .end local v16           #_result:Z
    :sswitch_6
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v16

    .line 110
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v16, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 111
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 116
    .end local v16           #_result:Z
    :sswitch_7
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 119
    .local v3, _arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v16

    .line 120
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v16, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 118
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 121
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 126
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 134
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v16

    .line 136
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 142
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getCOD()Ljava/lang/String;

    move-result-object v16

    .line 144
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 150
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v16

    .line 154
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v16, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 160
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v16

    .line 162
    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 168
    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v16

    .line 170
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v16           #_result:I
    :sswitch_e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v16

    .line 182
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v16, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 183
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 188
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v16

    .line 190
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 196
    .end local v16           #_result:I
    :sswitch_10
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v16

    .line 200
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v16, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 201
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 206
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v16

    .line 208
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v16, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 214
    .end local v16           #_result:Z
    :sswitch_12
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v16

    .line 216
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v16, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 222
    .end local v16           #_result:Z
    :sswitch_13
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v16

    .line 224
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v16, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 230
    .end local v16           #_result:Z
    :sswitch_14
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v16

    .line 232
    .local v16, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 238
    .end local v16           #_result:[B
    :sswitch_15
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v16

    .line 240
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v16           #_result:I
    :sswitch_16
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v16

    .line 250
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_17
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .line 260
    .local v3, _arg0:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v4

    .line 262
    .local v4, _arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 263
    .local v5, _arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v16

    .line 264
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v16, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 258
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 265
    .restart local v3       #_arg0:Z
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .restart local v5       #_arg2:Landroid/os/IBinder;
    .restart local v16       #_result:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 270
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :sswitch_18
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v16

    .line 274
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 275
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 280
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_19
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 286
    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 287
    .local v5, _arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v16

    .line 288
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v16, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 289
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 294
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v16

    .line 298
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v16, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 299
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 304
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v16

    .line 308
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v16, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 309
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 314
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v16

    .line 316
    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_1d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v16

    .line 326
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 332
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_1e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 338
    .restart local v4       #_arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 339
    .restart local v5       #_arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v16

    .line 340
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v16, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 346
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothClass(Ljava/lang/String;I)Z

    move-result v16

    .line 352
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v16, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 353
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 358
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_20
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v6, 0x1

    .line 367
    .local v6, _arg3:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->registerRssiUpdateWatcher(Ljava/lang/String;IIZ)Z

    move-result v16

    .line 368
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v16, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .line 369
    .restart local v6       #_arg3:Z
    .restart local v16       #_result:Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 374
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :sswitch_21
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterRssiUpdateWatcher(Ljava/lang/String;)Z

    move-result v16

    .line 378
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v16, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 379
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 384
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_22
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 390
    .local v4, _arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 392
    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 394
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 396
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 398
    .local v8, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 400
    .local v9, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 402
    .local v10, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 404
    .local v11, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 406
    .local v12, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, _arg10:I
    move-object/from16 v2, p0

    .line 407
    invoke-virtual/range {v2 .. v13}, Landroid/bluetooth/IBluetooth$Stub;->setLEConnectionParams(Ljava/lang/String;BBIIIIIIII)Z

    move-result v16

    .line 408
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v16, :cond_1b

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 409
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 414
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v16           #_result:Z
    :sswitch_23
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 420
    .restart local v4       #_arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 422
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 424
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 426
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 427
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->updateLEConnectionParams(Ljava/lang/String;BIIII)Z

    move-result v16

    .line 428
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v16, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 429
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 434
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_24
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 444
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_25
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 447
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 448
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 454
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 460
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v16, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 461
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 466
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_27
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 469
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v16

    .line 470
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 476
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_28
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v16

    .line 480
    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 482
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 486
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_29
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 490
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 491
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 497
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v5

    .line 498
    .local v5, _arg2:Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v16

    .line 499
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v16, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 494
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :cond_1e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 500
    .restart local v5       #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .restart local v16       #_result:Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 505
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :sswitch_2a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 509
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 510
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 515
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .line 516
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 513
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_21

    .line 522
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 526
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 527
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 532
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteL2capPsm(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .line 533
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 530
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_21
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_22

    .line 539
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 543
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 545
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 551
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 556
    .local v4, _arg1:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v16

    .line 557
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v16, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 558
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 563
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v16           #_result:Z
    :sswitch_2e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 568
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v16

    .line 569
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v16, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 570
    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .line 575
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_2f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v4, 0x1

    .line 580
    .local v4, _arg1:Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v16

    .line 581
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v16, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 579
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 582
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 587
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_30
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 590
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v16

    .line 591
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v16, :cond_26

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 592
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 597
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_31
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v16

    .line 601
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v16, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 602
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 607
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_32
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 611
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v4, 0x1

    .line 612
    .restart local v4       #_arg1:Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v16

    .line 613
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v16, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 611
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_29

    .line 614
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 619
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_33
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 622
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v16

    .line 623
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v16, :cond_2a

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 624
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 629
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_34
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v16

    .line 633
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v16, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 634
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 639
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_35
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 643
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 644
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 650
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 652
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 653
    .local v6, _arg3:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v16

    .line 654
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 647
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    .end local v16           #_result:I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2d

    .line 660
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_36
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 669
    .end local v3           #_arg0:I
    :sswitch_37
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 672
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 678
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    .line 679
    .local v4, _arg1:Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v16

    .line 680
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v16, :cond_2f

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 675
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_2d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .line 678
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .line 681
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .line 686
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_38
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v16

    .line 690
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v16, :cond_30

    const/4 v2, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 691
    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .line 696
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_39
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 699
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v16

    .line 700
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v16, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 701
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 706
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_3a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 710
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    const/4 v4, 0x1

    .line 711
    .restart local v4       #_arg1:Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v16

    .line 712
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v16, :cond_33

    const/4 v2, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 710
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_32
    const/4 v4, 0x0

    goto :goto_33

    .line 713
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 718
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_3b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    .line 721
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 726
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 727
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v16, :cond_35

    const/4 v2, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 724
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_34
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_35

    .line 728
    .restart local v16       #_result:Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_36

    .line 733
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    .line 736
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 741
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 742
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    if-eqz v16, :cond_37

    const/4 v2, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 739
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_37

    .line 743
    .restart local v16       #_result:Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .line 748
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v17

    .line 750
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 756
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 759
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 760
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 762
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 766
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    .line 769
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 774
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 775
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 772
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_38
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_39

    .line 781
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_40
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    .line 784
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 790
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 791
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .line 792
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    if-eqz v16, :cond_3a

    const/4 v2, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 787
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_39
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3a

    .line 793
    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_3a
    const/4 v2, 0x0

    goto :goto_3b

    .line 798
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_41
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 801
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 806
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 807
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 804
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_3b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3c

    .line 813
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_42
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v16

    .line 815
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v16, :cond_3c

    const/4 v2, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 816
    :cond_3c
    const/4 v2, 0x0

    goto :goto_3d

    .line 821
    .end local v16           #_result:Z
    :sswitch_43
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 824
    .local v3, _arg0:Z
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 823
    .end local v3           #_arg0:Z
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .line 830
    :sswitch_44
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 833
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 838
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 839
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 836
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_3e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3f

    .line 845
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_45
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v17

    .line 847
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 849
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 853
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_46
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 856
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 857
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 859
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 863
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_47
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 866
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 871
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 872
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    if-eqz v16, :cond_40

    const/4 v2, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 869
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_3f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_40

    .line 873
    .restart local v16       #_result:Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_41

    .line 878
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_48
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    .line 881
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 886
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_42
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 887
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v16, :cond_42

    const/4 v2, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 884
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_41
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_42

    .line 888
    .restart local v16       #_result:Z
    :cond_42
    const/4 v2, 0x0

    goto :goto_43

    .line 893
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_49
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    .line 896
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 902
    .local v3, _arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v4

    .line 903
    .local v4, _arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v16

    .line 904
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v16, :cond_44

    const/4 v2, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 899
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :cond_43
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_44

    .line 905
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .restart local v16       #_result:Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .line 910
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :sswitch_4a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    .line 913
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 918
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .line 919
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v16, :cond_46

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 916
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_45
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_46

    .line 920
    .restart local v16       #_result:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_47

    .line 925
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    .line 928
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 934
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 935
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 940
    .local v4, _arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .line 941
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v16, :cond_49

    const/4 v2, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 931
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_47
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_48

    .line 938
    :cond_48
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_49

    .line 942
    .restart local v16       #_result:Z
    :cond_49
    const/4 v2, 0x0

    goto :goto_4a

    .line 947
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 950
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 956
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    .line 957
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 963
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 964
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .line 965
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    if-eqz v16, :cond_4c

    const/4 v2, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 953
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4b

    .line 960
    :cond_4b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4c

    .line 966
    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_4c
    const/4 v2, 0x0

    goto :goto_4d

    .line 971
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_4d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 974
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 980
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 981
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 987
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 988
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .line 989
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    if-eqz v16, :cond_4f

    const/4 v2, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 977
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4e

    .line 984
    :cond_4e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4f

    .line 990
    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_4f
    const/4 v2, 0x0

    goto :goto_50

    .line 995
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_4e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    .line 998
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1004
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_51

    .line 1005
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 1010
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_52
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 1011
    .local v16, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    if-eqz v16, :cond_52

    .line 1013
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1019
    :goto_53
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_50
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_51

    .line 1008
    :cond_51
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_52

    .line 1017
    .restart local v16       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 1023
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_4f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v17

    .line 1025
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1027
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_50
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1034
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 1035
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1037
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_51
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    .line 1044
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1049
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 1050
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_53
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_54

    .line 1056
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_52
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    .line 1059
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1065
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1067
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1069
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1070
    .local v6, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1062
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    :cond_54
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_55

    .line 1076
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_53
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v3

    .line 1080
    .local v3, _arg0:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1081
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v16

    .line 1082
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_arg1:I
    .end local v16           #_result:I
    :sswitch_54
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1091
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->deregisterEl2capConnection(I)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1097
    .end local v3           #_arg0:I
    :sswitch_55
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1100
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getEffectiveAmpPolicy(I)I

    move-result v16

    .line 1101
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_56
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1111
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1112
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setDesiredAmpPolicy(II)Z

    move-result v16

    .line 1113
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    if-eqz v16, :cond_55

    const/4 v2, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1114
    :cond_55
    const/4 v2, 0x0

    goto :goto_56

    .line 1119
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_57
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    const/4 v3, 0x1

    .line 1122
    .local v3, _arg0:Z
    :goto_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setUseWifiForBtTransfers(Z)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1121
    .end local v3           #_arg0:Z
    :cond_56
    const/4 v3, 0x0

    goto :goto_57

    .line 1128
    :sswitch_58
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1132
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    .line 1133
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1138
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServices(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v16

    .line 1139
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    if-eqz v16, :cond_58

    const/4 v2, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_57
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_58

    .line 1140
    .restart local v16       #_result:Z
    :cond_58
    const/4 v2, 0x0

    goto :goto_59

    .line 1145
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_59
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1149
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 1153
    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 1155
    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1157
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1159
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1161
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1163
    .restart local v10       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1165
    .restart local v11       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1167
    .restart local v12       #_arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1169
    .restart local v13       #_arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1171
    .local v14, _arg11:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, _arg12:I
    move-object/from16 v2, p0

    .line 1172
    invoke-virtual/range {v2 .. v15}, Landroid/bluetooth/IBluetooth$Stub;->gattConnect(Ljava/lang/String;Ljava/lang/String;BBIIIIIIIII)I

    move-result v16

    .line 1173
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:B
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v14           #_arg11:I
    .end local v15           #_arg12:I
    .end local v16           #_result:I
    :sswitch_5a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->gattConnectCancel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 1185
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    if-eqz v16, :cond_59

    const/4 v2, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1186
    :cond_59
    const/4 v2, 0x0

    goto :goto_5a

    .line 1191
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_5b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1194
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1195
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1201
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_5c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristics(Ljava/lang/String;)Z

    move-result v16

    .line 1205
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    if-eqz v16, :cond_5a

    const/4 v2, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1206
    :cond_5a
    const/4 v2, 0x0

    goto :goto_5b

    .line 1211
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_5d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1215
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1217
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1219
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1223
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_5e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1227
    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1229
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1233
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_5f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1239
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1241
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v6, 0x1

    .line 1242
    .local v6, _arg3:Z
    :goto_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v16

    .line 1243
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v16, :cond_5c

    const/4 v2, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1241
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5c

    .line 1244
    .restart local v6       #_arg3:Z
    .restart local v16       #_result:Z
    :cond_5c
    const/4 v2, 0x0

    goto :goto_5d

    .line 1249
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :sswitch_60
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1253
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .line 1254
    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerCharacteristicsWatcher(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z

    move-result v16

    .line 1255
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    if-eqz v16, :cond_5d

    const/4 v2, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1256
    :cond_5d
    const/4 v2, 0x0

    goto :goto_5e

    .line 1261
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v16           #_result:Z
    :sswitch_61
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->updateCharacteristicValue(Ljava/lang/String;)Z

    move-result v16

    .line 1265
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    if-eqz v16, :cond_5e

    const/4 v2, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1266
    :cond_5e
    const/4 v2, 0x0

    goto :goto_5f

    .line 1271
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_62
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1274
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->deregisterCharacteristicsWatcher(Ljava/lang/String;)Z

    move-result v16

    .line 1275
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    if-eqz v16, :cond_5f

    const/4 v2, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1276
    :cond_5f
    const/4 v2, 0x0

    goto :goto_60

    .line 1281
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_63
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1285
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .line 1286
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothGattService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->startRemoteGattService(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z

    move-result v16

    .line 1287
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    if-eqz v16, :cond_60

    const/4 v2, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1288
    :cond_60
    const/4 v2, 0x0

    goto :goto_61

    .line 1293
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v16           #_result:Z
    :sswitch_64
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1296
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->closeRemoteGattService(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1302
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_65
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_61

    .line 1305
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1311
    .local v3, _arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .line 1312
    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z

    move-result v16

    .line 1313
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    if-eqz v16, :cond_62

    const/4 v2, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :cond_61
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_62

    .line 1314
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v16       #_result:Z
    :cond_62
    const/4 v2, 0x0

    goto :goto_63

    .line 1319
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :sswitch_66
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63

    .line 1322
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1327
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_64
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z

    move-result v16

    .line 1328
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    if-eqz v16, :cond_64

    const/4 v2, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :cond_63
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_64

    .line 1329
    .restart local v16       #_result:Z
    :cond_64
    const/4 v2, 0x0

    goto :goto_65

    .line 1334
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_67
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    .line 1337
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1343
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z

    move-result v16

    .line 1345
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    if-eqz v16, :cond_66

    const/4 v2, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1340
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :cond_65
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_66

    .line 1346
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v16       #_result:Z
    :cond_66
    const/4 v2, 0x0

    goto :goto_67

    .line 1351
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_68
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_67

    .line 1354
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1360
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1362
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1364
    .restart local v5       #_arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68

    const/4 v6, 0x1

    .line 1366
    .restart local v6       #_arg3:Z
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1367
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z

    move-result v16

    .line 1368
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    if-eqz v16, :cond_69

    const/4 v2, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1357
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_67
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_68

    .line 1364
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[B
    :cond_68
    const/4 v6, 0x0

    goto :goto_69

    .line 1369
    .restart local v6       #_arg3:Z
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_69
    const/4 v2, 0x0

    goto :goto_6a

    .line 1374
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_69
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    .line 1377
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1383
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6b

    .line 1384
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1390
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1392
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1394
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1396
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 1397
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIII)Z

    move-result v16

    .line 1398
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    if-eqz v16, :cond_6c

    const/4 v2, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1380
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_6a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6b

    .line 1387
    :cond_6b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_6c

    .line 1399
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_6c
    const/4 v2, 0x0

    goto :goto_6d

    .line 1404
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_6a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    .line 1407
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1413
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1415
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1417
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1419
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1420
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z

    move-result v16

    .line 1421
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    if-eqz v16, :cond_6e

    const/4 v2, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1410
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_6d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6e

    .line 1422
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_6e
    const/4 v2, 0x0

    goto :goto_6f

    .line 1427
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f

    .line 1430
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1436
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    .line 1437
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1443
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1445
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1447
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1449
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1451
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    .line 1452
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIIII)Z

    move-result v16

    .line 1453
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    if-eqz v16, :cond_71

    const/4 v2, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1433
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_6f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_70

    .line 1440
    :cond_70
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_71

    .line 1454
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_71
    const/4 v2, 0x0

    goto :goto_72

    .line 1459
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    .line 1462
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1468
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_73

    .line 1469
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1475
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1477
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 1479
    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1481
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1483
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    .line 1484
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristicResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IBIII)Z

    move-result v16

    .line 1485
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    if-eqz v16, :cond_74

    const/4 v2, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1465
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_72
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_73

    .line 1472
    :cond_73
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_74

    .line 1486
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_74
    const/4 v2, 0x0

    goto :goto_75

    .line 1491
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    .line 1494
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1500
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76

    .line 1501
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1507
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1509
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1511
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1512
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;III)Z

    move-result v16

    .line 1513
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    if-eqz v16, :cond_77

    const/4 v2, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1497
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_75
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_76

    .line 1504
    :cond_76
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_77

    .line 1514
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_77
    const/4 v2, 0x0

    goto :goto_78

    .line 1519
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_78

    .line 1522
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1528
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1530
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_79

    .line 1531
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 1537
    .local v5, _arg2:Landroid/os/ParcelUuid;
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1539
    .local v6, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1541
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 1542
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;ILandroid/os/ParcelUuid;[BII)Z

    move-result v16

    .line 1543
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    if-eqz v16, :cond_7a

    const/4 v2, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1525
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_78
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_79

    .line 1534
    .restart local v4       #_arg1:I
    :cond_79
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/ParcelUuid;
    goto :goto_7a

    .line 1544
    .restart local v6       #_arg3:[B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_7a
    const/4 v2, 0x0

    goto :goto_7b

    .line 1549
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_6f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    .line 1552
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1558
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7c

    .line 1559
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1565
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1567
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1569
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1570
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;[BII)Z

    move-result v16

    .line 1571
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    if-eqz v16, :cond_7d

    const/4 v2, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1555
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_7b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7c

    .line 1562
    :cond_7c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_7d

    .line 1572
    .restart local v5       #_arg2:[B
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_7d
    const/4 v2, 0x0

    goto :goto_7e

    .line 1577
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_70
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 1580
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1586
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7f

    .line 1587
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1593
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1595
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1596
    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;II)Z

    move-result v16

    .line 1597
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    if-eqz v16, :cond_80

    const/4 v2, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1583
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :cond_7e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7f

    .line 1590
    :cond_7f
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_80

    .line 1598
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v16       #_result:Z
    :cond_80
    const/4 v2, 0x0

    goto :goto_81

    .line 1603
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :sswitch_71
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectSap()V

    .line 1605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1610
    :sswitch_72
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_81

    .line 1613
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1619
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1620
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->isHostPatchRequired(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .line 1621
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    if-eqz v16, :cond_82

    const/4 v2, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1616
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_81
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_82

    .line 1622
    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_82
    const/4 v2, 0x0

    goto :goto_83

    .line 1627
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_73
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectDUN()V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1634
    :sswitch_74
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disableDUN()Z

    move-result v16

    .line 1636
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    if-eqz v16, :cond_83

    const/4 v2, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1637
    :cond_83
    const/4 v2, 0x0

    goto :goto_84

    .line 1642
    .end local v16           #_result:Z
    :sswitch_75
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableDUN()Z

    move-result v16

    .line 1644
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    if-eqz v16, :cond_84

    const/4 v2, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1645
    :cond_84
    const/4 v2, 0x0

    goto :goto_85

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
