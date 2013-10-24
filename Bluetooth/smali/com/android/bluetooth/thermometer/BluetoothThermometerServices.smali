.class public Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;
.super Landroid/app/Service;
.source "BluetoothThermometerServices.java"


# static fields
.field public static GATTServiceUUID:Landroid/os/ParcelUuid;

.field public static THERMOMETER_BATTERY_SERVICE:I

.field public static THERMOMETER_DEVICE_SERVICE:I

.field public static THERMOMETER_HEALTH_SERVICE:I

.field public static characteristicsPath:[Ljava/lang/String;

.field public static mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

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

.field private final mBinder:Landroid/bluetooth/IBluetoothThermometerServices$Stub;

.field private mHasStarted:Z

.field private mStartId:I

.field public final msgHandler:Landroid/os/Handler;

.field private receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

.field private thermometerSrvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->GATTServiceUUID:Landroid/os/ParcelUuid;

    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->THERMOMETER_HEALTH_SERVICE:I

    .line 100
    const/4 v0, 0x1

    sput v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->THERMOMETER_DEVICE_SERVICE:I

    .line 102
    const/4 v0, 0x2

    sput v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->THERMOMETER_BATTERY_SERVICE:I

    .line 106
    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->characteristicsPath:[Ljava/lang/String;

    .line 108
    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->uuidArray:[Landroid/os/ParcelUuid;

    .line 186
    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mStartId:I

    .line 88
    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->thermometerSrvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mHasStarted:Z

    .line 188
    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->inFilter:Landroid/content/IntentFilter;

    .line 190
    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    .line 192
    new-instance v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$1;-><init>(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->msgHandler:Landroid/os/Handler;

    .line 328
    new-instance v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;-><init>(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->btGattCallback:Landroid/bluetooth/IBluetoothGattProfile$Stub;

    .line 480
    new-instance v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;-><init>(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;)V

    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mBinder:Landroid/bluetooth/IBluetoothThermometerServices$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->isThermometerProfileService(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readTemperatureType(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationUtf8String(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/bluetooth/IBluetoothThermometerCallBack;)Landroid/bluetooth/IBluetoothThermometerCallBack;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->thermometerSrvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateDateTime(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharValue(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeDateTime(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeMeasurementInterval(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getClientConfDesc(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->registerForWatcher(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->setClientConfDesc(Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertLittleEnHexStrToVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->parseTempMeasurement(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDateTime(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readMeasurementInterval(Landroid/os/ParcelUuid;)Ljava/lang/String;

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
    .line 759
    .local p4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "THERMOMETER_SERVICE_CHAR_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 761
    const-string v2, "THERMOMETER_SERVICE_OPERATION"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v2, "THERMOMETER_SERVICE_OP_STATUS"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    const-string v2, "THERMOMETER_SERVICE_OP_VALUE"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 765
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->thermometerSrvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetoothThermometerCallBack;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "thermometerSrvCallBack.sendResult failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private closeService(Landroid/os/ParcelUuid;)Z
    .locals 5
    .parameter "srvUuid"

    .prologue
    .line 310
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    if-eqz v2, :cond_0

    .line 311
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 312
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Calling gattService.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->close()V

    .line 316
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing Gatt service for UUID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1           #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 318
    .restart local v1       #gattService:Landroid/bluetooth/BluetoothGattService;
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "************Error while closing the Gatt Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I
    .locals 4
    .parameter "start"
    .parameter "size"
    .parameter "input"

    .prologue
    .line 1259
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v0, v2, p2

    .line 1260
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1261
    .local v1, result:I
    return v1
.end method

.method private convertHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1247
    const/4 v0, 0x0

    .line 1248
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 1249
    :cond_0
    const-string v0, "0"

    .line 1255
    :goto_0
    return-object v0

    .line 1251
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v0

    .line 1252
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temperature Type after cnversion to int : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1254
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temperature Type in str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertLittleEnHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 1232
    const/4 v0, 0x0

    .line 1233
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 1234
    :cond_0
    const-string v0, "0"

    .line 1243
    :goto_0
    return-object v0

    .line 1236
    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->strSwap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v1

    .line 1238
    const-string v0, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Measurement Interval after cnversion to int : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Measurement Interval after conversion to str : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static convertStrToDate(Ljava/lang/String;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1133
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1135
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 1137
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1139
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1140
    const/4 v1, 0x2

    .line 1141
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1142
    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->reverseByte(II)[B

    move-result-object v4

    .line 1143
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1145
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v2, v1

    .line 1147
    const/4 v1, 0x4

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    .line 1149
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v2, v1

    .line 1151
    const/4 v1, 0x6

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    .line 1153
    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1154
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 1155
    const-string v1, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "Error while parsing the date : Parse Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    :goto_1
    return-object v2

    .line 1159
    :catch_1
    move-exception v0

    .line 1160
    const-string v1, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while parsing the date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 2
    .parameter "uuidStr"

    .prologue
    .line 773
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertUUIDStringToUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method private static convertUTF8Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "utf8Hex"

    .prologue
    .line 1122
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, p0, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1123
    .local v0, bytes:[B
    const/4 v2, 0x0

    .line 1125
    .local v2, out:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #out:Ljava/lang/String;
    .local v3, out:Ljava/lang/String;
    move-object v2, v3

    .line 1130
    .end local v3           #out:Ljava/lang/String;
    .restart local v2       #out:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothThermometerServices"

    const-string v5, "Error while converting UTF-8 HEX string "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertUUIDStringToUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x20

    const/16 v3, 0x10

    .line 1385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1386
    const/4 v0, 0x0

    .line 1397
    :goto_0
    return-object v0

    .line 1388
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1391
    const-string v0, "800000805f9b34fb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    new-instance v0, Ljava/util/UUID;

    invoke-static {v1, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, -0x7fffff7fa064cb05L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0

    .line 1395
    :cond_1
    new-instance v0, Ljava/util/UUID;

    invoke-static {v1, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private convertValToDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x2

    .line 1204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1205
    const-string v1, "(?<=\\G.{2})"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1206
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date Time byte array size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v1, 0x0

    .line 1208
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->strSwap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v5, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v1

    .line 1211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, v7, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1212
    const/4 v3, 0x6

    .line 1213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v7, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v3

    .line 1214
    const/16 v4, 0x8

    .line 1215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4, v7, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v4

    .line 1216
    const/16 v5, 0xa

    .line 1217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5, v7, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v5

    .line 1218
    const/16 v6, 0xc

    .line 1219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6, v7, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertAtHexToDec(Ljava/lang/Integer;ILjava/lang/String;)I

    move-result v6

    .line 1220
    const-string v7, "BluetoothThermometerServices"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Year : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " month : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " day : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hours : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " min : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1225
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO Formatted Date Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-object v0
.end method

.method private discoverCharacteristics(Landroid/os/ParcelUuid;)V
    .locals 8
    .parameter "srvUUID"

    .prologue
    .line 820
    const-string v5, "BluetoothThermometerServices"

    const-string v6, "Calling gattService.getCharacteristics()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v5, v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 823
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_2

    .line 824
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()[Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, charObjPathArray:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 827
    const-string v5, "BluetoothThermometerServices"

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

    .line 828
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

    .line 829
    .local v3, objPath:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 831
    .local v4, parcelUUID:Landroid/os/ParcelUuid;
    sget-object v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v5, v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v5, v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v5, "BluetoothThermometerServices"

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

    .line 836
    .end local v3           #objPath:Ljava/lang/String;
    .end local v4           #parcelUUID:Landroid/os/ParcelUuid;
    :cond_0
    const-string v5, "BluetoothThermometerServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created map with size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v7, v7, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v5, "THERMOMETER_SERVICE_OP_SERVICE_READY"

    const/4 v6, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 847
    .end local v0           #charObjPathArray:[Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 841
    .restart local v0       #charObjPathArray:[Ljava/lang/String;
    :cond_1
    const-string v5, "BluetoothThermometerServices"

    const-string v6, " gattService.getCharacteristics() returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    .end local v0           #charObjPathArray:[Ljava/lang/String;
    :cond_2
    const-string v5, "BluetoothThermometerServices"

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

.method private getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 5
    .parameter "objPath"
    .parameter "uuid"

    .prologue
    .line 777
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 778
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ++++++ Creating BluetoothGattService with device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v4, v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

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

    .line 783
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->btGattCallback:Landroid/bluetooth/IBluetoothGattProfile$Stub;

    invoke-direct {v0, v2, p2, p1, v3}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/bluetooth/IBluetoothGattProfile;)V

    .line 788
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_1

    .line 789
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v2, "BluetoothThermometerServices"

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

    sget-object v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v4, v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->isDiscoveryDone()Z

    move-result v1

    .line 793
    .local v1, isDiscovered:Z
    const-string v2, "BluetoothThermometerServices"

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

    .line 794
    if-eqz v1, :cond_0

    .line 795
    invoke-direct {p0, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->registerForWatcher(Landroid/os/ParcelUuid;)V

    .line 796
    invoke-direct {p0, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V

    .line 805
    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    .end local v1           #isDiscovered:Z
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local v0       #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const-string v2, "BluetoothThermometerServices"

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

    .line 802
    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    :cond_2
    const-string v2, "BluetoothThermometerServices"

    const-string v3, " mDevice is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getClientConfDesc(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "uuid"

    .prologue
    .line 979
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 980
    .local v2, objPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 982
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 983
    :cond_0
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object is null objPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gattService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v3, 0x0

    .line 991
    :goto_0
    return-object v3

    .line 988
    :cond_1
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicClientConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, confStr:Ljava/lang/String;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client char conf for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertLittleEnHexStrToVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;
    .locals 5
    .parameter "charUUID"

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get GATT srevice for uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v2, "00002a1c00001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00002a1d00001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00002a1e00001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00002a2100001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00002a0800001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1092
    :cond_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "get health thermometer service GATT service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v2, "0000180900001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1094
    .local v1, srvUUID:Landroid/os/ParcelUuid;
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1118
    .end local v1           #srvUUID:Landroid/os/ParcelUuid;
    .restart local v0       #gattService:Landroid/bluetooth/BluetoothGattService;
    :goto_0
    return-object v0

    .line 1095
    :cond_1
    const-string v2, "00002a2900001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2400001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2500001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2700001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2600001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2800001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2300001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "00002a2a00001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    :cond_2
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "get device information service GATT service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v2, "0000180a00001000800000805f9b34fb"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1113
    .restart local v1       #srvUUID:Landroid/os/ParcelUuid;
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gattService:Landroid/bluetooth/BluetoothGattService;
    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1114
    .restart local v0       #gattService:Landroid/bluetooth/BluetoothGattService;
    goto/16 :goto_0

    .line 1115
    .end local v1           #srvUUID:Landroid/os/ParcelUuid;
    :cond_3
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gatt service cannot be found for the UUID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "uuid"
    .parameter "btDevice"

    .prologue
    .line 750
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iput-object p2, v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    .line 751
    const-string v0, "BluetoothThermometerServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATT Extra Bt Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v0, "BluetoothThermometerServices"

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

    .line 753
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "Calling  btDevice.getGattServices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->getGattServices(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private getIEEE11073FloatFromHex(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    .line 1296
    const-string v0, "BluetoothThermometerServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIEEE11073FloatFromHex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v1, v0

    .line 1301
    const-string v0, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/16 v0, 0x8

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    .line 1306
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1307
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp Mantissa : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    if-eqz v2, :cond_0

    .line 1310
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "negative matissa"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x4038

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1313
    sub-int v0, v2, v0

    xor-int/lit8 v0, v0, -0x1

    .line 1315
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "neg mantissa : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :goto_0
    const-wide/high16 v2, 0x4024

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 1323
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1318
    :cond_0
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positive mantissa : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static intToByteArray(I)[B
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 1195
    new-array v0, v4, [B

    .line 1196
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1197
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 1198
    .local v2, offset:I
    ushr-int v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    .end local v2           #offset:I
    :cond_0
    return-object v0
.end method

.method private isThermometerProfileService(Landroid/os/ParcelUuid;)Z
    .locals 2
    .parameter "uuid"

    .prologue
    .line 740
    const-string v0, "0000180900001000800000805f9b34fb"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000180a00001000800000805f9b34fb"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x1

    .line 746
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseTempMeasurement(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0xa

    const/4 v6, 0x2

    .line 1327
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "parseTempMeasurement "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    const-string v0, ""

    .line 1331
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1334
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1335
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temp msr str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->reverseHexStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    const-string v3, "007FFFFE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "00800002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1339
    :cond_0
    const-string v0, "infinity"

    .line 1340
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :goto_0
    return-object v1

    .line 1341
    :cond_1
    const-string v3, "007FFFFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "00800000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "00800001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1344
    :cond_2
    const-string v0, "invalid number"

    .line 1345
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1347
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getIEEE11073FloatFromHex(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    :cond_4
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1355
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v6, :cond_6

    .line 1358
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1359
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date  str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-direct {p0, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertValToDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_6
    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 1366
    const/16 v0, 0x1a

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1367
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TempType  str : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temp Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_7
    const-string v0, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTempMeasurement : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private populateTempType()V
    .locals 3

    .prologue
    .line 262
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ARMPIT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BODY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FINGER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GASTRO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MOUTH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TOE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TYMPHANUM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method private readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 8
    .parameter "charUUID"

    .prologue
    .line 926
    sget-object v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v5, v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 927
    .local v2, objPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 928
    .local v0, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 929
    :cond_0
    const-string v5, "BluetoothThermometerServices"

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

    .line 931
    const/4 v4, 0x0

    .line 943
    :goto_0
    return-object v4

    .line 933
    :cond_1
    const-string v5, "BluetoothThermometerServices"

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

    .line 935
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->readCharacteristicRaw(Ljava/lang/String;)[B

    move-result-object v3

    .line 936
    .local v3, rawValue:[B
    const-string v5, "BluetoothThermometerServices"

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

    .line 937
    const-string v5, "BluetoothThermometerServices"

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

    .line 938
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 939
    const-string v5, "BluetoothThermometerServices"

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

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 942
    .local v4, value:Ljava/lang/String;
    const-string v5, "BluetoothThermometerServices"

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

.method private readDateTime(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "charUUID"

    .prologue
    .line 864
    const/4 v1, 0x0

    .line 866
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, value:Ljava/lang/String;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date Time value before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertValToDateTime(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 873
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while readDateTime : "

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

.method private readDeviceInformationString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 5
    .parameter "charUUID"

    .prologue
    .line 915
    const/4 v1, 0x0

    .line 917
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 918
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInformation String value before conversion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-object v1

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while readDeviceInformation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readDeviceInformationUtf8String(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "charUUID"

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 905
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 906
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceInformation String value before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertUTF8Hex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 911
    :goto_0
    return-object v1

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while readDeviceInformationUtf8String : "

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

.method private readMeasurementInterval(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "charUUID"

    .prologue
    .line 877
    const/4 v1, 0x0

    .line 879
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, value:Ljava/lang/String;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature Measurement value before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertLittleEnHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 886
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while readMeasurementInterval : "

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

.method private readTemperatureType(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 6
    .parameter "charUUID"

    .prologue
    .line 890
    const/4 v1, 0x0

    .line 892
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readCharacteristic(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, value:Ljava/lang/String;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature Type value before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 898
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while readTemperatureType : "

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

.method private registerForWatcher(Landroid/os/ParcelUuid;)V
    .locals 6
    .parameter "srvUUID"

    .prologue
    .line 809
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 811
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->registerWatcher()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 816
    .local v2, regWatchRes:Z
    :goto_0
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register watcher result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 812
    .end local v2           #regWatchRes:Z
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 814
    .restart local v2       #regWatchRes:Z
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static reverseByte(II)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1167
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1168
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1169
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1170
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 1171
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before conversion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-static {v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->intToByteArray(I)[B

    move-result-object v3

    move v0, v1

    .line 1173
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1174
    const-string v4, "BluetoothThermometerServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bigByte in hex at i : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1179
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 1180
    invoke-static {v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->intToByteArray(I)[B

    move-result-object v0

    .line 1181
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1182
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "littleByte in hex at i : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1186
    :cond_1
    const-string v1, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after conversion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_2
    return-object v0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing the date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private reverseHexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1280
    const-string v1, ""

    .line 1281
    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1284
    :cond_0
    const-string v0, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After reversing Hex String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-object v1
.end method

.method private setClientConfDesc(Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;
    .locals 9
    .parameter "uuid"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    .line 1054
    sget-object v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v5, v5, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1055
    .local v3, objPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 1057
    .local v2, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 1058
    :cond_0
    const-string v5, "BluetoothThermometerServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object is null objPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gattService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1076
    :goto_0
    return-object v4

    .line 1063
    :cond_1
    shl-int/lit8 v5, p2, 0x8

    const v6, 0xff00

    and-int v0, v5, v6

    .line 1064
    .local v0, confVal:I
    const-string v5, "BluetoothThermometerServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Client char conf result for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " little en val : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :try_start_0
    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/BluetoothGattService;->setCharacteristicClientConf(Ljava/lang/String;I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1074
    .local v4, result:Ljava/lang/Boolean;
    :goto_1
    const-string v5, "BluetoothThermometerServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Client char conf result for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    .end local v4           #result:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 1071
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1072
    .restart local v4       #result:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private strSwap(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "inputStr"

    .prologue
    .line 1265
    const/4 v4, 0x0

    .line 1266
    .local v4, start:I
    const/4 v0, 0x0

    .line 1267
    .local v0, end:I
    const/4 v3, 0x0

    .line 1268
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1269
    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, lsb:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x2

    .line 1271
    add-int/lit8 v0, v4, 0x2

    .line 1272
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1273
    .local v2, msb:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .end local v1           #lsb:Ljava/lang/String;
    .end local v2           #msb:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private updateCharValue(Landroid/os/ParcelUuid;)V
    .locals 3
    .parameter

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharacteristic(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    const-string v0, "THERMOMETER_SERVICE_OP_READ"

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 1382
    :cond_0
    return-void
.end method

.method private updateCharacteristic(Landroid/os/ParcelUuid;)Z
    .locals 7
    .parameter "charUUID"

    .prologue
    .line 951
    const/4 v3, 0x0

    .line 952
    .local v3, result:Z
    sget-object v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v4, v4, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 953
    .local v2, objPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 955
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 956
    :cond_0
    const-string v4, "BluetoothThermometerServices"

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

    .line 958
    const/4 v4, 0x0

    .line 975
    :goto_0
    return v4

    .line 961
    :cond_1
    const-string v4, "BluetoothThermometerServices"

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

    .line 964
    if-eqz v1, :cond_2

    .line 965
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->updateCharacteristicValue(Ljava/lang/String;)Z

    move-result v3

    :goto_1
    move v4, v3

    .line 975
    goto :goto_0

    .line 967
    :cond_2
    const-string v4, "BluetoothThermometerServices"

    const-string v5, "GATTservice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    const/4 v3, 0x0

    goto :goto_1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 972
    const-string v4, "BluetoothThermometerServices"

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

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateDateTime(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "charUUID"

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharacteristic(Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method private writeCharacteristic(Landroid/os/ParcelUuid;[B)Z
    .locals 9
    .parameter "charUUID"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 1028
    sget-object v6, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v6, v6, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1029
    .local v3, objPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattService(Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 1032
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 1033
    :cond_0
    const-string v6, "BluetoothThermometerServices"

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

    .line 1050
    :goto_0
    return v5

    .line 1038
    :cond_1
    const-string v6, "BluetoothThermometerServices"

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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, p2

    if-ge v2, v6, :cond_2

    .line 1041
    const-string v6, "BluetoothThermometerServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p2, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v3, p2, v6}, Landroid/bluetooth/BluetoothGattService;->writeCharacteristicRaw(Ljava/lang/String;[BZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1045
    .local v4, result:Ljava/lang/Boolean;
    const-string v6, "BluetoothThermometerServices"

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

    .line 1050
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 1046
    .end local v4           #result:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 1047
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1048
    .restart local v4       #result:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private writeDateTime(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 5
    .parameter "uuid"
    .parameter "value"

    .prologue
    .line 1017
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date written : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :try_start_0
    invoke-static {p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToDate(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1024
    .local v0, dateByte:[B
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeCharacteristic(Landroid/os/ParcelUuid;[B)Z

    move-result v2

    .end local v0           #dateByte:[B
    :goto_0
    return v2

    .line 1020
    :catch_0
    move-exception v1

    .line 1021
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while parsing date time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeMeasurementInterval(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 8
    .parameter "uuid"
    .parameter "value"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 995
    const/4 v2, 0x0

    .line 996
    .local v2, msrInterval:I
    new-array v1, v5, [B

    .line 998
    .local v1, msrIntByte:[B
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 999
    const/4 v5, 0x1

    if-lt v2, v5, :cond_0

    const v5, 0xffff

    if-le v2, v5, :cond_1

    .line 1001
    :cond_0
    const-string v5, "BluetoothThermometerServices"

    const-string v6, "Measurement Interval Value out of range"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return v4

    .line 1004
    :cond_1
    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->reverseByte(II)[B

    move-result-object v3

    .line 1005
    .local v3, valByte:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v3, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeCharacteristic(Landroid/os/ParcelUuid;[B)Z

    move-result v4

    goto :goto_0

    .line 1007
    .end local v3           #valByte:[B
    :catch_0
    move-exception v0

    .line 1008
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BluetoothThermometerServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing msr interval "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 275
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "onBind thermometer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mBinder:Landroid/bluetooth/IBluetoothThermometerServices$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 231
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "onCreate thermometer service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 234
    iget-boolean v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mHasStarted:Z

    .line 236
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Creating thermometer service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 238
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 239
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Bluetooth is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    invoke-direct {v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;-><init>()V

    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    .line 241
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    .line 242
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    .line 243
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->tempTypeMap:Ljava/util/HashMap;

    .line 245
    invoke-direct {p0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->populateTempType()V

    .line 247
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "registering receiver handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->msgHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;->registerHandler(Landroid/os/Handler;)V

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->inFilter:Landroid/content/IntentFilter;

    .line 251
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->inFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.GATT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    invoke-direct {v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    .line 253
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Registering the receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->inFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0       #state:I
    :cond_1
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Bluetooth is not on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 293
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "onDestroy thermometer service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the thermometer health service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000180900001000800000805f9b34fb"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the thermometer health service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000180a00001000800000805f9b34fb"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->closeService(Landroid/os/ParcelUuid;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Unregistering the receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->receiver:Lcom/android/bluetooth/thermometer/BluetoothThermometerReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    .line 307
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Error while unregistering the receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 281
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "onRebind thermometer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 286
    const-string v0, "BluetoothThermometerServices"

    const-string v1, "onUnbind thermometer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x1

    return v0
.end method
