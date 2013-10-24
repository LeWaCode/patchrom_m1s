.class public Lcom/android/bluetooth/map/BluetoothMnsObexSession;
.super Ljava/lang/Object;
.source "BluetoothMnsObexSession.java"


# static fields
.field private static final D:Z

.field private static final V:Z


# instance fields
.field private hsConnect:Ljavax/btobex/HeaderSet;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mCs:Ljavax/btobex/ClientSession;

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    .line 58
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 2
    .parameter "context"
    .parameter "transport"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/btobex/HeaderSet;

    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/btobex/ObexTransport;

    .line 77
    return-void
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 270
    const-string v0, "BtMns ObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 118
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create ClientSession with transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    new-instance v4, Ljavax/btobex/ClientSession;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-direct {v4, v5}, Ljavax/btobex/ClientSession;-><init>(Ljavax/btobex/ObexTransport;)V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    .line 121
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v4, :cond_1

    .line 126
    iput-boolean v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    .line 127
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 129
    .local v2, hs:Ljavax/btobex/HeaderSet;
    const/16 v4, 0x10

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 133
    .local v3, mnsTarget:[B
    const/16 v4, 0x46

    invoke-virtual {v2, v4, v3}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 135
    monitor-enter p0

    .line 136
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 137
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v4, v2}, Ljavax/btobex/ClientSession;->connect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/btobex/HeaderSet;

    .line 140
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v4, :cond_0

    const-string v4, "BtMns ObexClient"

    const-string v5, "OBEX session created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    .end local v3           #mnsTarget:[B
    :cond_1
    :goto_1
    monitor-enter p0

    .line 147
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 148
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e1:Ljava/io/IOException;
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OBEX session create error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/btobex/HeaderSet;
    .restart local v3       #mnsTarget:[B
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OBEX session connect error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    .end local v3           #mnsTarget:[B
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 129
    nop

    :array_0
    .array-data 0x1
        0xbbt
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        0xdbt
        0xb0t
        0xdet
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/btobex/ClientSession;->disconnect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 92
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    .line 93
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_1

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_3

    .line 99
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v1}, Ljavax/btobex/ClientSession;->close()V

    .line 101
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_3

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :cond_4
    :goto_2
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 104
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 111
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransport.close error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    return v0
.end method

