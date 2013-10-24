.class Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;
.super Ljava/lang/Thread;
.source "BluetoothBppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->setConfirmed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v1, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->unblock()V

    .line 886
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 887
    monitor-exit v1

    .line 888
    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
