.class public Lcom/android/bluetooth/bpp/BluetoothBppEvent;
.super Ljava/lang/Object;
.source "BluetoothBppEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;,
        Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;
    }
.end annotation


# static fields
.field static mCallback:Landroid/os/Handler;


# instance fields
.field private bppEp:Ljavax/btobex/ClientSession$eventParser;

.field bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

.field public mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mCs:Ljavax/btobex/ClientSession;

.field public mEnforceClose:Z

.field private volatile mInterrupted:Z

.field private mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

.field private mTimeStamp:J

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const-string v0, "BluetoothBppEvent"

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

    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTransport:Ljavax/btobex/ObexTransport;

    .line 104
    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mEnforceClose:Z

    .line 106
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bppEp:Ljavax/btobex/ClientSession$eventParser;

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Ljavax/btobex/ClientSession;)Ljavax/btobex/ClientSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCs:Ljavax/btobex/ClientSession;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)Ljavax/btobex/ClientSession$eventParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bppEp:Ljavax/btobex/ClientSession$eventParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/bpp/BluetoothBppEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTimeStamp:J

    return-wide p1
.end method


# virtual methods
.method public start(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "JobId"

    .prologue
    .line 115
    const-string v0, "BluetoothBppEvent"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-object p1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    invoke-direct {v0, p1, p2}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    .line 118
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppEvent;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->start()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 123
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    const-string v1, "BluetoothBppEvent"

    const-string v2, "try interrupt"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->interrupt()V

    .line 128
    const-string v1, "BluetoothBppEvent"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;->join()V

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mThread:Lcom/android/bluetooth/bpp/BluetoothBppEvent$ClientThread;

    .line 131
    const/4 v1, 0x0

    sput-object v1, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mCallback:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBppEvent"

    const-string v2, "Interrupted waiting for thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
