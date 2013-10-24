.class public Lcom/android/bluetooth/bpp/BluetoothBppConstant;
.super Ljava/lang/Object;
.source "BluetoothBppConstant.java"


# static fields
.field public static final DPS_Target_UUID:[B

.field public static final DPS_UUID128:Landroid/os/ParcelUuid;

.field public static final PBR_Target_UUID:[B

.field public static final PBR_UUID128:Landroid/os/ParcelUuid;

.field public static final RUI_Target_UUID:[B

.field public static final RUI_UUID128:Landroid/os/ParcelUuid;

.field public static final STS_Target_UUID:[B

.field public static final STS_UUID128:Landroid/os/ParcelUuid;

.field public static mSupportedDocs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->mSupportedDocs:Ljava/lang/String;

    .line 79
    const-string v0, "00001118-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->DPS_UUID128:Landroid/os/ParcelUuid;

    .line 83
    const-string v0, "00001119-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->PBR_UUID128:Landroid/os/ParcelUuid;

    .line 87
    const-string v0, "00001121-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->RUI_UUID128:Landroid/os/ParcelUuid;

    .line 91
    const-string v0, "00001123-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->STS_UUID128:Landroid/os/ParcelUuid;

    .line 95
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->DPS_Target_UUID:[B

    .line 102
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->PBR_Target_UUID:[B

    .line 109
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->RUI_Target_UUID:[B

    .line 116
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->STS_Target_UUID:[B

    return-void

    .line 95
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x18t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 102
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x19t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 109
    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x21t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 116
    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x23t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
