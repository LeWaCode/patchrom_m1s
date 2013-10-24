.class public Lcom/android/bluetooth/proximity/LEProximityServices;
.super Landroid/app/Service;
.source "LEProximityServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;
    }
.end annotation


# static fields
.field public static GATTServiceUUID:Landroid/os/ParcelUuid;

.field public static characteristicsPath:[Ljava/lang/String;

.field public static mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

.field public static tempTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static uuidArray:[Landroid/os/ParcelUuid;


# instance fields
.field private final btGattCallback:Landroid/bluetooth/IBluetoothGattProfile$Stub;

.field private inFilter:Landroid/content/IntentFilter;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBinder:Landroid/bluetooth/IBluetoothLEProximityServices$Stub;

.field private mHasStarted:Z

.field private mStartId:I

.field public final msgHandler:Landroid/os/Handler;

.field private receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

.field private srvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->GATTServiceUUID:Landroid/os/ParcelUuid;

    .line 126
    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->characteristicsPath:[Ljava/lang/String;

    .line 128
    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->uuidArray:[Landroid/os/ParcelUuid;

    .line 224
    sput-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->tempTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mStartId:I

    .line 112
    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->srvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mHasStarted:Z

    .line 118
    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    .line 226
    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    .line 228
    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

    .line 230
    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/proximity/LEProximityServices$1;-><init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->msgHandler:Landroid/os/Handler;

    .line 471
    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/proximity/LEProximityServices$2;-><init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->btGattCallback:Landroid/bluetooth/IBluetoothGattProfile$Stub;

    .line 555
    new-instance v0, Lcom/android/bluetooth/proximity/LEProximityServices$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/proximity/LEProximityServices$3;-><init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mBinder:Landroid/bluetooth/IBluetoothLEProximityServices$Stub;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->isProximityProfileService(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->readTXPower(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/bluetooth/IBluetoothThermometerCallBack;)Landroid/bluetooth/IBluetoothThermometerCallBack;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->srvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;BBIIIIIIIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p12}, Lcom/android/bluetooth/proximity/LEProximityServices;->gattConnect(Landroid/os/ParcelUuid;BBIIIIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->gattReconnect(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/proximity/LEProximityServices;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->cleanUpTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->readUpdatedCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/proximity/LEProximityServices;->writeProximityCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->readProximityChar(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 4
    .parameter "uuid"
    .parameter "operation"
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 751
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "PROXIMITY_SERVICE_CHAR_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 752
    const-string v2, "PROXIMITY_SERVICE_OPERATION"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v2, "PROXIMITY_SERVICE_OP_STATUS"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    const-string v2, "PROXIMITY_SERVICE_OP_VALUE"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 756
    :try_start_0
    const-string v2, "LEProximityServices"

    const-string v3, "proximitySrvCallBack.sendResult"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->srvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetoothThermometerCallBack;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "LEProximityServices"

    const-string v3, "proximitySrvCallBack.sendResult failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private cleanUpTimer()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "LEProximityServices"

    const-string v1, "Cancel the timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 898
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    .line 901
    :cond_0
    return-void
.end method

.method private closeAllProximityServices()Z
    .locals 6

    .prologue
    .line 436
    const-string v3, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v1

    .line 437
    .local v1, closeLinkLoss:Z
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the proximity Link Loss service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v3, "0000180200001000800000805f9b34fb"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 439
    .local v0, closeImmAlert:Z
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the Imm Alert  service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v3, "0000180400001000800000805f9b34fb"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v2

    .line 441
    .local v2, closeTxPower:Z
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the Tx Power service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 443
    const/4 v3, 0x1

    .line 445
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private closeService(Landroid/os/ParcelUuid;)Z
    .locals 6
    .parameter "srvUuid"

    .prologue
    const/4 v2, 0x0

    .line 449
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    if-eqz v3, :cond_0

    .line 450
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v3, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 452
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 454
    :try_start_0
    const-string v3, "LEProximityServices"

    const-string v4, "Calling gattService.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->close()V

    .line 456
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing Gatt service for UUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v3, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/bluetooth/proximity/LEProximityReceiver;->setSendDisconnect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    const/4 v2, 0x1

    .line 468
    .end local v1           #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_0
    :goto_0
    return v2

    .line 460
    .restart local v1       #gattService:Landroid/bluetooth/BluetoothGattService;
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LEProximityServices"

    const-string v4, "************Error while closing the Gatt Service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I
    .locals 4
    .parameter "start"
    .parameter "size"
    .parameter "input"

    .prologue
    .line 983
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v0, v2, p2

    .line 984
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 985
    .local v1, result:I
    return v1
.end method

.method private convertHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 989
    const/4 v1, 0x0

    .line 990
    .local v1, indx:I
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 991
    :cond_0
    const-string v0, "0"

    .line 997
    :goto_0
    return-object v0

    .line 993
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v4, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v2

    .line 994
    .local v2, proxChar:I
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proximity Char after cnversion to int : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, charStr:Ljava/lang/String;
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proximity Charin str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 2
    .parameter "uuidStr"

    .prologue
    .line 765
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertUUIDStringToUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method private convertUUIDStringToUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 7
    .parameter "UUIDStr"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 1057
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return-object v0

    .line 1060
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, uuidMsB:Ljava/lang/String;
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, uuidLsB:Ljava/lang/String;
    const-string v3, "800000805f9b34fb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    new-instance v0, Ljava/util/UUID;

    invoke-static {v2, v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v5, -0x7fffff7fa064cb05L

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 1065
    .local v0, uuid:Ljava/util/UUID;
    goto :goto_0

    .line 1067
    .end local v0           #uuid:Ljava/util/UUID;
    :cond_1
    new-instance v0, Ljava/util/UUID;

    invoke-static {v2, v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 1069
    .restart local v0       #uuid:Ljava/util/UUID;
    goto :goto_0
.end method

.method private discoverCharacteristics(Landroid/os/ParcelUuid;)V
    .locals 8
    .parameter "srvUUID"

    .prologue
    .line 796
    const-string v5, "LEProximityServices"

    const-string v6, "Calling gattService.getCharacteristics()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 799
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_2

    .line 800
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()[Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, charObjPathArray:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 802
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " charObjPath length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 804
    .local v3, objPath:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 806
    .local v4, parcelUUID:Landroid/os/ParcelUuid;
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Map with key UUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    .end local v3           #objPath:Ljava/lang/String;
    .end local v4           #parcelUUID:Landroid/os/ParcelUuid;
    :cond_0
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created map with size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v7, v7, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v5, "LEProximityServices"

    const-string v6, "update LE Connection Parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->updateConnectionParameters()V

    .line 820
    invoke-direct {p0, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->getTXPowerLevelVal(Landroid/os/ParcelUuid;)V

    .line 822
    const-string v5, "PROXIMITY_SERVICE_OP_SERVICE_READY"

    const/4 v6, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 832
    .end local v0           #charObjPathArray:[Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 826
    .restart local v0       #charObjPathArray:[Ljava/lang/String;
    :cond_1
    const-string v5, "LEProximityServices"

    const-string v6, " gattService.getCharacteristics() returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 829
    .end local v0           #charObjPathArray:[Ljava/lang/String;
    :cond_2
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gatt service is null for UUID :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private gattConnect(Landroid/os/ParcelUuid;BBIIIIIIIII)Z
    .locals 12
    .parameter "srvUuid"
    .parameter "prohibitRemoteChg"
    .parameter "filterPolicy"
    .parameter "scanInterval"
    .parameter "scanWindow"
    .parameter "intervalMin"
    .parameter "intervalMax"
    .parameter "latency"
    .parameter "superVisionTimeout"
    .parameter "minCeLen"
    .parameter "maxCeLen"
    .parameter "connTimeout"

    .prologue
    .line 872
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v1, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 873
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    .line 875
    invoke-virtual/range {v0 .. v11}, Landroid/bluetooth/BluetoothGattService;->gattConnect(BBIIIIIIIII)Z

    move-result v1

    .line 881
    :goto_0
    return v1

    .line 880
    :cond_0
    const-string v1, "LEProximityServices"

    const-string v2, "Gatt service is null.. cannot connect to gatt service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private gattReconnect(Landroid/os/ParcelUuid;)Z
    .locals 14
    .parameter "srvUuid"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 854
    const/16 v4, 0x60

    const/16 v5, 0x30

    const/16 v6, 0x8

    const/16 v7, 0x100

    const/16 v9, 0xc0

    const/16 v12, 0x1e

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v8, v2

    move v11, v10

    invoke-direct/range {v0 .. v12}, Lcom/android/bluetooth/proximity/LEProximityServices;->gattConnect(Landroid/os/ParcelUuid;BBIIIIIIIII)Z

    move-result v13

    .line 858
    .local v13, result:Z
    if-eqz v13, :cond_0

    .line 859
    const-string v0, "LEProximityServices"

    const-string v1, "Scheduling timer for 30 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->cleanUpTimer()V

    .line 861
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    .line 862
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;-><init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V

    const-wide/16 v2, 0x7918

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 865
    :goto_0
    return v10

    :cond_0
    move v10, v2

    goto :goto_0
.end method

.method private gattReconnectCancel()Z
    .locals 4

    .prologue
    .line 885
    const-string v2, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 886
    .local v1, srvUuid:Landroid/os/ParcelUuid;
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 887
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->gattConnectCancel()Z

    move-result v2

    .line 891
    :goto_0
    return v2

    .line 890
    :cond_0
    const-string v2, "LEProximityServices"

    const-string v3, "Gatt service does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 5
    .parameter "objPath"
    .parameter "uuid"

    .prologue
    .line 769
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 770
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ++++++ Creating BluetoothGattService with device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->btGattCallback:Landroid/bluetooth/IBluetoothGattProfile$Stub;

    invoke-direct {v0, v2, p2, p1, v3}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/bluetooth/IBluetoothGattProfile;)V

    .line 777
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_1

    .line 778
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding gatt service to map for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->isDiscoveryDone()Z

    move-result v1

    .line 782
    .local v1, isDiscovered:Z
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDiscovered returned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz v1, :cond_0

    .line 784
    invoke-direct {p0, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V

    .line 793
    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    .end local v1           #isDiscovered:Z
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local v0       #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gatt service is null for UUID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 790
    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_2
    const-string v2, "LEProximityServices"

    const-string v3, " mDevice is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "uuid"
    .parameter "btDevice"

    .prologue
    .line 739
    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iput-object p2, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    .line 740
    const-string v0, "LEProximityServices"

    const-string v1, "Setting Preferred Connection Parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->setPreferredConnParameters()V

    .line 742
    const-string v0, "LEProximityServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATT Extra Bt Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v0, "LEProximityServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATT UUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v0, "LEProximityServices"

    const-string v1, "Calling  btDevice.getGattServices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->getGattServices(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private getTXPowerLevelVal(Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "srvUUID"

    .prologue
    .line 904
    const-string v2, "00002a0700001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 905
    .local v0, txCharUuid:Landroid/os/ParcelUuid;
    const-string v2, "0000180400001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 906
    .local v1, txSrvUuid:Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    const-string v2, "LEProximityServices"

    const-string v3, "Currently discovered TX service..Reading the TX power level"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->readUpdatedCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    .line 911
    :cond_0
    return-void
.end method

.method private isProximityProfileService(Landroid/os/ParcelUuid;)Z
    .locals 2
    .parameter "uuid"

    .prologue
    .line 727
    const-string v0, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000180200001000800000805f9b34fb"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000180400001000800000805f9b34fb"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 8
    .parameter "charUUID"
    .parameter "srvUUID"

    .prologue
    .line 942
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 943
    .local v2, objPath:Ljava/lang/String;
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 944
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 945
    :cond_0
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object is null objPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gattService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v4, 0x0

    .line 959
    :goto_0
    return-object v4

    .line 949
    :cond_1
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading characterisitcs with uuid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and objPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->readCharacteristicRaw(Ljava/lang/String;)[B

    move-result-object v3

    .line 952
    .local v3, rawValue:[B
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raw characteristic byte arr length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raw characteristic value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 955
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Byte array at i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 957
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 958
    .local v4, value:Ljava/lang/String;
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String characteristic value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readProximityChar(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "charUUID"
    .parameter "srvUuid"

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->readCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, value:Ljava/lang/String;
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proximity char value before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1010
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    .line 1014
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "populate link loss alert level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    return-object v1

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while readProximityChar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readTXPower(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 5
    .parameter "charUUID"
    .parameter "srvUUID"

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->readProximityChar(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, result:Ljava/lang/String;
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after readProximityChar in readTXPower: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v1, v2

    .line 1024
    .local v1, txPower:B
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iput-byte v1, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->txPower:B

    .line 1025
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TX power after converting to byte : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-byte v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->txPower:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readUpdatedCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 6
    .parameter "charUuid"
    .parameter "srvUuid"

    .prologue
    const/4 v5, 0x0

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, readCharUUID:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuidObjPathMap containsKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v2, "00002a0600001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00002a0700001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    :cond_0
    const-string v2, "LEProximityServices"

    const-string v3, "Reading the proximity Charactersitics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->updateCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 674
    const-string v2, "PROXIMITY_SERVICE_OP_READ"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This characteristics : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v2, "PROXIMITY_SERVICE_OP_READ"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 685
    :cond_3
    const-string v2, "LEProximityServices"

    const-string v3, "The character parcel uuid is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v2, "PROXIMITY_SERVICE_OP_READ"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setPreferredConnParameters()V
    .locals 12

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 844
    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-boolean v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamSet:Z

    if-nez v0, :cond_0

    .line 845
    sget-object v11, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x8

    const/16 v6, 0x100

    const/16 v8, 0xc0

    move v2, v1

    move v4, v3

    move v7, v1

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/BluetoothDevice;->setLEConnectionParams(BBIIIIIIII)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamSet:Z

    .line 847
    const-string v0, "LEProximityServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set preferred LE connection parameters result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-boolean v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    return-void
.end method

.method private updateCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 7
    .parameter "charUUID"
    .parameter "srvUUID"

    .prologue
    .line 1030
    const/4 v3, 0x0

    .line 1031
    .local v3, result:Z
    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1032
    .local v2, objPath:Ljava/lang/String;
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCharacteristic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1034
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gattService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 1037
    :cond_0
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object is null objPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gattService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v4, 0x0

    .line 1053
    :goto_0
    return v4

    .line 1042
    :cond_1
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating characterisitcs with uuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and objPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-eqz v1, :cond_2

    .line 1046
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->updateCharacteristicValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_2
    :goto_1
    move v4, v3

    .line 1053
    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1050
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while updateCharacteristicValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateConnectionParameters()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 835
    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-boolean v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamUpdated:Z

    if-nez v0, :cond_0

    .line 836
    sget-object v6, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    sget-object v0, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v0, v0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0x8

    const/16 v3, 0x100

    const/16 v5, 0xc0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothDevice;->updateLEConnectionParams(BIIII)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamUpdated:Z

    .line 838
    const-string v0, "LEProximityServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update LE connection parameters result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-boolean v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    return-void
.end method

.method private writeAlertLevel(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;Z)Z
    .locals 6
    .parameter "uuid"
    .parameter "srvUuid"
    .parameter "value"
    .parameter "writeWithResp"

    .prologue
    const/4 v2, 0x0

    .line 967
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 972
    .local v1, intVal:I
    if-ltz v1, :cond_0

    const/4 v4, 0x2

    if-le v1, v4, :cond_1

    .line 973
    :cond_0
    const-string v4, "LEProximityServices"

    const-string v5, "Invalid Alert Value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v1           #intVal:I
    :goto_0
    return v2

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "LEProximityServices"

    const-string v5, "Invalid value for lert level"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #intVal:I
    :cond_1
    const/4 v4, 0x1

    new-array v3, v4, [B

    .line 977
    .local v3, valBytes:[B
    int-to-byte v4, v1

    aput-byte v4, v3, v2

    .line 978
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/android/bluetooth/proximity/LEProximityServices;->writeCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[BZ)Z

    move-result v2

    .line 979
    .local v2, result:Z
    goto :goto_0
.end method

.method private writeCharacteristic(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[BZ)Z
    .locals 9
    .parameter "charUUID"
    .parameter "srvUUID"
    .parameter "data"
    .parameter "writeWithResponse"

    .prologue
    const/4 v5, 0x0

    .line 916
    sget-object v6, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v6, v6, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 917
    .local v3, objPath:Ljava/lang/String;
    sget-object v6, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v6, v6, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 920
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 921
    :cond_0
    const-string v6, "LEProximityServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Object is null objPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " gattService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_0
    return v5

    .line 926
    :cond_1
    const-string v6, "LEProximityServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing characterisitcs with uuid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and objPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "write response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, p3

    if-ge v2, v6, :cond_2

    .line 929
    const-string v6, "LEProximityServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p3, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    :cond_2
    :try_start_0
    invoke-virtual {v1, v3, p3, p4}, Landroid/bluetooth/BluetoothGattService;->writeCharacteristicRaw(Ljava/lang/String;[BZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 933
    .local v4, result:Ljava/lang/Boolean;
    const-string v6, "LEProximityServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gattService.writeCharacteristicRaw : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 934
    .end local v4           #result:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 935
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 936
    .restart local v4       #result:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private writeProximityCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 7
    .parameter "uuid"
    .parameter "srvUuid"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 693
    const/4 v1, 0x0

    .line 694
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, writeCharUUID:Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 696
    const-string v4, "LEProximityServices"

    const-string v5, "The character parcel uuid is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return v3

    .line 699
    :cond_0
    const-string v4, "00002a0600001000800000805f9b34fb"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 701
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writing the alert level Charactersitics for service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v4, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 704
    .local v0, linkLossUuid:Landroid/os/ParcelUuid;
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 705
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->writeAlertLevel(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;Z)Z

    move-result v1

    .line 709
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0000180300001000800000805f9b34fb"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    .line 714
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "populate link loss alert level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write Alert level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #linkLossUuid:Landroid/os/ParcelUuid;
    :goto_2
    move v3, v1

    .line 722
    goto/16 :goto_0

    .line 707
    .restart local v0       #linkLossUuid:Landroid/os/ParcelUuid;
    :cond_2
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->writeAlertLevel(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 719
    .end local v0           #linkLossUuid:Landroid/os/ParcelUuid;
    :cond_3
    const-string v3, "LEProximityServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This characteristics : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be written"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 398
    const-string v0, "LEProximityServices"

    const-string v1, "onBind proximity service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mBinder:Landroid/bluetooth/IBluetoothLEProximityServices$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 364
    const-string v1, "LEProximityServices"

    const-string v2, "onCreate Proximity service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 367
    iget-boolean v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mHasStarted:Z

    .line 369
    const-string v1, "LEProximityServices"

    const-string v2, "Creating proximity service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 371
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 372
    const-string v1, "LEProximityServices"

    const-string v2, "Bluetooth is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Lcom/android/bluetooth/proximity/LEProximityDevice;

    invoke-direct {v1}, Lcom/android/bluetooth/proximity/LEProximityDevice;-><init>()V

    sput-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    .line 374
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    .line 375
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    .line 376
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    .line 378
    const-string v1, "LEProximityServices"

    const-string v2, "registering receiver handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->msgHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/bluetooth/proximity/LEProximityReceiver;->registerHandler(Landroid/os/Handler;)V

    .line 381
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    .line 382
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.GATT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.RSSI_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    new-instance v1, Lcom/android/bluetooth/proximity/LEProximityReceiver;

    invoke-direct {v1}, Lcom/android/bluetooth/proximity/LEProximityReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

    .line 388
    const-string v1, "LEProximityServices"

    const-string v2, "Registering the receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->inFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v0       #state:I
    :cond_1
    const-string v1, "LEProximityServices"

    const-string v2, "Bluetooth is not on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 415
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 416
    const-string v2, "LEProximityServices"

    const-string v3, "onDestroy proximity service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->cleanUpTimer()V

    .line 420
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->gattReconnectCancel()Z

    move-result v1

    .line 421
    .local v1, res:Z
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gatt reconnect cancel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/android/bluetooth/proximity/LEProximityServices;->closeAllProximityServices()Z

    .line 424
    const-string v2, "LEProximityServices"

    const-string v3, "Unregistering the receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

    if-eqz v2, :cond_0

    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices;->receiver:Lcom/android/bluetooth/proximity/LEProximityReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/proximity/LEProximityServices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    .line 433
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LEProximityServices"

    const-string v3, "Error while unregistering the receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 404
    const-string v0, "LEProximityServices"

    const-string v1, "onRebind proximity service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 409
    const-string v0, "LEProximityServices"

    const-string v1, "onUnbind proximity service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x1

    return v0
.end method
