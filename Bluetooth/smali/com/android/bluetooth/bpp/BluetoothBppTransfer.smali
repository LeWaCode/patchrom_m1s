.class public Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
.super Ljava/lang/Object;
.source "BluetoothBppTransfer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;,
        Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;
    }
.end annotation


# static fields
.field private static mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

.field private static mContext:Landroid/content/Context;


# instance fields
.field public JobChannel:I

.field PrintResultMsg:Ljava/lang/String;

.field public StatusChannel:I

.field bonding_process:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAuthChallProcess:Z

.field private volatile mBPPregisterReceiver:Z

.field public mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

.field private mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

.field private mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field public mForceClose:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

.field public mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

.field mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

.field public mStatusFinal:I

.field private mTimestamp:J

.field public mTransferCancelled:Z

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private mTransportEvent:Ljavax/btobex/ObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 1
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)V
    .locals 3
    .parameter "context"
    .parameter "powerManager"
    .parameter "batch"
    .parameter "session"

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    .line 148
    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    .line 150
    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    .line 158
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransferCancelled:Z

    .line 164
    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->PrintResultMsg:Ljava/lang/String;

    .line 166
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuthChallProcess:Z

    .line 168
    iput v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 186
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$1;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 1093
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$3;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1208
    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    .line 173
    sput-object p1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mPowerManager:Landroid/os/PowerManager;

    .line 175
    iput-object p3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 176
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransferCancelled:Z

    .line 178
    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->PrintResultMsg:Ljava/lang/String;

    .line 179
    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuthChallProcess:Z

    .line 180
    iput v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V

    .line 183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 184
    return-void
.end method

