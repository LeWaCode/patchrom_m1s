.class public Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;
.super Ljava/lang/Object;
.source "BluetoothThermometerDevice.java"


# instance fields
.field public BDevice:Landroid/bluetooth/BluetoothDevice;

.field public gattService:Landroid/bluetooth/BluetoothGattService;

.field public objPathUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

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
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    .line 41
    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->gattService:Landroid/bluetooth/BluetoothGattService;

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    return-void
.end method
