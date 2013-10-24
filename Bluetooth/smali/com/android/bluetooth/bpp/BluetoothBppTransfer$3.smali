.class Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.bluetooth.device.action.UUID"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1097
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1098
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v3, :cond_1

    .line 1099
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Unexpected error! device is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 1102
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_UUID for device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "requested device: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1105
    const-string v10, "android.bluetooth.device.extra.UUID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 1106
    .local v8, uuid:[Landroid/os/Parcelable;
    if-eqz v8, :cond_8

    .line 1107
    array-length v10, v8

    new-array v9, v10, [Landroid/os/ParcelUuid;

    .line 1108
    .local v9, uuids:[Landroid/os/ParcelUuid;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v8

    if-ge v5, v10, :cond_2

    .line 1109
    aget-object v10, v8, v5

    check-cast v10, Landroid/os/ParcelUuid;

    aput-object v10, v9, v5

    .line 1108
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1112
    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const-string v11, "SupportedFormats"

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1113
    .local v4, docFormats:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->IsNotSupportedDocFormats(Ljava/lang/String;)Z
    invoke-static {v10, v4}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1400(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1115
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v10

    goto :goto_0

    .line 1122
    :cond_3
    sget-object v10, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    invoke-static {v9, v10}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1123
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v12, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v11

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    .line 1126
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SDP get BPP DTS Channel: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_4
    sget-object v10, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    invoke-static {v9, v10}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1130
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v12, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v11

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    .line 1132
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SDP get BPP STS Channel: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    sget-object v10, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {v9, v10}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1137
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "This printer doesn\'t support BPP, but OPP so, let\'s start OPP"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBppTransfer.size() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "BluetoothOppService.mBppTransId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    sget v11, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 1147
    .local v2, bp:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->stop()V

    .line 1148
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1149
    sget v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    .line 1151
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1155
    :goto_2
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mOwner:I

    .line 1156
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/16 v11, 0xbe

    iput v11, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 1157
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v6

    .line 1158
    .local v6, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-eqz v6, :cond_6

    .line 1159
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    iget v11, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/opp/BluetoothOppService;->markBatchOwnership(Landroid/content/Context;II)V

    .line 1165
    :goto_3
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v10, :cond_0

    .line 1166
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OPP Transfer Start!! - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v10, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v12}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/os/PowerManager;

    move-result-object v12

    iget-object v13, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v13, v13, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-direct {v10, v11, v12, v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    sput-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 1169
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v10, :cond_7

    .line 1170
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto/16 :goto_0

    .line 1162
    :cond_6
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "BroadcastReceiver, Action_UUID, info is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1172
    :cond_7
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Error! mTransfer is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1178
    .end local v2           #bp:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
    .end local v4           #docFormats:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v9           #uuids:[Landroid/os/ParcelUuid;
    :cond_8
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->bonding_process:Z

    if-nez v10, :cond_0

    .line 1179
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    iget-object v13, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v13, v13, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    iget-object v14, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v14, v14, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1184
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v8           #uuid:[Landroid/os/Parcelable;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1185
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->bonding_process:Z

    .line 1186
    const-string v10, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v11, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1189
    .local v1, bondState:I
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_BOND_STATE_CHANGED - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/16 v10, 0xc

    if-ne v1, v10, :cond_0

    .line 1191
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->bonding_process:Z

    .line 1192
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Start SDP now "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1194
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Start SDP query failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v10, :cond_a

    .line 1196
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v11, 0xd

    const/4 v12, -0x1

    const/4 v13, -0x1

    iget-object v14, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v14, v14, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1198
    .local v7, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v7, v11, v12}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1200
    .end local v7           #msg:Landroid/os/Message;
    :cond_a
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Error! mSessionHandler is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1152
    .end local v1           #bondState:I
    .restart local v2       #bp:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v4       #docFormats:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #uuid:[Landroid/os/Parcelable;
    .restart local v9       #uuids:[Landroid/os/ParcelUuid;
    :catch_1
    move-exception v10

    goto/16 :goto_2
.end method