.method private ForceCloseBpp()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "BPP Operation got Emergency Stop!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    .line 221
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    const/16 v0, 0x206

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 223
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->markBatchResult(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v1, 0x14

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 231
    :cond_1
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 232
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 234
    :cond_2
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 237
    :cond_3
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 238
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 240
    :cond_4
    return-void
.end method

.method private IsNotSupportedDocFormats(Ljava/lang/String;)Z
    .locals 13
    .parameter "docFormats"

    .prologue
    .line 994
    sput-object p1, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->mSupportedDocs:Ljava/lang/String;

    .line 996
    if-eqz p1, :cond_8

    .line 997
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printer supports doc format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 999
    .local v6, currFileType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iget-object v7, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 1000
    .local v7, currUriName:Ljava/lang/String;
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nFile Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v9, 0x0

    .line 1002
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1003
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 1004
    .local v12, scheme:Ljava/lang/String;
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, "content"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1006
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1009
    .local v11, metadataCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1011
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1015
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1021
    .end local v11           #metadataCursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1022
    :cond_2
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filename after change =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {v6, v9}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->checkUnknownMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, extractMime:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1024
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set the file type to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1026
    const/4 v0, 0x0

    .line 1057
    .end local v1           #u:Landroid/net/Uri;
    .end local v6           #currFileType:Ljava/lang/String;
    .end local v7           #currUriName:Ljava/lang/String;
    .end local v8           #extractMime:Ljava/lang/String;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v12           #scheme:Ljava/lang/String;
    :goto_1
    return v0

    .line 1015
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v6       #currFileType:Ljava/lang/String;
    .restart local v7       #currUriName:Ljava/lang/String;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v11       #metadataCursor:Landroid/database/Cursor;
    .restart local v12       #scheme:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1018
    .end local v11           #metadataCursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1029
    .restart local v8       #extractMime:Ljava/lang/String;
    :cond_4
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No match doc format, let OPP handle it !! - batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->stop()V

    .line 1032
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    sget v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    .line 1034
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mOwner:I

    .line 1035
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/16 v2, 0xbe

    iput v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 1036
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v10

    .line 1037
    .local v10, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-nez v10, :cond_5

    .line 1038
    const-string v0, "BluetoothBppTransfer"

    const-string v2, "Error! info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v0, 0x0

    goto :goto_1

    .line 1041
    :cond_5
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget v2, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->markBatchOwnership(Landroid/content/Context;II)V

    .line 1044
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v0, :cond_6

    .line 1045
    const-string v0, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPP Transfer Start!! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 1048
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v0, :cond_7

    .line 1049
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 1054
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1051
    :cond_7
    const-string v0, "BluetoothBppTransfer"

    const-string v2, "Error! mTransfer is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1057
    .end local v1           #u:Landroid/net/Uri;
    .end local v6           #currFileType:Ljava/lang/String;
    .end local v7           #currUriName:Ljava/lang/String;
    .end local v8           #extractMime:Ljava/lang/String;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v12           #scheme:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->ForceCloseBpp()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->IsNotSupportedDocFormats(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Ljavax/btobex/ObexTransport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljavax/btobex/ObexTransport;)Ljavax/btobex/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->startObexSession()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljavax/btobex/ObexTransport;)Ljavax/btobex/ObexTransport;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransportEvent:Ljavax/btobex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->startEventThread()V

    return-void
.end method

.method public static checkUnknownMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1062
    .line 1063
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-object v0

    .line 1065
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1066
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1067
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v2, "vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 1070
    :cond_2
    const-string v2, "vcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1071
    const-string v0, "text/x-vcalendar"

    goto :goto_0

    .line 1072
    :cond_3
    const-string v2, "vmg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1073
    const-string v0, "text/x-vmessage"

    goto :goto_0

    .line 1074
    :cond_4
    const-string v2, "ical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1075
    const-string v0, "text/calendar"

    goto :goto_0

    .line 1076
    :cond_5
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1077
    const-string v0, "text/x-vmessage"

    goto :goto_0

    .line 1078
    :cond_6
    const-string v2, "htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1079
    const-string v0, "application/vnd.pwg-xhtml-print+xml"

    goto :goto_0

    .line 1080
    :cond_7
    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "jpe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "jfif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1082
    :cond_8
    const-string v0, "image/jpeg"

    goto/16 :goto_0

    .line 1083
    :cond_9
    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1084
    const-string v0, "image/gif"

    goto/16 :goto_0

    .line 1085
    :cond_a
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1086
    const-string v0, "image/png"

    goto/16 :goto_0

    .line 1087
    :cond_b
    const-string v2, "tif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    :cond_c
    const-string v0, "image/tiff"

    goto/16 :goto_0
.end method

.method private doBppSdp()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v6, -0x1

    .line 936
    const-string v3, "BluetoothBppTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do BPP SDP request for address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTimestamp:J

    .line 939
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "SupportedFormats"

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, docFormats:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->IsNotSupportedDocFormats(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 982
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    .line 943
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    .line 945
    iget v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    if-eq v3, v6, :cond_2

    if-eqz v0, :cond_2

    .line 946
    const-string v3, "BluetoothBppTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get BPP Job channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status Channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from SDP for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v3, :cond_1

    .line 951
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    iget v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 954
    :cond_1
    const-string v3, "BluetoothBppTransfer"

    const-string v4, "Error! mSessionHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :cond_2
    const-string v3, "BluetoothBppTransfer"

    const-string v4, "Remote Service channel not in cache"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 963
    const-string v3, "BluetoothBppTransfer"

    const-string v4, "Start SDP query failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v3, :cond_4

    .line 976
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    iget v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 978
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 966
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v3, "BluetoothBppTransfer"

    const-string v4, "Start new SDP, wait for result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->bonding_process:Z

    .line 968
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 969
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    sget-object v3, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 980
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_4
    const-string v3, "BluetoothBppTransfer"

    const-string v4, "Error! mSessionHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private markInfoStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;I)V
    .locals 3
    .parameter "info"
    .parameter "status"

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "info is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark ShareInfo in the batch as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v0, v1, p2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static notifyAuthCancelled()V
    .locals 4

    .prologue
    .line 846
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    monitor-enter v2

    .line 847
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;->setCancelled(Z)V

    .line 848
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 849
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.bpp.userconfirmtimeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    return-void

    .line 849
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 834
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    monitor-enter v2

    .line 835
    if-eqz p0, :cond_0

    .line 836
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    invoke-virtual {v1, p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 838
    :cond_0
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;->setChallenged(Z)V

    .line 839
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 840
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.bpp.userconfirmtimeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 843
    return-void

    .line 840
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processCurrentShare()V
    .locals 3

    .prologue
    .line 872
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCurrentShare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 874
    return-void
.end method

.method private startEventThread()V
    .locals 3

    .prologue
    .line 864
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Client session with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransportEvent:Ljavax/btobex/ObexTransport;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransportEvent:Ljavax/btobex/ObexTransport;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;-><init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    .line 866
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget-object v2, v2, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_JobId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->start(Landroid/os/Handler;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method private startObexSession()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 779
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iput v5, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 781
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 782
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-nez v2, :cond_1

    .line 783
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Unexpected error happened !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->interrupt()V

    .line 788
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "EXP: StartObexSession()waiting to join"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start session for info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v2, :cond_3

    .line 799
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create Client session with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v2, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    sget-object v3, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-direct {v2, v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;-><init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    .line 806
    :cond_2
    monitor-enter p0

    .line 807
    :try_start_1
    new-instance v2, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    .line 808
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;->setChallenged(Z)V

    .line 809
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;->setCancelled(Z)V

    .line 810
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    .line 811
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->start(Landroid/os/Handler;Ljavax/btobex/Authenticator;)V

    .line 814
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->processCurrentShare()V

    .line 819
    monitor-enter p0

    .line 821
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 825
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    .line 826
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "mBluetoothReceiver is registered !!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 830
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_1
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 801
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v2, v5, :cond_2

    .line 802
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "BPP doesn\'t support server"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 827
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private startSDPSession()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v4, -0x1

    .line 895
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "startSDPSession"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, INSTANCE:Lcom/android/bluetooth/bpp/BluetoothBppPreference;
    sget-object v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/bpp/BluetoothBppPreference;

    move-result-object v0

    .line 898
    if-nez v0, :cond_2

    .line 899
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Unexpected error! Instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6, v4, v4, v3}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Error! mSessionHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x1118

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    .line 911
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x1123

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    .line 914
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppPreference;->getFeatures(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, docFormats:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->IsNotSupportedDocFormats(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    iget v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_4

    .line 920
    const-string v2, "BluetoothBppTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get BPP Job channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status Channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTimestamp:J

    .line 924
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    if-eqz v2, :cond_3

    .line 925
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    iget v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    iget-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 928
    :cond_3
    const-string v2, "BluetoothBppTransfer"

    const-string v3, "Error! mSessionHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->doBppSdp()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBatchId()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    return v0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markBatchResult(I)V
    .locals 9
    .parameter "statusCode"

    .prologue
    const/4 v8, 0x0

    .line 645
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    .line 646
    .local v2, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-nez v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 649
    :cond_0
    const-string v4, "BluetoothBppTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-eqz v2, :cond_2

    .line 651
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_3

    .line 652
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 656
    :goto_0
    iput p1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 658
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 659
    .local v3, updateValues:Landroid/content/ContentValues;
    const-string v4, "status"

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 663
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 664
    const-string v4, "hint"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v4, "total_bytes"

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    const-string v4, "mimetype"

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_1
    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .end local v3           #updateValues:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 654
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0
.end method

.method public onBatchCanceled()V
    .locals 2

    .prologue
    .line 1362
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "Transfer on Batch canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->stop()V

    .line 1364
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 1365
    return-void
.end method

.method public onShareAdded(I)V
    .locals 3
    .parameter

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 1327
    if-nez v0, :cond_1

    .line 1328
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "Error! info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1333
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1336
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer continue session for info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from batch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->processCurrentShare()V

    .line 1339
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->setConfirmed()V

    goto :goto_0
.end method

.method public printResultMsg()V
    .locals 4

    .prologue
    .line 627
    iget-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-eqz v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 628
    :cond_0
    const-string v1, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printResultMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->markBatchResult(I)V

    .line 631
    iget v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const/16 v1, 0x205

    :goto_1
    iput v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 632
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, msg:Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 631
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    goto :goto_1
.end method

.method public setConfirmed()V
    .locals 4

    .prologue
    .line 882
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;

    const-string v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$2;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljava/lang/String;)V

    .line 890
    .local v0, notifyThread:Ljava/lang/Thread;
    const-string v1, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfirmed to unblock mSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 892
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    const/16 v1, 0xbf

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->markInfoStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;I)V

    .line 712
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start transfer when Bluetooth is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/16 v0, 0x19c

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 715
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 720
    const-string v0, "BluetoothBppTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create handler thread for batch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtBpp Transfer Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 722
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 723
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    .line 725
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 727
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->startSDPSession()V

    goto :goto_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 729
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "BPP doesn\'t support Server !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_3
    const-string v0, "BluetoothBppTransfer"

    const-string v1, "  Start: Thread Already there"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 740
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->interrupt()V

    .line 744
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "waiting for connect thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v1, :cond_1

    .line 751
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "Stop mSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->stop()V

    .line 753
    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 756
    const-string v1, "BluetoothBppTransfer"

    const-string v2, " Stopping mHandlerThread !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 760
    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 761
    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    .line 764
    :cond_2
    monitor-enter p0

    .line 766
    :try_start_1
    iget-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    if-eqz v1, :cond_3

    .line 767
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z

    .line 768
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 769
    const-string v1, "BluetoothBppTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBluetoothReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 775
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBppTransfer"

    const-string v2, "EXP: stop() waiting to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 771
    :catch_1
    move-exception v1

    goto :goto_1
.end method
