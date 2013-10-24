.class Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothBppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/btobex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/btobex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v2, 0x0

    .line 205
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    .line 207
    const-string v1, "BtBpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 203
    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    .line 208
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 209
    iput-object p3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    .line 210
    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->waitingForShare:Z

    .line 211
    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 214
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothBppObexClientSession"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    return-void
.end method

.method private connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 349
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :try_start_0
    new-instance v3, Ljavax/btobex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/btobex/ClientSession;-><init>(Ljavax/btobex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    .line 352
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$300(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/btobex/ClientSession;->setAuthenticator(Ljavax/btobex/Authenticator;)V

    .line 353
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    const v4, 0xfde8

    invoke-virtual {v3, v4}, Ljavax/btobex/ClientSession;->setMaxPacketSize(I)V

    .line 354
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_1

    .line 359
    iput-boolean v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    .line 360
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 363
    .local v2, hs:Ljavax/btobex/HeaderSet;
    sget-boolean v3, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    if-ne v3, v6, :cond_0

    .line 364
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "OBEX Authentication is initiated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v2, v3, v4, v5}, Ljavax/btobex/HeaderSet;->createAuthenticationChallenge(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :cond_0
    :goto_1
    const/16 v3, 0x46

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->DPS_Target_UUID:[B

    invoke-virtual {v2, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 374
    monitor-enter p0

    .line 375
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 376
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/btobex/ClientSession;->connect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 379
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 386
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :cond_1
    :goto_2
    monitor-enter p0

    .line 387
    :try_start_4
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 388
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/btobex/HeaderSet;
    :catch_1
    move-exception v1

    .line 368
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 376
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 381
    :catch_2
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/16 v3, 0x1f1

    invoke-direct {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto :goto_2

    .line 388
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/btobex/ClientSession;->disconnect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    .line 324
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    .line 326
    :cond_0
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v1}, Ljavax/btobex/ClientSession;->close()V

    .line 334
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_2

    .line 341
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    :cond_2
    :goto_2
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothBppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 337
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BluetoothBppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 343
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    .line 401
    const/16 v2, 0xc8

    .line 403
    .local v2, status:I
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "OBEX: Sending data ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_0

    .line 407
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 410
    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_1

    .line 415
    const/16 v2, 0x1f1

    .line 416
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "no OBEX Connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    if-ne v2, v7, :cond_3

    .line 420
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 427
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->waitingForShare:Z

    .line 431
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iput-boolean v6, v3, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    .line 432
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    const/16 v4, 0x18

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 435
    if-ne v2, v7, :cond_4

    .line 436
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 437
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 438
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 439
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 444
    .end local v1           #msg:Landroid/os/Message;
    :goto_3
    return-void

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 429
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 442
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto :goto_3
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 450
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client thread processShareInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 454
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 455
    :cond_0
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 491
    :goto_0
    return-object v1

    .line 460
    :cond_1
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v3, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mScreenshot:[B

    if-eqz v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const-string v4, "bt_shared_screenshot.jpg"

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$402(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mScreenshot:[B

    array-length v4, v4

    int-to-long v4, v4

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$502(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;J)J

    .line 469
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const-string v4, "image/jpeg"

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$602(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    const-string v3, "BluetoothBppObexClientSession"

    const-string v4, "Screenshot image file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static {v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v3, "BluetoothBppObexClientSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v2, updateValues:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 486
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "total_bytes"

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 488
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 478
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #updateValues:Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$402(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$502(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;J)J

    .line 480
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$602(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private sendErrorReport(I)V
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput p1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 396
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 32
    .parameter "fileInfo"

    .prologue
    .line 716
    const/4 v9, 0x0

    .line 717
    .local v9, error:Z
    const/16 v21, -0x1

    .line 718
    .local v21, responseCode:I
    const/16 v17, 0x0

    .line 719
    .local v17, position:I
    const/16 v22, 0xc8

    .line 720
    .local v22, status:I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 723
    .local v7, contentUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 724
    .local v12, newBufferSize:I
    const/4 v11, 0x0

    .line 726
    .local v11, newBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 727
    const/16 v22, 0x1f0

    .line 728
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "BPP Error: Missing JobId"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v22

    .line 976
    .end local v22           #status:I
    .local v23, status:I
    :goto_0
    return v23

    .line 732
    .end local v23           #status:I
    .restart local v22       #status:I
    :cond_0
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sendFile - File name: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n\t Mime Type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n\t Size: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x18

    const/16 v29, 0x1

    const/16 v30, -0x1

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 740
    sget-object v27, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_Progress:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 741
    new-instance v20, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v20 .. v20}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 742
    .local v20, request:Ljavax/btobex/HeaderSet;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->checkUnknownMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, newMimeType:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 746
    const/16 v27, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 747
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "set new MIME Type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_1
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 754
    .local v5, appParam:[B
    const/16 v27, 0x0

    const/16 v28, 0x3

    aput-byte v28, v5, v27

    .line 755
    const/16 v27, 0x1

    const/16 v28, 0x4

    aput-byte v28, v5, v27

    .line 756
    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    move-object/from16 v28, v0

    const/16 v29, 0x3

    aget-byte v28, v28, v29

    aput-byte v28, v5, v27

    .line 757
    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget-byte v28, v28, v29

    aput-byte v28, v5, v27

    .line 758
    const/16 v27, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget-byte v28, v28, v29

    aput-byte v28, v5, v27

    .line 759
    const/16 v27, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-byte v28, v28, v29

    aput-byte v28, v5, v27

    .line 760
    const/16 v27, 0x4c

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 762
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/btobex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    const/16 v29, 0xc0

    invoke-static/range {v27 .. v29}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 766
    const/16 v27, 0xc3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 767
    const/16 v18, 0x0

    .line 768
    .local v18, putOperation:Ljavax/btobex/ClientOperation;
    const/16 v16, 0x0

    .line 769
    .local v16, outputStream:Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 771
    .local v10, inputStream:Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 772
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 773
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :try_start_2
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "put headerset for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/btobex/ClientSession;->put(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 784
    :goto_2
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    .line 785
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 786
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 788
    if-nez v9, :cond_1

    .line 790
    :try_start_5
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "openOutputStream "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 792
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    .line 801
    :cond_1
    :goto_3
    if-nez v9, :cond_2

    .line 802
    :try_start_6
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 803
    .local v26, updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    const-string v27, "status"

    const/16 v28, 0xc0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 808
    .end local v26           #updateValues:Landroid/content/ContentValues;
    :cond_2
    if-nez v9, :cond_1d

    .line 809
    const/16 v19, 0x0

    .line 810
    .local v19, readLength:I
    const/4 v14, 0x0

    .line 811
    .local v14, okToProceed:Z
    const-wide/16 v24, 0x0

    .line 812
    .local v24, timestamp:J
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v15

    .line 813
    .local v15, outputBufferSize:I
    new-array v6, v15, [B

    .line 814
    .local v6, buffer:[B
    const/4 v4, 0x0

    .line 816
    .local v4, a:Ljava/io/BufferedInputStream;
    sget-object v27, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mScreenshot:[B

    if-eqz v27, :cond_f

    .line 817
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4           #a:Ljava/io/BufferedInputStream;
    new-instance v27, Ljava/io/ByteArrayInputStream;

    sget-object v28, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mScreenshot:[B

    invoke-direct/range {v27 .. v28}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v28, 0x4000

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 821
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_4

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 822
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v6, v0, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    .line 824
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 825
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 826
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 828
    const/16 v27, 0x0

    :try_start_8
    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 829
    add-int v17, v17, v19

    .line 830
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Obex Packet size - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v27, 0x0

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->updateProgress(II)V

    .line 833
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_19

    .line 834
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    .line 835
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 836
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 846
    :goto_5
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 848
    const/16 v27, 0x90

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 850
    :cond_3
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Remote accept"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v14, 0x1

    .line 852
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    .end local v26           #updateValues:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, 0x3

    add-int v27, v27, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x3

    add-int v27, v27, v28

    array-length v0, v5

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x3

    add-int v27, v27, v28

    add-int/lit8 v12, v27, 0x5

    .line 868
    new-array v11, v12, [B

    .line 871
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_1c

    if-eqz v14, :cond_1c

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 874
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v11, v0, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    .line 875
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 876
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "New Obex Packet size - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 880
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    .line 881
    const/16 v27, 0x90

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    .line 884
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 750
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #appParam:[B
    .end local v6           #buffer:[B
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v14           #okToProceed:Z
    .end local v15           #outputBufferSize:I
    .end local v16           #outputStream:Ljava/io/OutputStream;
    .end local v18           #putOperation:Ljavax/btobex/ClientOperation;
    .end local v19           #readLength:I
    .end local v24           #timestamp:J
    :cond_5
    const/16 v27, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v28, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 773
    .restart local v5       #appParam:[B
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    .restart local v18       #putOperation:Ljavax/btobex/ClientOperation;
    :catchall_0
    move-exception v27

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 930
    :catch_0
    move-exception v8

    .line 931
    .local v8, e:Ljava/io/IOException;
    const/16 v22, 0x1f0

    .line 938
    :try_start_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 939
    if-nez v9, :cond_8

    .line 940
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 941
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    .line 942
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Get response code "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 944
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v22, 0x1ef

    .line 946
    const/16 v27, 0xcf

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 947
    const/16 v22, 0x196

    .line 949
    :cond_6
    const/16 v27, 0xc3

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v27, 0xc6

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 951
    :cond_7
    const/16 v22, 0x193

    .line 959
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 961
    if-eqz v10, :cond_9

    .line 962
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 964
    :cond_9
    if-eqz v18, :cond_a

    .line 965
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .end local v8           #e:Ljava/io/IOException;
    :cond_a
    :goto_9
    move/from16 v23, v22

    .line 976
    .end local v22           #status:I
    .restart local v23       #status:I
    goto/16 :goto_0

    .line 777
    .end local v23           #status:I
    .restart local v22       #status:I
    :catch_1
    move-exception v8

    .line 778
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v22, 0x1f0

    .line 779
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 781
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when put HeaderSet "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_5

    .line 782
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 786
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v27

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_5

    .line 932
    :catch_2
    move-exception v8

    .line 933
    .local v8, e:Ljava/lang/NullPointerException;
    const/16 v22, 0x1f0

    .line 938
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 939
    if-nez v9, :cond_d

    .line 940
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 941
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_28

    .line 942
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Get response code "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 944
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v22, 0x1ef

    .line 946
    const/16 v27, 0xcf

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 947
    const/16 v22, 0x196

    .line 949
    :cond_b
    const/16 v27, 0xc3

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    const/16 v27, 0xc6

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 951
    :cond_c
    const/16 v22, 0x193

    .line 959
    :cond_d
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 961
    if-eqz v10, :cond_e

    .line 962
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 964
    :cond_e
    if-eqz v18, :cond_a

    .line 965
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_9

    .line 967
    :catch_3
    move-exception v8

    .line 968
    .local v8, e:Ljava/io/IOException;
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when closing stream after send"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    .line 973
    :goto_b
    const/16 v22, 0x193

    goto/16 :goto_9

    .line 793
    .end local v8           #e:Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 794
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v22, 0x1f0

    .line 795
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 796
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when openOutputStream"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 819
    .end local v8           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v6       #buffer:[B
    .restart local v14       #okToProceed:Z
    .restart local v15       #outputBufferSize:I
    .restart local v19       #readLength:I
    .restart local v24       #timestamp:J
    :cond_f
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4           #a:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x4000

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_5

    .restart local v4       #a:Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 826
    :catchall_2
    move-exception v27

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5

    .line 934
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v6           #buffer:[B
    .end local v14           #okToProceed:Z
    .end local v15           #outputBufferSize:I
    .end local v19           #readLength:I
    .end local v24           #timestamp:J
    :catch_5
    move-exception v8

    .line 935
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v22, 0x1f0

    .line 938
    :try_start_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 939
    if-nez v9, :cond_12

    .line 940
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 941
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_29

    .line 942
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Get response code "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    .line 944
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v22, 0x1ef

    .line 946
    const/16 v27, 0xcf

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 947
    const/16 v22, 0x196

    .line 949
    :cond_10
    const/16 v27, 0xc3

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    const/16 v27, 0xc6

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 951
    :cond_11
    const/16 v22, 0x193

    .line 959
    :cond_12
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 961
    if-eqz v10, :cond_13

    .line 962
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 964
    :cond_13
    if-eqz v18, :cond_a

    .line 965
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_9

    .line 967
    :catch_6
    move-exception v8

    .line 968
    .local v8, e:Ljava/io/IOException;
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when closing stream after send"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    goto/16 :goto_b

    .line 836
    .end local v8           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v6       #buffer:[B
    .restart local v14       #okToProceed:Z
    .restart local v15       #outputBufferSize:I
    .restart local v19       #readLength:I
    .restart local v24       #timestamp:J
    :catchall_3
    move-exception v27

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    throw v27
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_5

    .line 937
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v6           #buffer:[B
    .end local v14           #okToProceed:Z
    .end local v15           #outputBufferSize:I
    .end local v19           #readLength:I
    .end local v24           #timestamp:J
    :catchall_4
    move-exception v27

    .line 938
    :try_start_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 939
    if-nez v9, :cond_16

    .line 940
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 941
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_2a

    .line 942
    const-string v28, "BluetoothBppObexClientSession"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Get response code "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v28, 0xa0

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_16

    .line 944
    const-string v28, "BluetoothBppObexClientSession"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response error code is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v22, 0x1ef

    .line 946
    const/16 v28, 0xcf

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 947
    const/16 v22, 0x196

    .line 949
    :cond_14
    const/16 v28, 0xc3

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    const/16 v28, 0xc6

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 951
    :cond_15
    const/16 v22, 0x193

    .line 959
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 961
    if-eqz v10, :cond_17

    .line 962
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 964
    :cond_17
    if-eqz v18, :cond_18

    .line 965
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    .line 937
    :cond_18
    :goto_e
    throw v27

    .line 840
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v6       #buffer:[B
    .restart local v14       #okToProceed:Z
    .restart local v15       #outputBufferSize:I
    .restart local v19       #readLength:I
    .restart local v24       #timestamp:J
    :cond_19
    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 841
    monitor-enter p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_5

    .line 842
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 843
    monitor-exit p0

    goto/16 :goto_5

    :catchall_5
    move-exception v27

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    throw v27

    .line 857
    :cond_1a
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject, Response code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v27, v0

    const-string v28, "\"Printer reject operation\""

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinterStateReason:Ljava/lang/String;

    goto/16 :goto_6

    .line 886
    :cond_1b
    add-int v17, v17, v19

    .line 887
    const/16 v27, 0x0

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->updateProgress(II)V

    .line 889
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Sending file position = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " readLength "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " bytes took "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v24

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .restart local v26       #updateValues:Landroid/content/ContentValues;
    const-string v27, "current_bytes"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 900
    .end local v26           #updateValues:Landroid/content/ContentValues;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_22

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 903
    const/4 v9, 0x1

    .line 904
    const/16 v22, 0x1ea

    .line 906
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->abort()V

    .line 908
    const-string v27, "CancelJob"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendSoapRequest(Ljava/lang/String;)I

    .line 910
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SendFile interrupted when send out file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " at "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " of "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_5

    .line 938
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v6           #buffer:[B
    .end local v14           #okToProceed:Z
    .end local v15           #outputBufferSize:I
    .end local v19           #readLength:I
    .end local v24           #timestamp:J
    :cond_1d
    :goto_f
    :try_start_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 939
    if-nez v9, :cond_20

    .line 940
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v21

    .line 941
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_2b

    .line 942
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Get response code "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v27, 0xa0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    .line 944
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v22, 0x1ef

    .line 946
    const/16 v27, 0xcf

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 947
    const/16 v22, 0x196

    .line 949
    :cond_1e
    const/16 v27, 0xc3

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_1f

    const/16 v27, 0xc6

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 951
    :cond_1f
    const/16 v22, 0x193

    .line 959
    :cond_20
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 961
    if-eqz v10, :cond_21

    .line 962
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 964
    :cond_21
    if-eqz v18, :cond_a

    .line 965
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7

    goto/16 :goto_9

    .line 967
    :catch_7
    move-exception v8

    .line 968
    .restart local v8       #e:Ljava/io/IOException;
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when closing stream after send"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    goto/16 :goto_b

    .line 912
    .end local v8           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v6       #buffer:[B
    .restart local v14       #okToProceed:Z
    .restart local v15       #outputBufferSize:I
    .restart local v19       #readLength:I
    .restart local v24       #timestamp:J
    :cond_22
    const/16 v27, 0xc3

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_23

    const/16 v27, 0xc6

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 914
    :cond_23
    :try_start_1d
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " length "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 915
    :cond_24
    const/16 v27, 0xcf

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 916
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Remote reject file type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 917
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v27, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v27

    if-nez v27, :cond_26

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-nez v27, :cond_26

    .line 918
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SendFile finished send out file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " length "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_f

    .line 922
    :cond_26
    const/4 v9, 0x1

    .line 923
    const/16 v22, 0x1ea

    .line 924
    invoke-virtual/range {v18 .. v18}, Ljavax/btobex/ClientOperation;->abort()V

    .line 926
    const-string v27, "BluetoothBppObexClientSession"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SendFile interrupted when send out file "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " at "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " of "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_f

    .line 967
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v6           #buffer:[B
    .end local v14           #okToProceed:Z
    .end local v15           #outputBufferSize:I
    .end local v19           #readLength:I
    .end local v24           #timestamp:J
    .restart local v8       #e:Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 968
    const-string v27, "BluetoothBppObexClientSession"

    const-string v28, "Error when closing stream after send"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v29, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v29 .. v29}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v29

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    goto/16 :goto_b

    .line 956
    :cond_27
    const/16 v22, 0x1f1

    goto/16 :goto_8

    .local v8, e:Ljava/lang/NullPointerException;
    :cond_28
    const/16 v22, 0x1f1

    goto/16 :goto_a

    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_29
    const/16 v22, 0x1f1

    goto/16 :goto_c

    .line 967
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_9
    move-exception v8

    .line 968
    .local v8, e:Ljava/io/IOException;
    const-string v28, "BluetoothBppObexClientSession"

    const-string v29, "Error when closing stream after send"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v30, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J
    invoke-static/range {v30 .. v30}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J

    move-result-wide v30

    cmp-long v28, v28, v30

    if-eqz v28, :cond_18

    .line 973
    const/16 v22, 0x193

    goto/16 :goto_e

    .line 956
    .end local v8           #e:Ljava/io/IOException;
    :cond_2a
    const/16 v22, 0x1f1

    goto/16 :goto_d

    :cond_2b
    const/16 v22, 0x1f1

    goto/16 :goto_10
.end method

.method private declared-synchronized sendSoapRequest(Ljava/lang/String;)I
    .locals 28
    .parameter "soapReq"

    .prologue
    .line 495
    monitor-enter p0

    const/4 v4, 0x0

    .line 496
    .local v4, error:Z
    const/4 v15, -0x1

    .line 498
    .local v15, responseCode:I
    const/16 v20, 0xc8

    .line 499
    .local v20, status:I
    const/16 v16, 0x0

    .line 501
    .local v16, responseLength:I
    const/4 v5, 0x0

    .line 502
    .local v5, getOperation:Ljavax/btobex/ClientOperation;
    const/4 v9, 0x0

    .line 503
    .local v9, outputStream:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 505
    .local v6, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljavax/btobex/HeaderSet;

    invoke-direct {v14}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 506
    .local v14, request:Ljavax/btobex/HeaderSet;
    const/16 v24, 0x42

    const-string v25, "x-obex/bt-SOAP"

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 510
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljavax/btobex/ClientSession;->get(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 515
    :goto_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 517
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    if-nez v4, :cond_0

    .line 521
    :try_start_4
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 529
    :cond_0
    :goto_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_9

    .line 530
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 531
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 533
    if-nez v4, :cond_16

    .line 534
    const/4 v10, 0x0

    .line 535
    .local v10, position:I
    const/4 v8, 0x0

    .line 536
    .local v8, offset:I
    const/4 v12, 0x0

    .line 537
    .local v12, readLength:I
    const/4 v13, 0x0

    .line 538
    .local v13, remainedData:I
    const-wide/16 v22, 0x0

    .line 539
    .local v22, timestamp:J
    :try_start_7
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v7

    .line 540
    .local v7, maxBuffSize:I
    const/4 v11, 0x0

    .line 541
    .local v11, readBuff:[B
    const/16 v17, 0x0

    .line 542
    .local v17, soapMsg:Ljava/lang/String;
    const/16 v18, 0x0

    .line 545
    .local v18, soapRequestSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->Builder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 546
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v24

    if-nez v24, :cond_16

    move/from16 v0, v18

    if-eq v10, v0, :cond_16

    .line 549
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_9

    .line 550
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 551
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 553
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 556
    :goto_2
    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    .line 558
    sub-int v13, v18, v10

    .line 559
    if-le v7, v13, :cond_5

    move v12, v13

    .line 561
    :goto_3
    const-string v24, "BluetoothBppObexClientSession"

    const-string v25, "Soap Request is now being sent..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v10, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 565
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v15

    .line 567
    const-string v25, "BluetoothBppObexClientSession"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Rx - OBEX Response: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v24, 0x90

    move/from16 v0, v24

    if-ne v15, v0, :cond_6

    const-string v24, "Continue"

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v24, 0x90

    move/from16 v0, v24

    if-eq v15, v0, :cond_8

    const/16 v24, 0xa0

    move/from16 v0, v24

    if-eq v15, v0, :cond_8

    .line 574
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 575
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9

    .line 577
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_1a

    .line 697
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move/from16 v21, v20

    .line 703
    .end local v20           #status:I
    .local v21, status:I
    :goto_5
    if-eqz v5, :cond_1

    .line 705
    :try_start_b
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_1
    :goto_6
    move/from16 v24, v20

    move/from16 v20, v21

    .line 712
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v21           #status:I
    .end local v22           #timestamp:J
    .restart local v20       #status:I
    :goto_7
    monitor-exit p0

    return v24

    .line 511
    :catch_0
    move-exception v3

    .line 512
    .local v3, e:Ljava/io/IOException;
    :try_start_c
    const-string v24, "BluetoothBppObexClientSession"

    const-string v25, "Error when get HeaderSet "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 513
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 517
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v24

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v24
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 495
    .end local v14           #request:Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v24

    :goto_8
    monitor-exit p0

    throw v24

    .line 522
    .restart local v14       #request:Ljavax/btobex/HeaderSet;
    :catch_1
    move-exception v3

    .line 523
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_f
    const-string v24, "BluetoothBppObexClientSession"

    const-string v25, "Error when openOutputStream"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 524
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 531
    .end local v3           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v24

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_9

    .line 683
    :catch_2
    move-exception v3

    .line 684
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_12
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " IOException e) : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 685
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_2

    .line 697
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 703
    :cond_2
    :goto_9
    if-eqz v5, :cond_3

    .line 705
    :try_start_14
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :goto_a
    move/from16 v24, v20

    .line 712
    goto :goto_7

    .line 551
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :catchall_3
    move-exception v24

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v24
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_9

    .line 686
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v22           #timestamp:J
    :catch_3
    move-exception v3

    .line 687
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_17
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " NullPointerException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 688
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_4

    .line 697
    :try_start_18
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 703
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_4
    :goto_b
    if-eqz v5, :cond_3

    .line 705
    :try_start_19
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_a

    .line 706
    :catch_4
    move-exception v3

    .line 707
    .local v3, e:Ljava/io/IOException;
    :try_start_1a
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 708
    const/16 v20, 0x1f0

    .line 709
    goto :goto_a

    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :cond_5
    move v12, v7

    .line 559
    goto/16 :goto_3

    .line 567
    :cond_6
    const/16 v24, 0xa0

    move/from16 v0, v24

    if-ne v15, v0, :cond_7

    :try_start_1b
    const-string v24, "SUCCESS"

    goto/16 :goto_4

    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_9

    move-result-object v24

    goto/16 :goto_4

    .line 698
    :catch_5
    move-exception v3

    .line 699
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_1c
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 700
    const/16 v21, 0x1f0

    .end local v20           #status:I
    .restart local v21       #status:I
    goto/16 :goto_5

    .line 706
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 707
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_1d
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 708
    const/16 v21, 0x1f0

    goto/16 :goto_6

    .line 582
    .end local v3           #e:Ljava/io/IOException;
    .end local v21           #status:I
    .restart local v20       #status:I
    :cond_8
    :try_start_1e
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_9

    if-nez v11, :cond_9

    .line 583
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get OBEX Length - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v16, v0

    .line 586
    move/from16 v0, v16

    new-array v11, v0, [B

    .line 589
    :cond_9
    add-int/2addr v10, v12

    .line 591
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Soap Request is sent...\r\n - Total Size : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\r\n - Sent Size  : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\r\n - Taken Time : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_2

    .line 689
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v22           #timestamp:J
    :catch_7
    move-exception v3

    .line 690
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1f
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " IndexOutOfBoundsException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 691
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_a

    .line 697
    :try_start_20
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12

    .line 703
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_a
    :goto_c
    if-eqz v5, :cond_3

    .line 705
    :try_start_21
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8

    goto/16 :goto_a

    .line 706
    :catch_8
    move-exception v3

    .line 707
    .local v3, e:Ljava/io/IOException;
    :try_start_22
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 708
    const/16 v20, 0x1f0

    .line 709
    goto/16 :goto_a

    .line 600
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :cond_b
    :try_start_23
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 602
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_9

    .line 603
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    .line 604
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 607
    :try_start_25
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 611
    :goto_d
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v15

    const/16 v24, 0x90

    move/from16 v0, v24

    if-ne v15, v0, :cond_11

    .line 612
    const-string v24, "BluetoothBppObexClientSession"

    const-string v25, "Rx - OBEX Response: Continue"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_c

    if-nez v11, :cond_c

    .line 615
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get OBEX Length - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v16, v0

    .line 617
    move/from16 v0, v16

    new-array v11, v0, [B

    .line 620
    :cond_c
    if-eqz v11, :cond_10

    .line 621
    sub-int v24, v16, v8

    move/from16 v0, v24

    invoke-virtual {v6, v11, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    add-int v8, v8, v24

    .line 623
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "OBEX Data Read: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_9

    goto :goto_d

    .line 692
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v22           #timestamp:J
    :catch_9
    move-exception v3

    .line 693
    .local v3, e:Ljava/lang/InterruptedException;
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_d

    .line 697
    :try_start_26
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_13

    .line 703
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_d
    :goto_e
    if-eqz v5, :cond_3

    .line 705
    :try_start_27
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_a

    goto/16 :goto_a

    .line 706
    :catch_a
    move-exception v3

    .line 707
    .local v3, e:Ljava/io/IOException;
    :try_start_28
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 708
    const/16 v20, 0x1f0

    .line 709
    goto/16 :goto_a

    .line 604
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :catchall_4
    move-exception v24

    :try_start_29
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    :try_start_2a
    throw v24
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_9

    .line 695
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v22           #timestamp:J
    :catchall_5
    move-exception v24

    if-eqz v6, :cond_e

    .line 697
    :try_start_2b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_14

    .line 703
    :cond_e
    :goto_f
    if-eqz v5, :cond_f

    .line 705
    :try_start_2c
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_15

    .line 709
    :cond_f
    :goto_10
    :try_start_2d
    throw v24
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 626
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :cond_10
    const/16 v24, 0x1

    const/16 v25, 0x1

    :try_start_2e
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljavax/btobex/ClientOperation;->continueOperation(ZZ)Z

    .line 627
    const-wide/16 v24, 0xa

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_d

    .line 631
    :cond_11
    const/16 v24, 0xa0

    move/from16 v0, v24

    if-ne v15, v0, :cond_18

    .line 632
    const-string v24, "BluetoothBppObexClientSession"

    const-string v25, "OBEX GET: SUCCESS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get OBEX Length - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-nez v16, :cond_12

    .line 636
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_12

    if-nez v11, :cond_12

    .line 637
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get OBEX Length - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v16, v0

    .line 640
    move/from16 v0, v16

    new-array v11, v0, [B

    .line 644
    :cond_12
    if-eqz v11, :cond_16

    .line 645
    move/from16 v0, v16

    if-eq v8, v0, :cond_13

    .line 646
    sub-int v24, v16, v8

    move/from16 v0, v24

    invoke-virtual {v6, v11, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    add-int v8, v8, v24

    .line 648
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "OBEX Data Read: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_13
    move/from16 v0, v16

    if-eq v8, v0, :cond_15

    .line 653
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "OBEX Data Read: Fail!! - missing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-int v26, v16, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_2e} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2e .. :try_end_2e} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_9

    .line 655
    const/16 v20, 0x1f0

    .line 695
    if-eqz v6, :cond_19

    .line 697
    :try_start_2f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_b

    move/from16 v21, v20

    .line 703
    .end local v20           #status:I
    .restart local v21       #status:I
    :goto_11
    if-eqz v5, :cond_14

    .line 705
    :try_start_30
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_c

    :cond_14
    :goto_12
    move/from16 v24, v20

    move/from16 v20, v21

    .line 709
    .end local v21           #status:I
    .restart local v20       #status:I
    goto/16 :goto_7

    .line 698
    :catch_b
    move-exception v3

    .line 699
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_31
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 700
    const/16 v21, 0x1f0

    .end local v20           #status:I
    .restart local v21       #status:I
    goto :goto_11

    .line 706
    .end local v3           #e:Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 707
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_32
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    .line 708
    const/16 v21, 0x1f0

    goto :goto_12

    .line 659
    .end local v3           #e:Ljava/io/IOException;
    .end local v21           #status:I
    .restart local v20       #status:I
    :cond_15
    :try_start_33
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    .line 660
    .local v19, soapRsp:Ljava/lang/String;
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Soap Response Message:\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->Parser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_33} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_33} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_9

    .line 695
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v19           #soapRsp:Ljava/lang/String;
    .end local v22           #timestamp:J
    :cond_16
    :goto_13
    if-eqz v6, :cond_17

    .line 697
    :try_start_34
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_e

    .line 703
    :cond_17
    :goto_14
    if-eqz v5, :cond_3

    .line 705
    :try_start_35
    invoke-virtual {v5}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_d

    goto/16 :goto_a

    .line 706
    :catch_d
    move-exception v3

    .line 707
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_36
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    .line 708
    const/16 v20, 0x1f0

    .line 709
    goto/16 :goto_a

    .line 666
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v22       #timestamp:J
    :cond_18
    :try_start_37
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "OBEX GET: FAIL - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_5
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_37} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37 .. :try_end_37} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_37} :catch_9

    .line 667
    sparse-switch v15, :sswitch_data_0

    .line 677
    const/16 v20, 0x1eb

    goto :goto_13

    .line 671
    :sswitch_0
    const/16 v20, 0x193

    .line 672
    goto :goto_13

    .line 674
    :sswitch_1
    const/16 v20, 0x196

    .line 675
    goto :goto_13

    .line 698
    .end local v7           #maxBuffSize:I
    .end local v8           #offset:I
    .end local v10           #position:I
    .end local v11           #readBuff:[B
    .end local v12           #readLength:I
    .end local v13           #remainedData:I
    .end local v17           #soapMsg:Ljava/lang/String;
    .end local v18           #soapRequestSize:I
    .end local v22           #timestamp:J
    :catch_e
    move-exception v3

    .line 699
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_38
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto :goto_14

    .line 698
    :catch_f
    move-exception v3

    .line 699
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto/16 :goto_9

    .line 706
    :catch_10
    move-exception v3

    .line 707
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getOperation.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/16 v20, 0x1f0

    .line 709
    goto/16 :goto_a

    .line 698
    .local v3, e:Ljava/lang/NullPointerException;
    :catch_11
    move-exception v3

    .line 699
    .local v3, e:Ljava/io/IOException;
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto/16 :goto_b

    .line 698
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :catch_12
    move-exception v3

    .line 699
    .local v3, e:Ljava/io/IOException;
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto/16 :goto_c

    .line 698
    .local v3, e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v3

    .line 699
    .local v3, e:Ljava/io/IOException;
    const-string v24, "BluetoothBppObexClientSession"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "inputStream.close IOException : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto/16 :goto_e

    .line 698
    .end local v3           #e:Ljava/io/IOException;
    :catch_14
    move-exception v3

    .line 699
    .restart local v3       #e:Ljava/io/IOException;
    const-string v25, "BluetoothBppObexClientSession"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "inputStream.close IOException : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v20, 0x1f0

    goto/16 :goto_f

    .line 706
    .end local v3           #e:Ljava/io/IOException;
    :catch_15
    move-exception v3

    .line 707
    .restart local v3       #e:Ljava/io/IOException;
    const-string v25, "BluetoothBppObexClientSession"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getOperation.close IOException : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    .line 708
    const/16 v20, 0x1f0

    goto/16 :goto_10

    .line 495
    .end local v3           #e:Ljava/io/IOException;
    .end local v20           #status:I
    .restart local v7       #maxBuffSize:I
    .restart local v8       #offset:I
    .restart local v10       #position:I
    .restart local v11       #readBuff:[B
    .restart local v12       #readLength:I
    .restart local v13       #remainedData:I
    .restart local v17       #soapMsg:Ljava/lang/String;
    .restart local v18       #soapRequestSize:I
    .restart local v21       #status:I
    .restart local v22       #timestamp:J
    :catchall_6
    move-exception v24

    move/from16 v20, v21

    .end local v21           #status:I
    .restart local v20       #status:I
    goto/16 :goto_8

    :cond_19
    move/from16 v21, v20

    .end local v20           #status:I
    .restart local v21       #status:I
    goto/16 :goto_11

    .end local v21           #status:I
    .restart local v20       #status:I
    :cond_1a
    move/from16 v21, v20

    .end local v20           #status:I
    .restart local v21       #status:I
    goto/16 :goto_5

    .line 667
    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xcf -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 219
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->waitingForShare:Z

    .line 221
    return-void
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 981
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "interrupt + "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "Interupt already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 987
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$102(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0xc8

    const/4 v5, 0x1

    const/16 v4, 0x1f0

    .line 225
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 227
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "acquire partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iput v8, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 232
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->connect()V

    .line 241
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    if-ne v0, v8, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iput v7, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 245
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "SOAP Request: GetPrinterAttributes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "GetPrinterAttributes"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendSoapRequest(Ljava/lang/String;)I

    move-result v0

    .line 248
    if-eq v0, v6, :cond_1

    .line 249
    const-string v1, "BluetoothBppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOAP Request fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "Client thread was interrupted (1), exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0, v5}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$102(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z
    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mOPPstop:Z

    .line 261
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iput v7, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 268
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "SOAP Request: CreateJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "CreateJob"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendSoapRequest(Ljava/lang/String;)I

    move-result v0

    .line 271
    if-eq v0, v6, :cond_0

    .line 272
    const-string v1, "BluetoothBppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOAP Request fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto/16 :goto_1

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v0, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->doSend()V

    goto/16 :goto_1

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mEventConn:I

    if-ne v0, v5, :cond_6

    .line 280
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "SOAP Request: CancelJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "CancelJob"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendSoapRequest(Ljava/lang/String;)I

    move-result v0

    .line 282
    if-eq v0, v6, :cond_0

    .line 283
    const-string v1, "BluetoothBppObexClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOAP Request fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto/16 :goto_1

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 288
    const/16 v0, 0x1ea

    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V

    goto/16 :goto_1

    .line 293
    :cond_7
    :try_start_1
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "Client thread waiting for next share, sleep for 500"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->access$208(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)I

    move-result v0

    const/16 v1, 0x4b0

    if-le v0, v1, :cond_0

    .line 299
    const/16 v0, 0x1f0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->sendErrorReport(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 301
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 307
    :cond_8
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->disconnect()V

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "release partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 314
    iput v5, v0, Landroid/os/Message;->what:I

    .line 315
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 317
    return-void
.end method
