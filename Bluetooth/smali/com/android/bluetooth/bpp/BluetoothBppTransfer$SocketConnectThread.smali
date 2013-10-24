.class Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothBppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .parameter
    .parameter "device"
    .parameter "channel"

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 1223
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 1224
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1225
    iput p3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->channel:I

    .line 1226
    return-void
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1294
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1299
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1239
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x1123

    const/16 v10, 0x1118

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, INSTANCE:Lcom/android/bluetooth/bpp/BluetoothBppPreference;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->timestamp:J

    .line 1246
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_0

    .line 1247
    const-string v4, "BluetoothBppTransfer"

    const-string v5, "Error! device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :goto_0
    return-void

    .line 1252
    :cond_0
    :try_start_0
    const-string v4, "BluetoothBppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rfcomm socket Connection init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->channel:I

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1261
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 1263
    const-string v4, "BluetoothBppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rfcomm socket connection attempt took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->timestamp:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    new-instance v3, Lcom/android/bluetooth/bpp/BluetoothBppRfcommTransport;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 1267
    .local v3, transport:Lcom/android/bluetooth/bpp/BluetoothBppRfcommTransport;
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/bpp/BluetoothBppPreference;

    move-result-object v0

    .line 1268
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x1118

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v6, v6, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->setChannel(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1270
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x1123

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v6, v6, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->setChannel(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1272
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 1273
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->mSupportedDocs:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->setFeatures(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 1275
    const-string v4, "BluetoothBppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send transport message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->channel:I

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v5, v5, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    if-ne v4, v5, :cond_2

    .line 1277
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v4, v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1281
    .end local v3           #transport:Lcom/android/bluetooth/bpp/BluetoothBppRfcommTransport;
    :catch_0
    move-exception v1

    .line 1282
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BluetoothBppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rfcomm socket connect exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    if-eqz v0, :cond_1

    .line 1284
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, v10}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->removeChannel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1285
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, v11}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->removeChannel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1287
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto/16 :goto_0

    .line 1255
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1256
    .local v2, e1:Ljava/io/IOException;
    const-string v4, "BluetoothBppTransfer"

    const-string v5, "Rfcomm socket create error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto/16 :goto_0

    .line 1279
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v3       #transport:Lcom/android/bluetooth/bpp/BluetoothBppRfcommTransport;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v4, v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
