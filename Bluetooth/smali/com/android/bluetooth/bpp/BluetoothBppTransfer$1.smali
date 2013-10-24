.class Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;
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
    .line 186
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_0
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Received DISABLED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->ForceCloseBpp()V
    invoke-static {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$000(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    goto :goto_0

    .line 199
    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_2

    .line 202
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Receive ACTION_ACL_DISCONNECTED, device null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_2
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ACL_DISCONNECTED for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "- Printer device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v4, v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z
    invoke-static {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTION_ACL_DISCONNECTED - batch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v4, v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v3, 0x206

    iput v3, v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 210
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->ForceCloseBpp()V
    invoke-static {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$000(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    .line 211
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
