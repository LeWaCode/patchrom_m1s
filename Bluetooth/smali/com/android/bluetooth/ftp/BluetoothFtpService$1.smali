.class Lcom/android/bluetooth/ftp/BluetoothFtpService$1;
.super Landroid/os/Handler;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 855
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 955
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 857
    :sswitch_1
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1000(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 858
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->startRfcommSocketListener()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1100(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    .line 859
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->startL2capSocketListener()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 861
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1300(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 865
    :sswitch_2
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v8, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v8, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 870
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z
    invoke-static {v8, v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$802(Lcom/android/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 871
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 874
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.bluetooth.ftp.userconfirmtimeout"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v4, i:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v8, v4}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 876
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const v9, -0xf4246

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/android/bluetooth/ftp/BluetoothFtpService;I)V

    .line 877
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyAuthCancelled()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    .line 878
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 881
    .end local v4           #i:Landroid/content/Intent;
    :sswitch_4
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 889
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 890
    .local v0, arguments:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x6

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v8, v0, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 894
    .end local v0           #arguments:Landroid/os/Bundle;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 895
    .local v1, delarguments:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v8, v1, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 899
    .end local v1           #delarguments:Landroid/os/Bundle;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 900
    .local v2, delfilesarguments:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/16 v9, 0x9

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v8, v2, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 904
    .end local v2           #delfilesarguments:Landroid/os/Bundle;
    :sswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 905
    .local v6, newfilearguments:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/16 v9, 0x8

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v8, v6, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 910
    .end local v6           #newfilearguments:Landroid/os/Bundle;
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    .line 915
    .local v7, uri:Landroid/net/Uri;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eq v8, v9, :cond_2

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_0

    .line 916
    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyContentResolver(Landroid/net/Uri;)V
    invoke-static {v8, v7}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 925
    .end local v7           #uri:Landroid/net/Uri;
    :sswitch_a
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1900(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 926
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 927
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2000(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 928
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 929
    :catch_0
    move-exception v3

    .line 930
    .local v3, ex:Ljava/io/IOException;
    const-string v8, "BluetoothFtpService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CloseSocket error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 939
    .end local v3           #ex:Ljava/io/IOException;
    :sswitch_b
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2000(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 940
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 941
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1900(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 942
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v9, 0x0

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 943
    :catch_1
    move-exception v3

    .line 944
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v8, "BluetoothFtpService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CloseSocket error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 948
    .end local v3           #ex:Ljava/io/IOException;
    :sswitch_c
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const-string v9, "com.android.bluetooth.ftp.authchall"

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->createFtpNotification(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2100(Lcom/android/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 949
    iget-object v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x138c -> :sswitch_4
        0x138d -> :sswitch_0
        0x138e -> :sswitch_0
        0x138f -> :sswitch_c
        0x1390 -> :sswitch_5
        0x1391 -> :sswitch_6
        0x1392 -> :sswitch_8
        0x1393 -> :sswitch_7
    .end sparse-switch
.end method
