.class Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;
.super Ljava/lang/Object;
.source "BluetoothBppStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 83
    const-string v0, "BluetoothBppStatusActivity"

    const-string v1, "Click\'d bpp_cancel_button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v1, 0x14

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->finish()V

    .line 90
    return-void
.end method
