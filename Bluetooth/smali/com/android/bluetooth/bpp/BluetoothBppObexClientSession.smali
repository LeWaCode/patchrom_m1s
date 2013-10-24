.class public Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothBppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;
    }
.end annotation


# static fields
.field public static mScreenshot:[B


# instance fields
.field bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

.field private mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

.field mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mEventConn:I

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private volatile mInterrupted:Z

.field private mMimeType:Ljava/lang/String;

.field public volatile mSoapProcess:I

.field private mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

.field private mTimeout:I

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 144
    if-nez p2, :cond_0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    const-string v0, "BluetoothBppObexClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mTransport:Ljavax/btobex/ObexTransport;

    .line 151
    iput v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mEventConn:I

    .line 152
    iput v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mTimeout:I

    .line 153
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$208(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mFileSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mMimeType:Ljava/lang/String;

    return-object p1
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/btobex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V
    .locals 10
    .parameter "request"
    .parameter "info"

    .prologue
    .line 993
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 994
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    const-string v7, "00:04:48"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1002
    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 1004
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1005
    .local v1, c:[C
    const/4 v3, 0x1

    .line 1006
    .local v3, firstDot:Z
    const/4 v5, 0x0

    .line 1007
    .local v5, modified:Z
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 1008
    aget-char v7, v1, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    .line 1009
    if-nez v3, :cond_2

    .line 1010
    const/4 v5, 0x1

    .line 1011
    const/16 v7, 0x5f

    aput-char v7, v1, v4

    .line 1013
    :cond_2
    const/4 v3, 0x0

    .line 1007
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1016
    :cond_4
    if-eqz v5, :cond_0

    .line 1017
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    .line 1018
    .local v6, newFilename:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1019
    const-string v7, "BluetoothBppObexClientSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending file \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" as \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "share"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 183
    return-void
.end method

.method public start(Landroid/os/Handler;Ljavax/btobex/Authenticator;)V
    .locals 3
    .parameter "handler"
    .parameter "auth"

    .prologue
    .line 156
    const-string v0, "BluetoothBppObexClientSession"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 160
    check-cast p2, Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    .end local p2
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mAuth:Lcom/android/bluetooth/bpp/BluetoothBppAuthenticator;

    .line 161
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->start()V

    .line 163
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->interrupt()V

    .line 170
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;->join()V

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 178
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBppObexClientSession"

    const-string v2, "Interrupted waiting for thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 0

    .prologue
    .line 1027
    return-void
.end method
