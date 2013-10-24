.class public Lcom/android/bluetooth/map/BluetoothMasObexServer;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothMasObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;,
        Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAS_TARGET:[B

.field private static final V:Z

.field public static sIsAborted:Z


# instance fields
.field private mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

.field private mCallback:Landroid/os/Handler;

.field public mConnectionId:J

.field public mContext:Landroid/content/Context;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field private masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    .line 68
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->MAS_TARGET:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xbbt
        0x58t
        0x2bt
        0x40t
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

.method public constructor <init>(Landroid/os/Handler;Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Lcom/android/bluetooth/map/IBluetoothMasApp;)V
    .locals 2
    .parameter "callback"
    .parameter "remoteDevice"
    .parameter "context"
    .parameter "appIf"

    .prologue
    .line 539
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    .line 106
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 535
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;-><init>(Lcom/android/bluetooth/map/BluetoothMasObexServer;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    .line 540
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    .line 542
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mConnectionId:J

    .line 543
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    .line 544
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 546
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "BluetoothMasObexServer"

    const-string v1, "BlueoothMasObexServer const called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Initialize MasObexServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    return v0
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter "out"
    .parameter "op"

    .prologue
    .line 1219
    const/4 v1, 0x1

    .line 1221
    .local v1, returnvalue:Z
    if-eqz p0, :cond_0

    .line 1222
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1230
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1236
    :cond_1
    :goto_1
    return v1

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v1, 0x0

    goto :goto_0

    .line 1232
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1233
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final msgStatus(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 2
    .parameter "op"
    .parameter "name"

    .prologue
    .line 843
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "msgStatus: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 845
    :cond_1
    const/16 v0, 0xc0

    .line 847
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v0

    goto :goto_0
.end method

.method private final msgUpdate(Ljavax/btobex/Operation;)I
    .locals 2
    .parameter "op"

    .prologue
    .line 851
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "msgUpdate: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v0}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgUpdate()I

    move-result v0

    return v0
.end method

.method private final notification(Ljavax/btobex/Operation;)I
    .locals 3
    .parameter "op"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->notification(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v0

    return v0
.end method

.method private final pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I
    .locals 5
    .parameter "op"
    .parameter "reply"

    .prologue
    .line 967
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMasObexServer"

    const-string v3, "Push Header"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    const/16 v1, 0xa0

    .line 972
    .local v1, pushResult:I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 980
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push Header: Exit : RetVal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_2
    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/16 v1, 0xd0

    .line 979
    goto :goto_0

    .line 976
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 977
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/16 v1, 0xc0

    goto :goto_0
.end method

.method private final pushMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 24
    .parameter "op"
    .parameter "name"

    .prologue
    .line 749
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PushMsg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/bluetooth/map/IBluetoothMasApp;->getMasId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 750
    .local v10, fileName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v13

    .line 751
    .local v13, outputBufferSize:I
    const/16 v16, 0x0

    .line 752
    .local v16, readLength:I
    const-wide/16 v18, 0x0

    .line 753
    .local v18, timestamp:J
    const/4 v15, 0x0

    .line 754
    .local v15, position:I
    new-array v3, v13, [B

    .line 755
    .local v3, b:[B
    const/4 v4, 0x0

    .line 756
    .local v4, bos:Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 757
    .local v12, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 758
    .local v8, error:Z
    const/4 v9, 0x0

    .line 759
    .local v9, file:Ljava/io/File;
    new-instance v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    invoke-direct {v14}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;-><init>()V

    .line 761
    .local v14, pMsg:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v9       #file:Ljava/io/File;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 770
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_0

    .line 773
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 776
    .local v11, fos:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .local v5, bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 783
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_3

    .line 786
    :cond_1
    :goto_2
    :try_start_2
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_2

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 789
    :cond_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 790
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 791
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v20, :cond_3

    .line 792
    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive file reached stream end at position"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 811
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 813
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 820
    :cond_4
    :goto_4
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_8

    .line 822
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v9, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    :try_end_4
    .catch Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 828
    iget-object v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    iget v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move/from16 v20, v0

    const/16 v21, 0xa0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 831
    new-instance v17, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 832
    .local v17, reply:Ljavax/btobex/HeaderSet;
    const/16 v20, 0x1

    iget-object v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v20

    .line 838
    .end local v17           #reply:Ljavax/btobex/HeaderSet;
    :goto_5
    return v20

    .line 765
    :catch_0
    move-exception v7

    .line 766
    .local v7, e1:Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error while opening InputStream"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 777
    .end local v7           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 779
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 796
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_5
    const/16 v20, 0x0

    :try_start_5
    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 797
    add-int v15, v15, v16

    .line 798
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_1

    .line 799
    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive file position = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " readLength "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes took "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 805
    :catch_2
    move-exception v7

    .line 806
    .restart local v7       #e1:Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error when receiving file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 814
    .end local v7           #e1:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 815
    .local v6, e:Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error when closing stream after send"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 823
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 824
    .local v6, e:Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_6

    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BadRequestException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    :cond_6
    const/16 v20, 0xc0

    goto/16 :goto_5

    .line 835
    .end local v6           #e:Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    :cond_7
    iget v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move/from16 v20, v0

    goto/16 :goto_5

    .line 838
    :cond_8
    const/16 v20, 0xc0

    goto/16 :goto_5
.end method

.method private final sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I
    .locals 17
    .parameter "op"
    .parameter "fileinfo"

    .prologue
    .line 1047
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v13, :cond_0

    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendFile = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    const/4 v9, 0x0

    .line 1049
    .local v9, position:I
    const/4 v10, 0x0

    .line 1050
    .local v10, readLength:I
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 1051
    .local v7, outputBufferSize:I
    const-wide/16 v11, 0x0

    .line 1052
    .local v11, timestamp:J
    const/4 v5, 0x0

    .line 1056
    .local v5, fileInputStream:Ljava/io/FileInputStream;
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_1

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "Send Body: Enter"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1
    :try_start_0
    new-array v2, v7, [B

    .line 1059
    .local v2, buffer:[B
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1060
    .end local v5           #fileInputStream:Ljava/io/FileInputStream;
    .local v6, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 1061
    .local v8, outputStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v13, 0x4000

    invoke-direct {v1, v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1062
    .local v1, bis:Ljava/io/BufferedInputStream;
    :cond_2
    :goto_0
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1064
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 1065
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .line 1067
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v8, v2, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 1068
    add-int/2addr v9, v10

    .line 1069
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v13, :cond_2

    .line 1070
    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending file position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " readLength "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bytes took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1075
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 1076
    .end local v2           #buffer:[B
    .end local v6           #fileInputStream:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v5       #fileInputStream:Ljava/io/FileInputStream;
    :goto_1
    const/16 v13, 0xc0

    .line 1078
    if-eqz v5, :cond_4

    .line 1080
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1092
    .end local v3           #e:Ljava/io/IOException;
    :cond_4
    :goto_2
    return v13

    .line 1078
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v5, :cond_5

    .line 1080
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1078
    :cond_5
    :goto_4
    throw v13

    .end local v5           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :cond_6
    if-eqz v6, :cond_7

    .line 1080
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1086
    :cond_7
    :goto_5
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_9

    .line 1087
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_8

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "SendBody : Exit: OK"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_8
    const/16 v13, 0xa0

    move-object v5, v6

    .end local v6           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1091
    .end local v5           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v6       #fileInputStream:Ljava/io/FileInputStream;
    :cond_9
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_a

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "SendBody : Exit: CONTINUE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_a
    const/16 v13, 0x90

    move-object v5, v6

    .end local v6           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1081
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buffer:[B
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1082
    .local v4, ei:Ljava/io/IOException;
    const-string v14, "BluetoothMasObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while closing stream"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1081
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ei:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1082
    .restart local v4       #ei:Ljava/io/IOException;
    const-string v14, "BluetoothMasObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while closing stream"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1081
    .end local v4           #ei:Ljava/io/IOException;
    .end local v5           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    .line 1082
    .restart local v4       #ei:Ljava/io/IOException;
    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing stream"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1078
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #ei:Ljava/io/IOException;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1075
    .end local v2           #buffer:[B
    :catch_4
    move-exception v3

    goto/16 :goto_1
.end method

.method private final sendFolderListing(Ljavax/btobex/Operation;)I
    .locals 8
    .parameter "op"

    .prologue
    const/4 v7, 0x2

    .line 1132
    const/4 v1, 0x0

    .line 1133
    .local v1, folderListSize:I
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendFolderListing : Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v5}, Lcom/android/bluetooth/map/IBluetoothMasApp;->folderListingSize()I

    move-result v1

    .line 1135
    new-array v4, v7, [B

    .line 1136
    .local v4, size:[B
    const/4 v5, 0x0

    div-int/lit16 v6, v1, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1137
    const/4 v5, 0x1

    rem-int/lit16 v6, v1, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1140
    new-instance v0, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1141
    .local v0, ap:Ljavax/btobex/ApplicationParameter;
    const/16 v5, 0x11

    invoke-virtual {v0, v5, v7, v4}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1145
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1146
    .local v2, reply:Ljavax/btobex/HeaderSet;
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1148
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->isMaxListCountZero()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1150
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    .line 1151
    .local v3, retVal:I
    const/16 v5, 0xa0

    if-eq v3, v5, :cond_2

    .line 1152
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_1

    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendFolderListing : FAILED : RetVal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    .end local v3           #retVal:I
    :cond_1
    :goto_0
    return v3

    .line 1155
    .restart local v3       #retVal:I
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->folderListing(Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendFolderListingBody(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1157
    .end local v3           #retVal:I
    :cond_3
    invoke-interface {p1}, Ljavax/btobex/Operation;->noEndofBody()V

    .line 1158
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    goto :goto_0
.end method

.method private final sendFolderListingBody(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 15
    .parameter "op"
    .parameter "folderlistString"

    .prologue
    .line 988
    if-nez p2, :cond_1

    .line 989
    const-string v11, "BluetoothMasObexServer"

    const-string v12, "folderlistString is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v6, 0xa0

    .line 1043
    :cond_0
    :goto_0
    return v6

    .line 993
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 994
    .local v2, folderlistStringLen:I
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_2

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send Folder Listing Body: len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_2
    const/4 v4, 0x0

    .line 997
    .local v4, outputStream:Ljava/io/OutputStream;
    const/16 v6, 0xa0

    .line 999
    .local v6, pushResult:I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1005
    const/4 v5, 0x0

    .line 1006
    .local v5, position:I
    const-wide/16 v9, 0x0

    .line 1007
    .local v9, timestamp:J
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 1008
    .local v3, outputBufferSize:I
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_3

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outputBufferSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_3
    :goto_1
    if-eq v5, v2, :cond_4

    .line 1010
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    if-eqz v11, :cond_7

    move-object/from16 v11, p1

    .line 1011
    check-cast v11, Ljavax/btobex/ServerOperation;

    const/4 v12, 0x1

    iput-boolean v12, v11, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 1012
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 1036
    :cond_4
    :goto_2
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_5

    const-string v11, "BluetoothMasObexServer"

    const-string v12, "Send Data complete!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1039
    const-string v11, "BluetoothMasObexServer"

    const-string v12, "Send Folder Listing Body - Close output stream error! "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v6, 0xd3

    .line 1042
    :cond_6
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_0

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send Folder Listing Body complete! result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1000
    .end local v3           #outputBufferSize:I
    .end local v5           #position:I
    .end local v9           #timestamp:J
    :catch_0
    move-exception v1

    .line 1001
    .local v1, e:Ljava/io/IOException;
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "open outputstrem failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v6, 0xd3

    goto/16 :goto_0

    .line 1015
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #outputBufferSize:I
    .restart local v5       #position:I
    .restart local v9       #timestamp:J
    :cond_7
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1016
    :cond_8
    move v7, v3

    .line 1017
    .local v7, readLength:I
    sub-int v11, v2, v5

    if-ge v11, v3, :cond_9

    .line 1018
    sub-int v7, v2, v5

    .line 1020
    :cond_9
    add-int v11, v5, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1022
    .local v8, subStr:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1028
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_a

    .line 1029
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending folderlist String position = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " readLength "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_a
    add-int/2addr v5, v7

    .line 1034
    goto/16 :goto_1

    .line 1023
    :catch_1
    move-exception v1

    .line 1024
    .restart local v1       #e:Ljava/io/IOException;
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "write outputstream failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/16 v6, 0xd3

    .line 1026
    goto/16 :goto_2
.end method

.method private final sendMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 9
    .parameter "op"
    .parameter "name"

    .prologue
    const/16 v8, 0xa0

    const/4 v7, 0x1

    .line 1098
    new-instance v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    invoke-direct {v1}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;-><init>()V

    .line 1099
    .local v1, msg:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    new-array v4, v7, [B

    .line 1101
    .local v4, val:[B
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendMsg : Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v6

    invoke-interface {v5, p2, v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msg(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object v1

    .line 1103
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    if-eq v5, v8, :cond_3

    .line 1104
    :cond_1
    iget v3, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 1127
    :cond_2
    :goto_0
    return v3

    .line 1107
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v5

    iget-byte v5, v5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    if-ne v5, v7, :cond_4

    .line 1109
    const/4 v5, 0x0

    iget-byte v6, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    aput-byte v6, v4, v5

    .line 1110
    new-instance v0, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1111
    .local v0, ap:Ljavax/btobex/ApplicationParameter;
    const/16 v5, 0x16

    invoke-virtual {v0, v5, v7, v4}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1116
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1117
    .local v2, reply:Ljavax/btobex/HeaderSet;
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1120
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    .line 1121
    .local v3, retVal:I
    if-eq v3, v8, :cond_4

    .line 1122
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_2

    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendMsg : FAILED: RetVal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    .end local v0           #ap:Ljavax/btobex/ApplicationParameter;
    .end local v2           #reply:Ljavax/btobex/HeaderSet;
    .end local v3           #retVal:I
    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_5

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendMsg : SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_5
    iget-object v5, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I

    move-result v3

    goto :goto_0
.end method

.method private final sendMsgListing(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 15
    .parameter "op"
    .parameter "name"

    .prologue
    .line 1165
    const/4 v11, 0x2

    new-array v10, v11, [B

    .line 1166
    .local v10, val:[B
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    invoke-direct {v3}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;-><init>()V

    .line 1167
    .local v3, appIfMsgListRsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_0

    const-string v11, "BluetoothMasObexServer"

    const-string v12, "SendMsgListing : Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v11, v0, v12}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    move-result-object v3

    .line 1170
    if-eqz v3, :cond_1

    iget v11, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    const/16 v12, 0xa0

    if-eq v11, v12, :cond_3

    .line 1171
    :cond_1
    iget v6, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 1214
    :cond_2
    :goto_0
    return v6

    .line 1174
    :cond_3
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1175
    .local v7, time:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 1177
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v8

    .line 1178
    .local v8, time3339:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 1180
    .local v9, timeStrLength:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0xf

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, -0x6

    add-int/lit8 v13, v9, -0x3

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, -0x2

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, datetimeStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1187
    .local v1, MSETime:[B
    new-instance v2, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v2}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1188
    .local v2, ap:Ljavax/btobex/ApplicationParameter;
    const/16 v11, 0x19

    const/16 v12, 0x14

    invoke-virtual {v2, v11, v12, v1}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1190
    const/4 v11, 0x0

    iget-byte v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    aput-byte v12, v10, v11

    .line 1191
    const/16 v11, 0xd

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12, v10}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1194
    const/4 v11, 0x0

    iget v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    div-int/lit16 v12, v12, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1195
    const/4 v11, 0x1

    iget v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    rem-int/lit16 v12, v12, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1197
    const/16 v11, 0x12

    const/4 v12, 0x2

    invoke-virtual {v2, v11, v12, v10}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1202
    new-instance v5, Ljavax/btobex/HeaderSet;

    invoke-direct {v5}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1203
    .local v5, reply:Ljavax/btobex/HeaderSet;
    const/16 v11, 0x4c

    invoke-virtual {v2}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1205
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->isMaxListCountZero()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1207
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v6

    .line 1208
    .local v6, retVal:I
    const/16 v11, 0xa0

    if-eq v6, v11, :cond_4

    .line 1209
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_2

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SendMsgListing : Failed : RetVal "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1212
    :cond_4
    iget-object v11, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->file:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I

    move-result v6

    goto/16 :goto_0

    .line 1214
    .end local v6           #retVal:I
    :cond_5
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v6

    goto/16 :goto_0
.end method


# virtual methods
.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 631
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 633
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    .line 687
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 690
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->getMasId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 691
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 12
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 555
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_0

    const-string v6, "BluetoothMasObexServer"

    const-string v9, "onConnect()"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 558
    .local v5, uuid:[B
    if-nez v5, :cond_1

    .line 559
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Null UUID "

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 608
    .end local v5           #uuid:[B
    :goto_0
    return v6

    .line 562
    .restart local v5       #uuid:[B
    :cond_1
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_2

    .line 563
    const-string v6, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_2
    array-length v6, v5

    if-eq v6, v11, :cond_3

    .line 566
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 567
    goto :goto_0

    .line 569
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v11, :cond_5

    .line 570
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasObexServer;->MAS_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_4

    .line 571
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 572
    goto :goto_0

    .line 569
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->checkPrecondition()Z

    move-result v6

    if-nez v6, :cond_6

    .line 576
    const/16 v6, 0xd3

    goto :goto_0

    .line 578
    :cond_6
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 589
    .local v4, remote:[B
    if-eqz v4, :cond_8

    .line 590
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_7

    const-string v6, "BluetoothMasObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_7
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 598
    :cond_8
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v6, :cond_9

    const-string v6, "BluetoothMasObexServer"

    const-string v7, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 602
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x138d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 603
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 605
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 606
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_a

    const-string v6, "BluetoothMasObexServer"

    const-string v7, "Connect(): Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_a
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->onConnect()V

    .line 608
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 579
    .end local v2           #i:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #remote:[B
    .end local v5           #uuid:[B
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/io/IOException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 581
    goto/16 :goto_0

    .line 582
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 583
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/16 v6, 0xc0

    goto/16 :goto_0

    .line 593
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #i:I
    .restart local v5       #uuid:[B
    :catch_2
    move-exception v1

    .line 594
    .local v1, e:Ljava/io/IOException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 595
    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 3
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 613
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->onDisconnect()V

    .line 616
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 617
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 620
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 621
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    .line 626
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 627
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 11
    .parameter "op"

    .prologue
    const/16 v8, 0xc0

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, appParams:[B
    const/4 v5, 0x1

    .line 702
    .local v5, retVal:Z
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v7, :cond_0

    const-string v7, "BluetoothMasObexServer"

    const-string v9, "onGet(): support GET request."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 705
    const/4 v4, 0x0

    .line 706
    .local v4, request:Ljavax/btobex/HeaderSet;
    const-string v6, ""

    .line 707
    .local v6, type:Ljava/lang/String;
    const-string v3, ""

    .line 711
    .local v3, name:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v4

    .line 712
    const/16 v7, 0x42

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 713
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 714
    const/16 v7, 0x4c

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 724
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v7, v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->parse([B)Z

    move-result v5

    .line 726
    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    :cond_1
    move v7, v8

    .line 743
    :goto_0
    return v7

    .line 715
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Ljava/io/IOException;
    const-string v7, "BluetoothMasObexServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request headers error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/16 v7, 0xd0

    goto :goto_0

    .line 718
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 719
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request headers error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 720
    goto :goto_0

    .line 730
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v7, :cond_3

    const-string v7, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_3
    const-string v7, "x-obex/folder-listing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 733
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendFolderListing(Ljavax/btobex/Operation;)I

    move-result v7

    goto :goto_0

    .line 735
    :cond_4
    const-string v7, "x-bt/MAP-msg-listing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 736
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendMsgListing(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 738
    :cond_5
    const-string v7, "x-bt/message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 739
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 742
    :cond_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v7, :cond_7

    const-string v7, "BluetoothMasObexServer"

    const-string v9, "get returns HTTP_BAD_REQUEST"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 743
    goto/16 :goto_0
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 15
    .parameter "op"

    .prologue
    .line 862
    const/4 v1, 0x0

    .line 863
    .local v1, appParams:[B
    const/4 v9, 0x1

    .line 865
    .local v9, retVal:Z
    const/4 v3, 0x0

    .line 866
    .local v3, inputStream:Ljava/io/InputStream;
    const/16 v12, 0xa

    new-array v6, v12, [B

    .line 868
    .local v6, readByte:[B
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v12, :cond_0

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "onPut(): support PUT request."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 871
    const/4 v8, 0x0

    .line 872
    .local v8, request:Ljavax/btobex/HeaderSet;
    const-string v11, ""

    .line 873
    .local v11, type:Ljava/lang/String;
    const-string v5, ""

    .line 877
    .local v5, name:Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v8

    .line 878
    const/16 v12, 0x42

    invoke-virtual {v8, v12}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 879
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 880
    const/16 v12, 0x4c

    invoke-virtual {v8, v12}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 888
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 889
    if-eqz v1, :cond_1

    .line 890
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v12, v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->parse([B)Z

    .line 892
    :cond_1
    if-eqz v11, :cond_2

    if-nez v9, :cond_3

    .line 893
    :cond_2
    const/16 v12, 0xc0

    .line 959
    :goto_0
    return v12

    .line 881
    :catch_0
    move-exception v2

    .line 882
    .local v2, e:Ljava/io/IOException;
    const-string v12, "BluetoothMasObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "request headers error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v12, 0xd0

    goto :goto_0

    .line 884
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 885
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "BluetoothMasObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "request headers error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/16 v12, 0xc0

    goto :goto_0

    .line 896
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v10

    .line 898
    .local v10, tmp:Lcom/android/bluetooth/map/BluetoothMasAppParams;
    iget-byte v12, v10, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v12, :cond_4

    .line 899
    const/16 v12, 0xd1

    goto :goto_0

    .line 901
    :cond_4
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_5

    const-string v12, "BluetoothMasObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_5
    const-string v12, "x-bt/message"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 904
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v12

    goto :goto_0

    .line 906
    :cond_6
    const-string v12, "x-bt/messageStatus"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 907
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->msgStatus(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v12

    goto :goto_0

    .line 909
    :cond_7
    const-string v12, "x-bt/MAP-messageUpdate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 910
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->msgUpdate(Ljavax/btobex/Operation;)I

    move-result v12

    goto/16 :goto_0

    .line 912
    :cond_8
    const-string v12, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 913
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_9

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "entered TYPE_MESSAGE_NOTIFICATION"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v12, p1

    .line 921
    check-cast v12, Ljavax/btobex/ServerOperation;

    iget-boolean v12, v12, Ljavax/btobex/ServerOperation;->finalBitSet:Z

    if-nez v12, :cond_e

    .line 922
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_a

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Not the final Obex packet"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_a
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 925
    const/4 v7, -0x1

    .line 927
    .local v7, readLength:I
    :cond_b
    :goto_1
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_c

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Inside while loop: TYPE_MESSAGE_NOTIFICATION"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_c
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 929
    const/4 v12, -0x1

    if-ne v7, v12, :cond_f

    .line 930
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_d

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Complete Obex packet read, Proceeding"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 948
    :cond_d
    if-eqz v3, :cond_e

    .line 949
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 956
    .end local v7           #readLength:I
    :cond_e
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->notification(Ljavax/btobex/Operation;)I

    move-result v12

    goto/16 :goto_0

    .line 933
    .restart local v7       #readLength:I
    :cond_f
    :try_start_3
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_10

    const-string v12, "BluetoothMasObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readLength: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_10
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_11

    const-string v12, "BluetoothMasObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readByte[0]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_11
    const/4 v12, 0x0

    aget-byte v12, v6, v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_12

    const/4 v12, 0x1

    if-ne v7, v12, :cond_12

    .line 938
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_b

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Body / EOB contains \'0\'"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 944
    .end local v7           #readLength:I
    :catch_2
    move-exception v4

    .line 945
    .local v4, ioException:Ljava/io/IOException;
    :try_start_4
    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Error while opening InputStream"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 948
    if-eqz v3, :cond_e

    .line 949
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 951
    :catch_3
    move-exception v4

    .line 952
    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Error when closing stream"

    :goto_3
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 940
    .end local v4           #ioException:Ljava/io/IOException;
    .restart local v7       #readLength:I
    :cond_12
    :try_start_6
    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Body / EOB does not contain \'0\'"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 947
    .end local v7           #readLength:I
    :catchall_0
    move-exception v12

    .line 948
    if-eqz v3, :cond_13

    .line 949
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 947
    :cond_13
    :goto_4
    throw v12

    .line 958
    :cond_14
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v12, :cond_15

    const-string v12, "BluetoothMasObexServer"

    const-string v13, "put returns HTTP_BAD_REQUEST"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_15
    const/16 v12, 0xc0

    goto/16 :goto_0

    .line 951
    :catch_4
    move-exception v4

    .line 952
    .restart local v4       #ioException:Ljava/io/IOException;
    const-string v13, "BluetoothMasObexServer"

    const-string v14, "Error when closing stream"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 951
    .end local v4           #ioException:Ljava/io/IOException;
    .restart local v7       #readLength:I
    :catch_5
    move-exception v4

    .line 952
    .restart local v4       #ioException:Ljava/io/IOException;
    const-string v12, "BluetoothMasObexServer"

    const-string v13, "Error when closing stream"

    goto :goto_3
.end method

.method public onSetPath(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;ZZ)I
    .locals 9
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    const/4 v8, 0x1

    .line 640
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "onSetPath(): supports SetPath request."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    const/4 v4, 0x0

    .line 643
    .local v4, tmpPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 644
    .local v2, retVal:Z
    move v3, p3

    .line 646
    .local v3, tmpBackup:Z
    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 647
    const/4 v3, 0x1

    .line 651
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    if-eq v5, v6, :cond_3

    .line 652
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_1

    .line 653
    const-string v5, "BluetoothMasObexServer"

    const-string v6, "onSetPath() Failed: Mas Server not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    const/16 v5, 0xd3

    .line 679
    :goto_1
    return v5

    .line 649
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 656
    :cond_3
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 659
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_4

    .line 668
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " create="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v5, p3, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp;->setPath(ZLjava/lang/String;)Z

    move-result v2

    .line 672
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 673
    if-ne v2, v8, :cond_6

    .line 674
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v5, :cond_5

    .line 675
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPath to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_5
    const/16 v5, 0xa0

    goto :goto_1

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get name header fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v5, 0xd0

    goto/16 :goto_1

    .line 663
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 664
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get name header fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/16 v5, 0xc0

    goto/16 :goto_1

    .line 678
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string v5, "BluetoothMasObexServer"

    const-string v6, "Path not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/16 v5, 0xc4

    goto/16 :goto_1
.end method
