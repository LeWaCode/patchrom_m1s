.class Lcom/android/bluetooth/proximity/LEProximityServices$1;
.super Landroid/os/Handler;
.source "LEProximityServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/proximity/LEProximityServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/proximity/LEProximityServices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 233
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    const-string v24, "LEProximityServices"

    const-string v25, "Received GATT_SERVICE_STARTED_UUID message"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :pswitch_2
    const-string v24, "LEProximityServices"

    const-string v25, "Received GATT_SERVICE_STARTED_OBJ message"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "ACTION_GATT_SERVICE_EXTRA_OBJ"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 241
    .local v9, gattDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 242
    .local v18, size:I
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GATT Service data list len : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 244
    .local v16, selectedServiceObjPath:Ljava/lang/String;
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GATT Service path array obj : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 247
    .local v21, uuidStr:Ljava/lang/String;
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GATT Service uuidStr : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static/range {v21 .. v21}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v17

    .line 249
    .local v17, selectedUUID:Landroid/os/ParcelUuid;
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ParcelUUID rep of selectedUUID : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->isProximityProfileService(Landroid/os/ParcelUuid;)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$000(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 252
    const-string v24, "LEProximityServices"

    const-string v25, "Proceed to creating proximity profile gatt service"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v24, "LEProximityServices"

    const-string v25, "getBluetoothGattService"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$100(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 263
    .end local v9           #gattDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #selectedServiceObjPath:Ljava/lang/String;
    .end local v17           #selectedUUID:Landroid/os/ParcelUuid;
    .end local v18           #size:I
    .end local v21           #uuidStr:Ljava/lang/String;
    :pswitch_3
    const-string v24, "LEProximityServices"

    const-string v25, "Received GATT_SERVICE_DISCONNECTED message"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "ACTION_GATT_SERVICE_EXTRA_DEVICE"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, bdAddr:Ljava/lang/String;
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 268
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " received  GATT_SERVICE_DISCONNECTED for device : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "0000180300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v20

    .line 272
    .local v20, uuid:Landroid/os/ParcelUuid;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v23, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "PROXIMITY_SERVICE_OP_DEV_DISCONNECTED"

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v23

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 279
    const-string v24, "LEProximityServices"

    const-string v25, "Attempting to reconnect back"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v25, v0

    const-string v26, "0000180300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v25

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->gattReconnect(Landroid/os/ParcelUuid;)Z
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$400(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z

    goto/16 :goto_0

    .line 284
    .end local v6           #bdAddr:Ljava/lang/String;
    .end local v20           #uuid:Landroid/os/ParcelUuid;
    .end local v23           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    const-string v24, "LEProximityServices"

    const-string v25, "Received GATT_SERVICE_CONNECTED message"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->cleanUpTimer()V
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$500(Lcom/android/bluetooth/proximity/LEProximityServices;)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "ACTION_GATT_SERVICE_EXTRA_DEVICE"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, connAddr:Ljava/lang/String;
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 290
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " received  GATT_SERVICE_CONNECTED for device : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "0000180300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v12

    .line 294
    .local v12, linkUuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v25, v0

    const-string v26, "00002a0600001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v26, v0

    const-string v27, "0000180300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v26 .. v27}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v26

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->readUpdatedCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    invoke-static/range {v24 .. v26}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$600(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    .line 297
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v22, vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "PROXIMITY_SERVICE_OP_DEV_CONNECTED"

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v22

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v0, v12, v1, v2, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 305
    .end local v7           #connAddr:Ljava/lang/String;
    .end local v12           #linkUuid:Landroid/os/ParcelUuid;
    .end local v22           #vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5
    const-string v24, "LEProximityServices"

    const-string v25, "Received REMOTE_DEVICE_RSSI_UPDATE message"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "ACTION_RSSI_UPDATE_EXTRA_OBJ"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 308
    .local v14, rssiDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 309
    .local v11, len:I
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RSSI data list len : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 311
    .local v8, devAddr:Ljava/lang/String;
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RSSI update for device : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 313
    .local v15, rssiVal:Ljava/lang/String;
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RSSI Value: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-byte v0, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssi:B

    .line 316
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mDevice.rssi: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssi:B

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tx power level :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->txPower:B

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-byte v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->txPower:B

    move/from16 v24, v0

    sget-object v25, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssi:B

    move/from16 v25, v0

    sub-int v13, v24, v25

    .line 320
    .local v13, pathLoss:I
    const-string v24, "LEProximityServices"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Path Loss : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "0000180200001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    .line 322
    .local v10, immAlertSrvUuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const-string v25, "00002a0600001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    .line 323
    .local v5, alertLevelUuid:Landroid/os/ParcelUuid;
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    .line 326
    .local v19, srvAlive:Z
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->pathLossThresh:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v13, v0, :cond_2

    .line 328
    const-string v24, "LEProximityServices"

    const-string v25, "Set the IMMEDIATE_ALERT_SERVICE_UUID to high"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->writeProximityCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    invoke-static {v0, v5, v10, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$700(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 331
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    if-eqz v19, :cond_1

    .line 332
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    move/from16 v25, v0

    sget-object v26, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiInterval:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Landroid/bluetooth/BluetoothDevice;->registerRssiUpdateWatcher(IIZ)Z

    .line 335
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v25, v0

    const-string v26, "0000180200001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v25

    const-string v26, "PROXIMITY_SERVICE_OP_PATH_LOSS_EXCEEDED"

    const/16 v27, 0x1

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static/range {v24 .. v28}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 341
    :cond_2
    const-string v24, "LEProximityServices"

    const-string v25, "Set the IMMEDIATE_ALERT_SERVICE_UUID to low"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->writeProximityCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    invoke-static {v0, v5, v10, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$700(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 344
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    if-eqz v19, :cond_3

    .line 345
    sget-object v24, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    move/from16 v25, v0

    sget-object v26, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiInterval:I

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/bluetooth/BluetoothDevice;->registerRssiUpdateWatcher(IIZ)Z

    .line 349
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    move-object/from16 v25, v0

    const-string v26, "0000180200001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v25

    const-string v26, "PROXIMITY_SERVICE_OP_PATH_LOSS_EXCEEDED"

    const/16 v27, 0x0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static/range {v24 .. v28}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