.method public sendEvent(Ljava/io/File;B)I
    .locals 26
    .parameter "file"
    .parameter "masInstanceId"

    .prologue
    .line 153
    const/4 v8, 0x0

    .line 154
    .local v8, error:Z
    const/16 v17, -0x1

    .line 156
    .local v17, responseCode:I
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 157
    .local v20, val:[B
    const/16 v21, 0x0

    aput-byte p2, v20, v21

    .line 158
    new-instance v16, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 159
    .local v16, request:Ljavax/btobex/HeaderSet;
    new-instance v4, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v4}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 160
    .local v4, ap:Ljavax/btobex/ApplicationParameter;
    const/16 v21, 0xf

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 163
    const/16 v21, 0x42

    const-string v22, "x-bt/MAP-event-report"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 164
    const/16 v21, 0x4c

    invoke-virtual {v4}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 166
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/btobex/HeaderSet;->mConnectionID:[B

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/btobex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/btobex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/btobex/HeaderSet;->mConnectionID:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x4

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    const/4 v14, 0x0

    .line 170
    .local v14, putOperation:Ljavax/btobex/ClientOperation;
    const/4 v12, 0x0

    .line 171
    .local v12, outputStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 173
    .local v9, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 174
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_0

    const-string v21, "BtMns ObexClient"

    const-string v22, "Send headerset Event "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/btobex/ClientSession;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/btobex/ClientSession;->put(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object v14, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 186
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    const/16 v21, 0x0

    :try_start_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 188
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    if-nez v8, :cond_2

    .line 191
    :try_start_5
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_1

    const-string v21, "BtMns ObexClient"

    const-string v22, "Send headerset Event "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v12

    .line 199
    :cond_2
    :goto_1
    if-nez v8, :cond_d

    .line 200
    const/4 v13, 0x0

    .line 201
    .local v13, position:I
    const/4 v15, 0x0

    .line 202
    .local v15, readLength:I
    const-wide/16 v18, 0x0

    .line 203
    .local v18, timestamp:J
    :try_start_6
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v11

    .line 204
    .local v11, outputBufferSize:I
    new-array v5, v11, [B

    .line 206
    .local v5, buffer:[B
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    .line 207
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .local v10, fileInputStream:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v21, 0x4000

    move/from16 v0, v21

    invoke-direct {v3, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 209
    .local v3, a:Ljava/io/BufferedInputStream;
    :cond_3
    :goto_2
    int-to-long v0, v13

    move-wide/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-eqz v21, :cond_c

    .line 210
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 212
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v5, v0, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    .line 213
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v5, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    add-int/2addr v13, v15

    .line 216
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_3

    .line 217
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sending file position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " readLength "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes took "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v18

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_2

    .line 234
    .end local v3           #a:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 235
    .end local v5           #buffer:[B
    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    .local v6, e:Ljava/io/IOException;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->handleSendException(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 236
    const/4 v8, 0x1

    .line 241
    if-eqz v9, :cond_5

    .line 243
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 249
    :cond_5
    :goto_4
    if-nez v8, :cond_7

    .line 250
    :try_start_a
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 251
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 252
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_6

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_6
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 254
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_7
    if-eqz v14, :cond_8

    .line 259
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 266
    .end local v6           #e:Ljava/io/IOException;
    :cond_8
    :goto_5
    return v17

    .line 175
    :catchall_0
    move-exception v21

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v21

    .line 234
    :catch_1
    move-exception v6

    goto :goto_3

    .line 182
    :catch_2
    move-exception v6

    .line 183
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when put HeaderSet "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 184
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 188
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_3

    .line 237
    :catch_3
    move-exception v6

    .line 238
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_f
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->handleSendException(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 239
    const/4 v8, 0x1

    .line 241
    if-eqz v9, :cond_9

    .line 243
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 249
    :cond_9
    :goto_7
    if-nez v8, :cond_b

    .line 250
    :try_start_11
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 251
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 252
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_a

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_a
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 254
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_b
    if-eqz v14, :cond_8

    .line 259
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_5

    .line 261
    :catch_4
    move-exception v6

    .line 262
    .local v6, e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_8
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 193
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 194
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_12
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when opening OutputStream "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_3

    .line 195
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 222
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :cond_c
    int-to-long v0, v13

    move-wide/from16 v21, v0

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_11

    .line 223
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SendFile finished send out file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_d

    move-object v9, v10

    .line 241
    .end local v3           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    .line 243
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 249
    :cond_e
    :goto_a
    if-nez v8, :cond_10

    .line 250
    :try_start_15
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 251
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 252
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_f

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_f
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 254
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_10
    if-eqz v14, :cond_8

    .line 259
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_5

    .line 261
    :catch_6
    move-exception v6

    .line 262
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 227
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :cond_11
    const/4 v8, 0x1

    .line 229
    :try_start_16
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->abort()V

    .line 230
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SendFile interrupted when send out file  at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " of "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_d

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 241
    .end local v3           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    :catchall_2
    move-exception v21

    :goto_b
    if-eqz v9, :cond_12

    .line 243
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    .line 249
    :cond_12
    :goto_c
    if-nez v8, :cond_14

    .line 250
    :try_start_18
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 251
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 252
    sget-boolean v22, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v22, :cond_13

    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Get response code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_13
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 254
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_14
    if-eqz v14, :cond_15

    .line 259
    invoke-virtual {v14}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    .line 241
    :cond_15
    :goto_d
    throw v21

    .line 244
    :catch_7
    move-exception v7

    .line 245
    .local v7, ei:Ljava/io/IOException;
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error while closing stream"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 261
    .end local v7           #ei:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 262
    .restart local v6       #e:Ljava/io/IOException;
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error when closing stream after send "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 244
    :catch_9
    move-exception v7

    .line 245
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 261
    .end local v7           #ei:Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 262
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 244
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v7

    .line 245
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 244
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #ei:Ljava/io/IOException;
    :catch_c
    move-exception v7

    .line 245
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 241
    .end local v7           #ei:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :catchall_3
    move-exception v21

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 237
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method
