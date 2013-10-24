.class public interface abstract Lcom/android/bluetooth/map/IBluetoothMasApp;
.super Ljava/lang/Object;
.source "IBluetoothMasApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;
    }
.end annotation


# static fields
.field public static final HANDLE_OFFSET:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xd

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/IBluetoothMasApp;->HANDLE_OFFSET:[J

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x8t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x18t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x20t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x28t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x30t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x38t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x48t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x50t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x58t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method


# virtual methods
.method public abstract checkPrecondition()Z
.end method

.method public abstract folderListing(Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
.end method

.method public abstract folderListingSize()I
.end method

.method public abstract getMasId()I
.end method

.method public abstract msg(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
.end method

.method public abstract msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
.end method

.method public abstract msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
.end method

.method public abstract msgUpdate()I
.end method

.method public abstract notification(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
.end method

.method public abstract onConnect()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation
.end method

.method public abstract setPath(ZLjava/lang/String;)Z
.end method

.method public abstract stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
.end method
