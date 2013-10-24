.class Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothBppEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# instance fields
.field private mContext1:Landroid/content/Context;

.field private mTransport1:Ljavax/btobex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    .line 146
    const-string v1, "BtBpp Event ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 147
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mContext1:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    .line 149
    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static {p1, v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 151
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 152
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothBppEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    return-void
.end method

.method private connect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 267
    const-string v3, "BluetoothBppEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    new-instance v4, Ljavax/btobex/ClientSession;

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-direct {v4, v5}, Ljavax/btobex/ClientSession;-><init>(Ljavax/btobex/ObexTransport;)V

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$202(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Ljavax/btobex/ClientSession;)Ljavax/btobex/ClientSession;

    .line 270
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v3, v3, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iput-boolean v6, v3, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    .line 276
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 277
    .local v2, hs:Ljavax/btobex/HeaderSet;
    const/16 v3, 0x46

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->STS_Target_UUID:[B

    invoke-virtual {v2, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 279
    monitor-enter p0

    .line 280
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 281
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v3}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/btobex/ClientSession;->connect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 285
    const-string v3, "BluetoothBppEvent"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    .line 287
    sget-object v3, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;

    const/16 v4, 0x17

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 294
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 295
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BluetoothBppEvent"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/btobex/HeaderSet;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 289
    :catch_1
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BluetoothBppEvent"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 5

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/btobex/ClientSession;->disconnect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$202(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Ljavax/btobex/ClientSession;)Ljavax/btobex/ClientSession;

    .line 239
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    .line 240
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    const-string v1, "BluetoothBppEvent"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "BluetoothBppEvent"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/btobex/ClientSession;->close()V

    .line 250
    const-string v1, "BluetoothBppEvent"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_2

    .line 257
    :try_start_2
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Try mTransport1.close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 264
    :cond_2
    :goto_2
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothBppEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 253
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BluetoothBppEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 261
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BluetoothBppEvent"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private declared-synchronized sendSoapRequest(Ljava/lang/String;)I
    .locals 26
    .parameter "soapReq"

    .prologue
    .line 299
    monitor-enter p0

    const/4 v3, 0x0

    .line 300
    .local v3, error:Z
    const/4 v14, -0x1

    .line 302
    .local v14, responseCode:I
    const/16 v18, 0xc8

    .line 303
    .local v18, status:I
    const/4 v15, 0x0

    .line 305
    .local v15, responseLength:I
    const/4 v4, 0x0

    .line 306
    .local v4, getOperation:Ljavax/btobex/ClientOperation;
    const/4 v8, 0x0

    .line 307
    .local v8, outputStream:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 310
    .local v5, inputStream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bppEp:Ljavax/btobex/ClientSession$eventParser;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$300(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession$eventParser;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 311
    new-instance v13, Ljavax/btobex/HeaderSet;

    invoke-direct {v13}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 312
    .local v13, request:Ljavax/btobex/HeaderSet;
    const/16 v22, 0x42

    const-string v23, "x-obex/bt-SOAP"

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljavax/btobex/ClientSession;->get(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 324
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    if-nez v3, :cond_0

    .line 328
    :try_start_4
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v8

    .line 337
    :cond_0
    :goto_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4

    .line 338
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 339
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 340
    if-nez v3, :cond_10

    .line 341
    const/4 v9, 0x0

    .line 342
    .local v9, position:I
    const/4 v7, 0x0

    .line 343
    .local v7, offset:I
    const/4 v11, 0x0

    .line 344
    .local v11, readLength:I
    const/4 v12, 0x0

    .line 345
    .local v12, remainedData:I
    const-wide/16 v20, 0x0

    .line 346
    .local v20, timestamp:J
    :try_start_7
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v6

    .line 347
    .local v6, maxBuffSize:I
    const/4 v10, 0x0

    .line 348
    .local v10, readBuff:[B
    const/16 v16, 0x0

    .line 349
    .local v16, soapMsg:Ljava/lang/String;
    const/16 v17, 0x0

    .line 352
    .local v17, soapRequestSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->Builder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 353
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Z

    move-result v22

    if-nez v22, :cond_10

    move/from16 v0, v17

    if-eq v9, v0, :cond_10

    .line 356
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    .line 357
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 358
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 360
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 363
    :goto_2
    move/from16 v0, v17

    if-eq v9, v0, :cond_e

    .line 365
    sub-int v12, v17, v9

    .line 366
    if-le v6, v12, :cond_7

    move v11, v12

    .line 368
    :goto_3
    const-string v22, "BluetoothBppEvent"

    const-string v23, "Soap Request is now being sent..."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v9, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 371
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Waiting for Response..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v14

    .line 376
    const-string v23, "BluetoothBppEvent"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Tx - OBEX Response: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v22, 0x90

    move/from16 v0, v22

    if-ne v14, v0, :cond_8

    const-string v22, "Continue"

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v22, 0x90

    move/from16 v0, v22

    if-eq v14, v0, :cond_a

    const/16 v22, 0xa0

    move/from16 v0, v22

    if-eq v14, v0, :cond_a

    .line 383
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 384
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    .line 386
    const/16 v18, 0x1f0

    .line 461
    if-eqz v5, :cond_1

    .line 463
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 468
    :cond_1
    :goto_5
    if-eqz v4, :cond_2

    .line 470
    :try_start_b
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    .line 475
    :cond_2
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 478
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move/from16 v19, v18

    .line 481
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v18           #status:I
    .end local v20           #timestamp:J
    .local v19, status:I
    :goto_7
    monitor-exit p0

    return v19

    .line 317
    .end local v19           #status:I
    .restart local v18       #status:I
    :catch_0
    move-exception v2

    .line 318
    .local v2, e:Ljava/io/IOException;
    :try_start_e
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error when get HeaderSet : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 319
    const/4 v3, 0x1

    .line 320
    const/16 v18, 0x1f1

    goto/16 :goto_0

    .line 324
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 299
    .end local v13           #request:Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 329
    .restart local v13       #request:Ljavax/btobex/HeaderSet;
    :catch_1
    move-exception v2

    .line 330
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_11
    const-string v22, "BluetoothBppEvent"

    const-string v23, "Error when openOutputStream"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 331
    const/4 v3, 0x1

    .line 332
    const/16 v18, 0x1f1

    goto/16 :goto_1

    .line 339
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v22

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_4

    .line 451
    :catch_2
    move-exception v2

    .line 452
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_14
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " IOException e) : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 453
    const/16 v18, 0x1f0

    .line 461
    if-eqz v5, :cond_3

    .line 463
    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 468
    :cond_3
    :goto_8
    if-eqz v4, :cond_4

    .line 470
    :try_start_16
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 475
    :cond_4
    :goto_9
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 478
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .end local v2           #e:Ljava/io/IOException;
    :goto_a
    move/from16 v19, v18

    .line 481
    .end local v18           #status:I
    .restart local v19       #status:I
    goto :goto_7

    .line 358
    .end local v19           #status:I
    .restart local v6       #maxBuffSize:I
    .restart local v7       #offset:I
    .restart local v9       #position:I
    .restart local v10       #readBuff:[B
    .restart local v11       #readLength:I
    .restart local v12       #remainedData:I
    .restart local v16       #soapMsg:Ljava/lang/String;
    .restart local v17       #soapRequestSize:I
    .restart local v18       #status:I
    .restart local v20       #timestamp:J
    :catchall_3
    move-exception v22

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_4

    .line 454
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v20           #timestamp:J
    :catch_3
    move-exception v2

    .line 455
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_1b
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " NullPointerException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 456
    const/16 v18, 0x1f0

    .line 461
    if-eqz v5, :cond_5

    .line 463
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9

    .line 468
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_5
    :goto_b
    if-eqz v4, :cond_6

    .line 470
    :try_start_1d
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    .line 475
    :cond_6
    :goto_c
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 478
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0

    goto :goto_a

    :catchall_4
    move-exception v22

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    throw v22
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .restart local v6       #maxBuffSize:I
    .restart local v7       #offset:I
    .restart local v9       #position:I
    .restart local v10       #readBuff:[B
    .restart local v11       #readLength:I
    .restart local v12       #remainedData:I
    .restart local v16       #soapMsg:Ljava/lang/String;
    .restart local v17       #soapRequestSize:I
    .restart local v20       #timestamp:J
    :cond_7
    move v11, v6

    .line 366
    goto/16 :goto_3

    .line 376
    :cond_8
    const/16 v22, 0xa0

    move/from16 v0, v22

    if-ne v14, v0, :cond_9

    :try_start_21
    const-string v22, "SUCCESS"

    goto/16 :goto_4

    :cond_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto/16 :goto_4

    .line 392
    :cond_a
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_b

    if-nez v10, :cond_b

    .line 393
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#1 Get OBEX Length - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v15, v0

    .line 396
    new-array v10, v15, [B

    .line 398
    :cond_b
    add-int/2addr v9, v11

    .line 400
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Soap Request is sent...\r\n - Total Size : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n - Sent Size  : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n - Taken Time : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_4

    goto/16 :goto_2

    .line 457
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v20           #timestamp:J
    :catch_4
    move-exception v2

    .line 458
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_22
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " IndexOutOfBoundsException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 459
    const/16 v18, 0x1f0

    .line 461
    if-eqz v5, :cond_c

    .line 463
    :try_start_23
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_b

    .line 468
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    .line 470
    :try_start_24
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_c

    .line 475
    :cond_d
    :goto_e
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 478
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0

    goto/16 :goto_a

    :catchall_5
    move-exception v22

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :try_start_27
    throw v22
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 410
    .restart local v6       #maxBuffSize:I
    .restart local v7       #offset:I
    .restart local v9       #position:I
    .restart local v10       #readBuff:[B
    .restart local v11       #readLength:I
    .restart local v12       #remainedData:I
    .restart local v16       #soapMsg:Ljava/lang/String;
    .restart local v17       #soapRequestSize:I
    .restart local v20       #timestamp:J
    :cond_e
    :try_start_28
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 413
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTimeStamp:J
    invoke-static/range {v22 .. v24}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$402(Lcom/android/bluetooth/bpp/BluetoothBppEvent;J)J

    .line 416
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v14

    const/16 v22, 0x90

    move/from16 v0, v22

    if-ne v14, v0, :cond_13

    .line 418
    const-string v22, "BluetoothBppEvent"

    const-string v23, "Rx - OBEX Response: Continue"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_f

    if-nez v10, :cond_f

    .line 420
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#2 Get OBEX Length - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->getLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v15, v0

    .line 422
    new-array v10, v15, [B

    .line 424
    :cond_f
    if-eqz v10, :cond_10

    .line 425
    const-string v22, "BluetoothBppEvent"

    const-string v23, "Rx - Start Read buffer"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sub-int v22, v15, v7

    move/from16 v0, v22

    invoke-virtual {v5, v10, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v22

    add-int v7, v7, v22

    .line 427
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OBEX Data Read: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_4

    .line 428
    const/4 v10, 0x0

    .line 461
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v20           #timestamp:J
    :cond_10
    :goto_f
    if-eqz v5, :cond_11

    .line 463
    :try_start_29
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_f

    .line 468
    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    .line 470
    :try_start_2a
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_10

    .line 475
    :cond_12
    :goto_11
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 478
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v22 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0

    goto/16 :goto_a

    :catchall_6
    move-exception v22

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    :try_start_2d
    throw v22
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 434
    .restart local v6       #maxBuffSize:I
    .restart local v7       #offset:I
    .restart local v9       #position:I
    .restart local v10       #readBuff:[B
    .restart local v11       #readLength:I
    .restart local v12       #remainedData:I
    .restart local v16       #soapMsg:Ljava/lang/String;
    .restart local v17       #soapRequestSize:I
    .restart local v20       #timestamp:J
    :cond_13
    :try_start_2e
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OBEX GET: FAIL - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_2e} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2e .. :try_end_2e} :catch_4

    .line 435
    sparse-switch v14, :sswitch_data_0

    .line 445
    const/16 v18, 0x1eb

    goto :goto_f

    .line 439
    :sswitch_0
    const/16 v18, 0x193

    .line 440
    goto :goto_f

    .line 442
    :sswitch_1
    const/16 v18, 0x196

    .line 443
    goto :goto_f

    .line 461
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v20           #timestamp:J
    :catchall_7
    move-exception v22

    if-eqz v5, :cond_14

    .line 463
    :try_start_2f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_5

    .line 468
    :cond_14
    :goto_12
    if-eqz v4, :cond_15

    .line 470
    :try_start_30
    invoke-virtual {v4}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_6

    .line 475
    :cond_15
    :goto_13
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljavax/btobex/ClientSession;->enableEventParser(Ljavax/btobex/ClientSession$eventParser;)V

    .line 477
    monitor-enter p0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 478
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 479
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    .line 461
    :try_start_33
    throw v22

    .line 464
    :catch_5
    move-exception v2

    .line 465
    .local v2, e:Ljava/io/IOException;
    const-string v23, "BluetoothBppEvent"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "inputStream.close IOException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 471
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/io/IOException;
    const-string v23, "BluetoothBppEvent"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getOperation.close IOException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    goto :goto_13

    .line 479
    .end local v2           #e:Ljava/io/IOException;
    :catchall_8
    move-exception v22

    :try_start_34
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    :try_start_35
    throw v22

    .line 464
    .restart local v2       #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 465
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputStream.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 471
    :catch_8
    move-exception v2

    .line 472
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getOperation.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    goto/16 :goto_9

    .line 479
    :catchall_9
    move-exception v22

    :try_start_36
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_9

    :try_start_37
    throw v22

    .line 464
    .local v2, e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v2

    .line 465
    .local v2, e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputStream.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 471
    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getOperation.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 464
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .line 465
    .local v2, e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputStream.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 471
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getOperation.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 464
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #maxBuffSize:I
    .restart local v7       #offset:I
    .restart local v9       #position:I
    .restart local v10       #readBuff:[B
    .restart local v11       #readLength:I
    .restart local v12       #remainedData:I
    .restart local v16       #soapMsg:Ljava/lang/String;
    .restart local v17       #soapRequestSize:I
    .restart local v20       #timestamp:J
    :catch_d
    move-exception v2

    .line 465
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputStream.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 471
    .end local v2           #e:Ljava/io/IOException;
    :catch_e
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getOperation.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    goto/16 :goto_6

    .line 479
    .end local v2           #e:Ljava/io/IOException;
    :catchall_a
    move-exception v22

    :try_start_38
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    :try_start_39
    throw v22

    .line 464
    .end local v6           #maxBuffSize:I
    .end local v7           #offset:I
    .end local v9           #position:I
    .end local v10           #readBuff:[B
    .end local v11           #readLength:I
    .end local v12           #remainedData:I
    .end local v16           #soapMsg:Ljava/lang/String;
    .end local v17           #soapRequestSize:I
    .end local v20           #timestamp:J
    :catch_f
    move-exception v2

    .line 465
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "inputStream.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 471
    .end local v2           #e:Ljava/io/IOException;
    :catch_10
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/io/IOException;
    const-string v22, "BluetoothBppEvent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getOperation.close IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    goto/16 :goto_11

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xcf -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Interupt already in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v1, "BluetoothBppEvent"

    const-string v2, "super.interrupt()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 211
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v2, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$102(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    .line 212
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mEnforceClose:Z

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Disconnect RFCOMM on status Channel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    if-nez v1, :cond_2

    .line 220
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Status Channel already disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothBppEvent"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 158
    const/16 v1, 0xc8

    .line 159
    .local v1, status:I
    const-wide/16 v2, 0x0

    .line 161
    .local v2, timestamp:J
    const-string v4, "BluetoothBppEvent"

    const-string v5, "acquire partial WakeLock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 165
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->connect()V

    .line 174
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    const-string v4, "BluetoothBppEvent"

    const-string v5, "SOAP Request: GetEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "GetEvent"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->sendSoapRequest(Ljava/lang/String;)I

    move-result v1

    .line 177
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_3

    .line 178
    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_1
    :goto_2
    const-string v4, "BluetoothBppEvent"

    const-string v5, "Event Monitor: Try to disconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->disconnect()V

    .line 194
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    const-string v4, "BluetoothBppEvent"

    const-string v5, "release partial WakeLock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 198
    :cond_2
    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v4, "BluetoothBppEvent"

    const-string v5, "Client thread was interrupted (1), exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v5, 0x1

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$102(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z

    goto :goto_0

    .line 183
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    const-string v4, "BluetoothBppEvent"

    const-string v5, "EvenMonitor thread was interrupted (1), exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
