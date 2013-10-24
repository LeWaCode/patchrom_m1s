.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    }
.end annotation


# static fields
.field static mServerSessionIsUp:Z


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/btobex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field mTransferInProgress:Z

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 98
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 106
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 108
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 131
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BtOppObexServer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    const-string v1, "BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 981
    const/4 v1, 0x1

    .line 982
    const-string v2, "BtOppObexServer"

    const-string v3, "closeoutStream +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    if-eqz p0, :cond_0

    .line 985
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 993
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move v0, v1

    .line 1000
    :goto_1
    const-string v1, "BtOppObexServer"

    const-string v2, "closeoutStream -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return v0

    .line 987
    :catch_0
    move-exception v1

    .line 988
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 989
    goto :goto_0

    .line 995
    :catch_1
    move-exception v1

    .line 996
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 5

    .prologue
    .line 692
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 696
    .local v0, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    const-string v1, "BtOppObexServer"

    const-string v2, "Generate BluetoothOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/btobex/Operation;)I
    .locals 28
    .parameter "fileInfo"
    .parameter "op"

    .prologue
    .line 560
    const-wide/16 v9, 0x0

    .line 561
    .local v9, beginTime:J
    const/16 v21, -0x1

    .line 562
    .local v21, status:I
    const/4 v11, 0x0

    .line 563
    .local v11, bos:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 565
    .local v2, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    const/16 v18, 0x0

    .line 566
    .local v18, is:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 568
    .local v16, error:Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 575
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 577
    .local v5, contentUri:Landroid/net/Uri;
    if-nez v16, :cond_0

    .line 578
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v25, updateValues:Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 583
    .end local v25           #updateValues:Landroid/content/ContentValues;
    :cond_0
    const-wide/16 v6, 0x0

    .line 584
    .local v6, position:J
    if-nez v16, :cond_1

    .line 585
    new-instance v11, Ljava/io/BufferedOutputStream;

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    const/high16 v4, 0x1

    invoke-direct {v11, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 588
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v16, :cond_3

    .line 589
    invoke-interface/range {p2 .. p2}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v19

    .line 590
    .local v19, outputBufferSize:I
    move/from16 v0, v19

    new-array v8, v0, [B

    .line 591
    .local v8, b:[B
    const/16 v20, 0x0

    .line 592
    .local v20, readLength:I
    const-wide/16 v22, 0x0

    .line 594
    .local v22, timestamp:J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v9

    move-object/from16 v24, v2

    .line 595
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v24, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 599
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .line 601
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 602
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receive file reached stream end at position"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 626
    :cond_2
    if-eqz v24, :cond_c

    .line 629
    :try_start_3
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 632
    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->join()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 633
    const/4 v2, 0x0

    .line 635
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_4
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 653
    .end local v25           #updateValues:Landroid/content/ContentValues;
    :goto_2
    if-eqz v2, :cond_3

    .line 655
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Finally Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 658
    :goto_3
    const/4 v2, 0x0

    .line 663
    .end local v8           #b:[B
    .end local v19           #outputBufferSize:I
    .end local v20           #readLength:I
    .end local v22           #timestamp:J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-eqz v3, :cond_a

    .line 664
    const-string v3, "BtOppObexServer"

    const-string v4, "receiving file interrupted by user."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/16 v21, 0x1ea

    .line 681
    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    .line 683
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 688
    :cond_5
    :goto_5
    return v21

    .line 569
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #position:J
    :catch_0
    move-exception v13

    .line 570
    .local v13, e1:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when openInputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v21, 0x1f0

    .line 572
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 606
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #position:J
    .restart local v8       #b:[B
    .restart local v19       #outputBufferSize:I
    .restart local v20       #readLength:I
    .restart local v22       #timestamp:J
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_6
    const/4 v3, 0x0

    :try_start_6
    move/from16 v0, v20

    invoke-virtual {v11, v8, v3, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 607
    move/from16 v0, v20

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 610
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receive file position = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " readLength "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " bytes took "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " ms"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez v24, :cond_7

    .line 616
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 618
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_7
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Created"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v24, v2

    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_1

    .line 622
    :cond_7
    :try_start_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->updateProgress(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 643
    :catch_1
    move-exception v13

    move-object/from16 v2, v24

    .line 644
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v13       #e1:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when receiving file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v3, "Abort Received"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 647
    const/16 v21, 0x1ea

    .line 651
    :goto_7
    const/16 v16, 0x1

    .line 653
    if-eqz v2, :cond_3

    .line 655
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Finally Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    goto/16 :goto_3

    .line 639
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catch_2
    move-exception v17

    move-object/from16 v2, v24

    .line 640
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v17, ie:Ljava/lang/InterruptedException;
    :goto_8
    :try_start_a
    const-string v3, "BtOppObexServer"

    const-string v4, "Interrupted waiting for uiUpdateThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 643
    .end local v17           #ie:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v13

    goto :goto_6

    .line 649
    .restart local v13       #e1:Ljava/io/IOException;
    :cond_8
    const/16 v21, 0x1f0

    goto :goto_7

    .line 653
    .end local v13           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_9
    if-eqz v2, :cond_9

    .line 655
    const-string v4, "BtOppObexServer"

    const-string v26, "Worker for Updation : Finally Destroying"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 658
    const/4 v2, 0x0

    .line 653
    :cond_9
    throw v3

    .line 667
    .end local v8           #b:[B
    .end local v19           #outputBufferSize:I
    .end local v20           #readLength:I
    .end local v22           #timestamp:J
    :cond_a
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_b

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 669
    .local v14, endTime:J
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receiving file completed for "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " length "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " Bytes in "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v26, v14, v9

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, "ms"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 v21, 0xc8

    .line 673
    goto/16 :goto_4

    .line 674
    .end local v14           #endTime:J
    :cond_b
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Reading file failed at "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " of "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    .line 676
    const/16 v21, 0x1eb

    goto/16 :goto_4

    .line 684
    :catch_4
    move-exception v12

    .line 685
    .local v12, e:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 653
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #b:[B
    .restart local v19       #outputBufferSize:I
    .restart local v20       #readLength:I
    .restart local v22       #timestamp:J
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catchall_1
    move-exception v3

    move-object/from16 v2, v24

    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_9

    .line 639
    :catch_5
    move-exception v17

    goto/16 :goto_8

    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_c
    move-object/from16 v2, v24

    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_2
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_1
    monitor-exit p0

    return-void

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 272
    const-string v0, "BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 274
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 275
    return-void
.end method

.method public getMyBusinessCard()Ljava/io/File;
    .locals 21

    .prologue
    .line 705
    const-string v1, "BtOppObexServer"

    const-string v3, " getMyBusinessCard()"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 707
    .local v2, myProfileUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 708
    .local v17, lookupUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 709
    .local v20, shareUri:Landroid/net/Uri;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My Profile Uri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "lookup"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 713
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 715
    .local v9, contactId:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 716
    .local v16, lookupKey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v9, v10, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 717
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My LookupUri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LookUpKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 719
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My ShareUri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v9           #contactId:J
    .end local v16           #lookupKey:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 725
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v11, dir:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    const-string v3, "myprofile.vcf"

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .local v19, myCard:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    const-string v1, "BtOppObexServer"

    const-string v3, " Directory and File is alredy There, Delete it"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 730
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 732
    :cond_1
    if-eqz v20, :cond_5

    .line 733
    const/4 v14, 0x0

    .line 735
    .local v14, i:Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v7, v1, [B

    .line 737
    .local v7, buffer:[B
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 738
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 742
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 743
    const-string v1, "BtOppObexServer"

    const-string v3, " my Profile vcard not created"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 766
    .end local v7           #buffer:[B
    .end local v14           #i:Ljava/io/InputStream;
    .end local v19           #myCard:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v19

    .line 722
    .end local v11           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 740
    .restart local v7       #buffer:[B
    .restart local v11       #dir:Ljava/io/File;
    .restart local v14       #i:Ljava/io/InputStream;
    .restart local v19       #myCard:Ljava/io/File;
    :cond_3
    :try_start_2
    const-string v1, "BtOppObexServer"

    const-string v3, " ** Not able to Create DIR ***"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v12

    .line 761
    .local v12, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to read myVcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 747
    .end local v12           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .line 751
    :goto_2
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 753
    .local v13, fos:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v14, :cond_2

    .line 755
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 756
    .local v15, length:I
    const/4 v1, -0x1

    if-eq v15, v1, :cond_2

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 748
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #length:I
    :catch_1
    move-exception v12

    .line 749
    .local v12, e:Ljava/io/FileNotFoundException;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Not able to open URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 765
    .end local v7           #buffer:[B
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v14           #i:Ljava/io/InputStream;
    :cond_5
    new-instance v18, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    const-string v3, "default.vcf"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v18, mDefaultvCard:Ljava/io/File;
    move-object/from16 v19, v18

    .line 766
    goto :goto_1
.end method

.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 260
    const-string v0, "BtOppObexServer"

    const-string v1, "onAbort()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    if-eqz v0, :cond_0

    .line 262
    const/16 v0, 0xa0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc6

    goto :goto_0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 966
    const-string v0, "BtOppObexServer"

    const-string v1, "release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 969
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    .line 972
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 974
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 975
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 976
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 978
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 932
    const-string v0, "BtOppObexServer"

    const-string v1, "onConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {p1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/btobex/HeaderSet;)V

    .line 935
    const/16 v0, 0x46

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 936
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnect(): uuid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    const/16 v0, 0xc6

    .line 945
    :goto_0
    return v0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    const-string v1, "BtOppObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v0, 0xd0

    goto :goto_0

    .line 944
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 945
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 950
    const-string v0, "BtOppObexServer"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    .line 952
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 953
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 15
    .parameter

    .prologue
    .line 772
    const-string v1, "BtOppObexServer"

    const-string v2, "onGet() +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v4, 0x0

    .line 775
    const-string v2, ""

    .line 776
    const-string v3, ""

    .line 777
    const/4 v8, 0x0

    .line 778
    const/4 v5, 0x0

    .line 781
    const-wide/16 v6, 0x0

    .line 785
    const-string v1, "ro.qualcomm.bluetooth.sndmyinfo"

    const/4 v9, 0x1

    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->getMyBusinessCard()Ljava/io/File;

    move-result-object v9

    .line 790
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v10

    .line 793
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 794
    const/16 v1, 0x42

    :try_start_1
    invoke-virtual {v4, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 796
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v4, v2}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v3, v1

    .line 802
    :goto_0
    const-string v1, "text/x-vcard"

    invoke-static {v3, v1}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 803
    const/16 v1, 0xcf

    .line 926
    :cond_0
    :goto_1
    return v1

    .line 788
    :cond_1
    const/16 v1, 0xd1

    goto :goto_1

    .line 798
    :catch_0
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v14

    .line 799
    :goto_2
    const-string v11, "BtOppObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onGet request headers "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v4, "BtOppObexServer"

    const-string v11, "request headers error"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    move-object v2, v3

    move-object v3, v1

    goto :goto_0

    .line 806
    :cond_2
    const-string v1, "BtOppObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    if-eqz v2, :cond_3

    const-string v1, "BtOppObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-nez v1, :cond_5

    .line 809
    :cond_4
    const-string v1, "BtOppObexServer"

    const-string v2, "Default Business Card Not Found ! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v1, 0xc4

    goto :goto_1

    .line 814
    :cond_5
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 815
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v5

    .line 820
    if-eqz v2, :cond_7

    if-nez v5, :cond_7

    .line 822
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 824
    :goto_3
    const/16 v1, 0xd0

    goto/16 :goto_1

    .line 816
    :catch_1
    move-exception v1

    move-object v2, v5

    .line 817
    :goto_4
    :try_start_6
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPP Pull Business Card : open stream Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 818
    const/16 v1, 0xd0

    .line 820
    if-eqz v2, :cond_0

    if-nez v8, :cond_0

    .line 822
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 823
    :catch_2
    move-exception v1

    goto :goto_3

    .line 820
    :cond_6
    throw v1

    .line 829
    :cond_7
    :try_start_8
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    invoke-virtual {v1}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_a

    .line 830
    const-string v1, "BtOppObexServer"

    const-string v8, "Local Device SRM: Capable"

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v1, 0x97

    invoke-virtual {v4, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 833
    sget-object v8, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v1, v8, :cond_9

    .line 834
    const-string v1, "BtOppObexServer"

    const-string v8, "SRM status: Enabled"

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 836
    const/16 v1, 0x98

    invoke-virtual {v4, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 837
    const-string v4, "BtOppObexServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SRMP header (CONTINUE or OK): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    sget-object v4, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    if-ne v1, v4, :cond_8

    .line 839
    const-string v1, "BtOppObexServer"

    const-string v4, "SRMP status: WAIT"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 861
    :goto_5
    new-array v4, v10, [B

    .line 864
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 865
    new-instance v1, Ljavax/btobex/HeaderSet;

    invoke-direct {v1}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 866
    const/4 v11, 0x1

    const-string v12, "default.vcf"

    invoke-virtual {v1, v11, v12}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 867
    const/16 v11, 0x42

    invoke-virtual {v1, v11, v3}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 868
    const/16 v3, 0xc3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 870
    new-instance v11, Ljava/io/BufferedInputStream;

    const/16 v3, 0x4000

    invoke-direct {v11, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 872
    :try_start_9
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V

    move-wide v1, v6

    .line 873
    :goto_6
    cmp-long v3, v1, v8

    if-eqz v3, :cond_d

    .line 874
    const/4 v3, 0x0

    invoke-virtual {v11, v4, v3, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 875
    int-to-long v12, v6

    add-long v2, v1, v12

    .line 877
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    invoke-virtual {v1}, Ljavax/btobex/ServerOperation;->isAborted()Z

    move-result v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_c

    .line 878
    const/4 v1, 0x0

    invoke-virtual {v5, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 880
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 881
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    invoke-virtual {v1}, Ljavax/btobex/ObexHelper;->getLocalSrmpWait()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_10

    .line 883
    :try_start_a
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v1

    .line 884
    const/16 v6, 0x98

    invoke-virtual {v1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 885
    const-string v6, "BtOppObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SRMP header (CONTINUE or OK): "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sget-object v6, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    if-ne v1, v6, :cond_b

    .line 887
    const-string v1, "BtOppObexServer"

    const-string v6, "SRMP status: WAIT"

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :goto_7
    move-wide v1, v2

    .line 895
    goto :goto_6

    .line 842
    :cond_8
    :try_start_b
    const-string v1, "BtOppObexServer"

    const-string v4, "SRMP status: NONE"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 856
    :catch_3
    move-exception v1

    .line 857
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getReceivedHeaders for SRM error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/16 v1, 0xd0

    goto/16 :goto_1

    .line 847
    :cond_9
    :try_start_c
    const-string v1, "BtOppObexServer"

    const-string v4, "SRM status: Disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 849
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_5

    .line 852
    :cond_a
    const-string v1, "BtOppObexServer"

    const-string v4, "Local Device SRM: Incapable"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 854
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_5

    .line 890
    :cond_b
    :try_start_d
    const-string v1, "BtOppObexServer"

    const-string v6, "SRMP status: NONE"

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v1, v0

    iget-object v1, v1, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    .line 893
    :catch_4
    move-exception v1

    .line 894
    :try_start_e
    const-string v6, "BtOppObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read SRMP Header "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v2

    .line 895
    goto/16 :goto_6

    .line 899
    :cond_c
    const-string v1, "BtOppObexServer"

    const-string v2, "Abort is received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 909
    :cond_d
    if-eqz v11, :cond_e

    .line 911
    :try_start_f
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 919
    :cond_e
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 920
    const/16 v1, 0xd0

    goto/16 :goto_1

    .line 903
    :catch_5
    move-exception v1

    .line 904
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPP Pull Business Card : Write outputstrem failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/16 v1, 0xd0

    goto/16 :goto_1

    .line 912
    :catch_6
    move-exception v1

    .line 913
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input stream close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v1, "BtOppObexServer"

    const-string v2, "Error when closing stream after send"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v1, 0xd0

    goto/16 :goto_1

    .line 924
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 925
    const-string v1, "BtOppObexServer"

    const-string v2, "onGet() -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/16 v1, 0xa0

    goto/16 :goto_1

    .line 820
    :catchall_0
    move-exception v1

    move-object v2, v5

    :goto_8
    if-eqz v2, :cond_6

    if-nez v8, :cond_6

    .line 822
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_3

    .line 823
    :catch_7
    move-exception v1

    goto/16 :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_3

    .line 820
    :catchall_1
    move-exception v1

    goto :goto_8

    .line 816
    :catch_9
    move-exception v1

    goto/16 :goto_4

    .line 798
    :catch_a
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v14

    goto/16 :goto_2

    :catch_b
    move-exception v2

    move-object v14, v2

    move-object v2, v4

    move-object v4, v14

    goto/16 :goto_2

    :cond_10
    move-wide v1, v2

    goto/16 :goto_6
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 13
    .parameter

    .prologue
    .line 279
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v6, 0xa0

    .line 291
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 293
    :cond_0
    const/16 v3, 0xc3

    .line 553
    :cond_1
    :goto_0
    return v3

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    instance-of v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    if-eqz v1, :cond_13

    .line 298
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    .line 302
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v7

    .line 306
    const/4 v5, 0x0

    .line 308
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v8

    .line 309
    invoke-static {v8}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/btobex/HeaderSet;)V

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    const/16 v2, 0xc3

    invoke-virtual {v8, v2}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 312
    const/16 v3, 0x42

    invoke-virtual {v8, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    move-object v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v4, v0

    iget-object v4, v4, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    invoke-virtual {v4}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_15

    .line 315
    const-string v4, "BtOppObexServer"

    const-string v9, "Local Device SRM: Capable"

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v4, 0x97

    invoke-virtual {v8, v4}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 318
    sget-object v8, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    if-ne v4, v8, :cond_14

    .line 319
    const-string v4, "BtOppObexServer"

    const-string v8, "SRM status: Enabled"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v4, v0

    iget-object v4, v4, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 330
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_24

    .line 331
    const-string v4, "BtOppObexServer"

    const-string v5, "length is 0, reject the transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v4, 0x1

    .line 333
    const/16 v5, 0xcb

    .line 336
    :goto_3
    if-eqz v1, :cond_3

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    :cond_3
    const-string v4, "BtOppObexServer"

    const-string v5, "name is null or empty, reject the transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v4, 0x1

    .line 339
    const/16 v5, 0xc0

    .line 342
    :cond_4
    if-nez v4, :cond_23

    .line 345
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 346
    if-gez v6, :cond_16

    if-nez v3, :cond_16

    .line 347
    const-string v4, "BtOppObexServer"

    const-string v5, "There is no file extension or mime type,reject the transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x1

    .line 350
    const/16 v5, 0xc0

    move v12, v4

    move v4, v5

    move-object v5, v3

    move v3, v12

    .line 374
    :cond_5
    :goto_4
    if-nez v3, :cond_21

    if-eqz v5, :cond_7

    if-nez v7, :cond_6

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    sget-object v6, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 380
    :cond_7
    const-string v3, "BtOppObexServer"

    const-string v4, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    const/4 v3, 0x1

    .line 382
    const/16 v4, 0xcf

    move v12, v3

    move v3, v4

    move v4, v12

    .line 385
    :goto_5
    if-eqz v4, :cond_8

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_1

    .line 395
    :cond_8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 397
    const-string v6, "hint"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "total_bytes"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string v1, "mimetype"

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    instance-of v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    if-eqz v1, :cond_18

    .line 402
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string v2, "destination"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_6
    const-string v1, "direction"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v1, "timestamp"

    iget-wide v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const/4 v1, 0x1

    .line 413
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    if-nez v2, :cond_9

    .line 414
    const-string v1, "confirm"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const/4 v1, 0x0

    .line 419
    :cond_9
    if-eqz v7, :cond_20

    .line 420
    const-string v1, "confirm"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const/4 v1, 0x0

    move v2, v1

    .line 425
    :goto_7
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 428
    if-eqz v2, :cond_a

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    const-string v2, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    :cond_a
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert contentUri: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocalShareInfoId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v1, "BtOppObexServer"

    const-string v2, "acquire partial WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-enter p0

    .line 441
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 442
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 443
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 445
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_c
    :goto_8
    :try_start_2
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    if-eqz v1, :cond_d

    .line 449
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 450
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    if-nez v1, :cond_c

    .line 451
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 455
    const-string v1, "BtOppObexServer"

    const-string v2, "MSG_CONNECT_TIMEOUT sent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 458
    :catch_0
    move-exception v1

    .line 459
    :try_start_3
    const-string v1, "BtOppObexServer"

    const-string v2, "Interrupted in onPut blocking"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_d
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    const-string v1, "BtOppObexServer"

    const-string v2, "Server unblocked "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-enter p0

    .line 464
    :try_start_4
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    if-eqz v1, :cond_e

    .line 465
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    :cond_e
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 475
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    if-eq v1, v2, :cond_f

    .line 476
    const-string v1, "BtOppObexServer"

    const-string v2, "Unexpected error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_f
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 480
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after confirm: userAccepted="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_19

    .line 488
    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 489
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 491
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    iput v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 492
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v2, v3, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 493
    const/16 v1, 0xd0

    .line 497
    :goto_9
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 499
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 501
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v4, "status"

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    invoke-direct {p0, v2, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/btobex/Operation;)I

    move-result v2

    .line 509
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_11

    .line 510
    const/16 v1, 0xd0

    .line 512
    :cond_11
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    :cond_12
    :goto_a
    move v3, v1

    .line 553
    goto/16 :goto_0

    .line 300
    :cond_13
    const-string v1, "FF:FF:FF:00:00:00"

    goto/16 :goto_1

    .line 322
    :cond_14
    :try_start_5
    const-string v4, "BtOppObexServer"

    const-string v8, "SRM status: Disabled"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v4, v0

    iget-object v4, v4, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 390
    :catch_1
    move-exception v1

    .line 391
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getReceivedHeaders error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v3, 0xc0

    goto/16 :goto_0

    .line 326
    :cond_15
    :try_start_6
    const-string v4, "BtOppObexServer"

    const-string v8, "Local Device SRM: Incapable"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object v4, v0

    iget-object v4, v4, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    goto/16 :goto_2

    .line 352
    :cond_16
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 353
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 354
    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    const-string v9, "BtOppObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mimetype guessed from extension "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz v6, :cond_17

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 366
    :goto_b
    if-eqz v5, :cond_5

    .line 367
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 360
    :cond_17
    if-nez v3, :cond_22

    .line 361
    const-string v4, "BtOppObexServer"

    const-string v5, "Can\'t get mimetype, reject the transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 362
    const/4 v4, 0x1

    .line 363
    const/16 v5, 0xcf

    move v12, v4

    move v4, v5

    move-object v5, v3

    move v3, v12

    goto :goto_b

    .line 405
    :cond_18
    const-string v1, "destination"

    const-string v2, "FF:FF:FF:00:00:00"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 461
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    .line 467
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 515
    :cond_19
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 525
    :cond_1a
    const-string v1, "BtOppObexServer"

    const-string v2, "Rejected incoming request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 528
    :try_start_9
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 532
    :goto_c
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 535
    :cond_1b
    const/16 v2, 0x1ea

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v3, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 537
    const/16 v1, 0xc3

    .line 539
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v3, :cond_1d

    .line 540
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 541
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 542
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 543
    if-eqz v3, :cond_1c

    .line 544
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 545
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    .line 529
    :catch_2
    move-exception v1

    .line 530
    const-string v1, "BtOppObexServer"

    const-string v2, "error close file stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 547
    :cond_1c
    const-string v2, "BtOppObexServer"

    const-string v3, "Could not get message!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 550
    :cond_1d
    const-string v2, "BtOppObexServer"

    const-string v3, "Error! mCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_1e
    move v1, v3

    goto/16 :goto_a

    :cond_1f
    move v1, v3

    goto/16 :goto_9

    :cond_20
    move v2, v1

    goto/16 :goto_7

    :cond_21
    move v12, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_5

    :cond_22
    move v12, v4

    move v4, v5

    move-object v5, v3

    move v3, v12

    goto/16 :goto_b

    :cond_23
    move v12, v4

    move v4, v5

    move-object v5, v3

    move v3, v12

    goto/16 :goto_4

    :cond_24
    move v4, v5

    move v5, v6

    goto/16 :goto_3
.end method

.method public preStart()V
    .locals 5

    .prologue
    .line 145
    const-string v2, "BtOppObexServer"

    const-string v3, "acquire full WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    :try_start_0
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create ServerSession with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Ljavax/btobex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Ljavax/btobex/ServerSession;-><init>(Ljavax/btobex/ObexTransport;Ljavax/btobex/ServerRequestHandler;Ljavax/btobex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    .line 150
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getMaxPacketSize()I

    move-result v1

    .line 151
    .local v1, mps:I
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v2, v1}, Ljavax/btobex/ServerSession;->setMaxPacketSize(I)V

    .line 152
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting ServerSession mps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v3, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isSrmCapable()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljavax/btobex/ObexHelper;->setLocalSrmCapability(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    invoke-virtual {v2}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/btobex/ObexHelper;->setLocalSrmParamStatus(Z)V

    .line 161
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #mps:I
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create server session error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 171
    const-string v0, "BtOppObexServer"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    const-string v1, "BtOppObexServer"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 187
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v1}, Ljavax/btobex/ServerSession;->close()V

    .line 190
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 196
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    .line 197
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 138
    return-void
.end method
