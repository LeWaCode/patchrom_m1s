.class Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;
.super Ljava/lang/Object;
.source "BluetoothBppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/bpp/BluetoothBppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 154
    const-string v0, "BluetoothBppActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click\'d Printing button - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z
    invoke-static {v2}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->access$000(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z
    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->access$000(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppActivity;Z)Z

    .line 159
    sget v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->JobChannel:I

    if-eq v0, v4, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "BluetoothBppActivity"

    const-string v1, " Sending Message from BPPActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v1, 0xe

    sget v2, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->JobChannel:I

    sget v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->StatusChannel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
