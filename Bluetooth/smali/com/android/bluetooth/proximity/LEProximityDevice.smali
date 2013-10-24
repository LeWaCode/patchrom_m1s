.class public Lcom/android/bluetooth/proximity/LEProximityDevice;
.super Ljava/lang/Object;
.source "LEProximityDevice.java"


# instance fields
.field public BDevice:Landroid/bluetooth/BluetoothDevice;

.field public gattService:Landroid/bluetooth/BluetoothGattService;

.field public isConnectionParamSet:Z

.field public isConnectionParamUpdated:Z

.field public linkLossAlertLevel:I

.field public objPathUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pathLossThresh:I

.field public rssi:B

.field public rssiInterval:I

.field public rssiThresh:I

.field public txPower:B

.field public uuidGattSrvMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/ParcelUuid;",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public uuidObjPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->gattService:Landroid/bluetooth/BluetoothGattService;

    .line 40
    iput-boolean v1, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamSet:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->isConnectionParamUpdated:Z

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->linkLossAlertLevel:I

    .line 48
    iput v1, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->pathLossThresh:I

    .line 49
    iput v1, p0, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    return-void
.end method
