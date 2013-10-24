.class Lcom/android/bluetooth/opp/BluetoothOppService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_0
    const-string v1, "BtOpp Service"

    const-string v2, "Receiver BLUETOOTH_STATE_CHANGED_ACTION, BLUETOOTH_STATE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto :goto_0

    .line 381
    :pswitch_1
    const-string v1, "BtOpp Service"

    const-string v2, "Receiver DISABLED_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mRfcommSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 383
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mL2capSocketListener:Lcom/android/bluetooth/opp/BluetoothOppL2capListener;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppL2capListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppL2capListener;->stop()V

    .line 384
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1202(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 385
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v2

    .line 386
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppService;->mbStopSelf:Z

    .line 387
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 388
    const-string v1, "BtOpp Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread is not running, OPP size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Bpp size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 392
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppService;->mbStopSelf:Z

    .line 395
    :cond_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 374
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
