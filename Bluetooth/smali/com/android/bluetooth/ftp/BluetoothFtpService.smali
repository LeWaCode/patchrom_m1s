.class public Lcom/android/bluetooth/ftp/BluetoothFtpService;
.super Landroid/app/Service;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;,
        Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;,
        Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;
    }
.end annotation


# static fields
.field public static isL2capSocket:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private isWaitingAuthorization:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mFtpServer:Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

.field private mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

.field private mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mServerSession:Ljavax/btobex/ServerSession;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isL2capSocket:Z

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sRemoteDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 200
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    .line 202
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    .line 204
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    .line 206
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 208
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 210
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 212
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 216
    iput-boolean v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mHasStarted:Z

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mStartId:I

    .line 222
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mFtpServer:Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;

    .line 224
    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    .line 226
    iput-boolean v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z

    .line 850
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 234
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startL2capSocketListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/ftp/BluetoothFtpService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyContentResolver(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->createFtpNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startObexServerSession()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/ftp/BluetoothFtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method private final closeL2capSocket(ZZ)V
    .locals 2
    .parameter "server"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 500
    if-ne p1, v1, :cond_0

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    .line 504
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 509
    :cond_0
    if-ne p2, v1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 514
    :cond_1
    return-void
.end method

.method private final closeRfcommSocket(ZZ)V
    .locals 2
    .parameter "server"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 427
    if-ne p1, v1, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    .line 431
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 436
    :cond_0
    if-ne p2, v1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 441
    :cond_1
    return-void
.end method

.method private final closeService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v1}, Ljavax/btobex/ServerSession;->close()V

    .line 521
    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    .line 525
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V

    .line 526
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    if-eqz v1, :cond_1

    .line 533
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->shutdown()V

    .line 534
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->join()V

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    if-eqz v1, :cond_2

    .line 543
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;->shutdown()V

    .line 544
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;->join()V

    .line 545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 552
    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 553
    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mHasStarted:Z

    .line 556
    iget v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    :cond_3
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 547
    .restart local v0       #ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createFtpNotification(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 959
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 963
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 964
    const-class v2, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 965
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 971
    const-class v3, Lcom/android/bluetooth/ftp/BluetoothFtpReceiver;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 974
    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 976
    const-string v4, "com.android.bluetooth.ftp.authchall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 977
    const-string v4, "com.android.bluetooth.ftp.authcancelled"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    new-instance v4, Landroid/app/Notification;

    const v5, 0x1080080

    const v6, 0x7f050084

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 980
    const v5, 0x7f050085

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f050086

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, p0, v5, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 984
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 985
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 986
    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 987
    invoke-static {p0, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 988
    const v1, -0xf4246

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 990
    :cond_0
    return-void
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    sget-object v0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initL2capSocket()Z
    .locals 7

    .prologue
    .line 461
    const/4 v3, 0x0

    .line 462
    .local v3, initSocketOK:Z
    const/16 v0, 0xa

    .line 465
    .local v0, CREATE_RETRY_TIME:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    if-nez v4, :cond_0

    .line 469
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x1489

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEl2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const/4 v3, 0x1

    .line 475
    :goto_1
    if-nez v3, :cond_0

    .line 476
    monitor-enter p0

    .line 479
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BluetoothFtpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error create L2capServerSocket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v3, 0x0

    goto :goto_1

    .line 480
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 481
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "BluetoothFtpService"

    const-string v5, "L2capsocketAcceptThread thread was interrupted (3)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    goto :goto_2

    .line 484
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 490
    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v4, :cond_1

    .line 496
    :goto_3
    return v3

    .line 494
    :cond_1
    const-string v4, "BluetoothFtpService"

    const-string v5, "Error to create listening socket after 10 try"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private final initRfcommSocket()Z
    .locals 7

    .prologue
    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, initSocketOK:Z
    const/16 v0, 0xa

    .line 392
    .local v0, CREATE_RETRY_TIME:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    if-nez v4, :cond_0

    .line 396
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v3, 0x1

    .line 402
    :goto_1
    if-nez v3, :cond_0

    .line 403
    monitor-enter p0

    .line 406
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BluetoothFtpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error create RfcommServerSocket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v3, 0x0

    goto :goto_1

    .line 407
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 408
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "BluetoothFtpService"

    const-string v5, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mInterrupted:Z

    goto :goto_2

    .line 411
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 417
    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v4, :cond_1

    .line 423
    :goto_3
    return v3

    .line 421
    :cond_1
    const-string v4, "BluetoothFtpService"

    const-string v5, "Error to create listening socket after 10 try"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;->setCancelled(Z)V

    .line 651
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 652
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    monitor-enter v1

    .line 640
    if-eqz p1, :cond_0

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;->setChallenged(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 645
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyContentResolver(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 674
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 675
    const-string v2, "BluetoothFtpService"

    const-string v3, "Unexpected error! mTypes is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_0
    return-void

    .line 679
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothFtpService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyMediaScanner(Landroid/os/Bundle;I)V
    .locals 6
    .parameter "obj"
    .parameter "op"

    .prologue
    .line 656
    const-string v0, "mimetypes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, mTypes:[Ljava/lang/String;
    const-string v0, "filepaths"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, fPaths:[Ljava/lang/String;
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 659
    :cond_0
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;

    const-string v1, "filepath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #fPaths:[Ljava/lang/String;
    const-string v1, "mimetype"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #mTypes:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 668
    :goto_0
    return-void

    .line 661
    .restart local v2       #fPaths:[Ljava/lang/String;
    .restart local v3       #mTypes:[Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 662
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;

    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_0

    .line 665
    :cond_2
    const-string v0, "BluetoothFtpService"

    const-string v1, "Unexpected error! mTypes or fPaths is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x2

    const v9, -0xf4245

    .line 280
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 281
    .local v0, action:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 282
    const-string v6, "BluetoothFtpService"

    const-string v7, "Unexpected error! action is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 280
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 288
    .local v4, state:I
    const/4 v2, 0x1

    .line 289
    .local v2, removeTimeoutMsg:Z
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    const/4 v2, 0x0

    .line 291
    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    .line 293
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v5, timeoutIntent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    .end local v5           #timeoutIntent:Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    .line 347
    :goto_2
    if-eqz v2, :cond_0

    .line 348
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 302
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 304
    :cond_5
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 305
    iget-boolean v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z

    if-eqz v6, :cond_0

    .line 310
    iput-boolean v8, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z

    .line 312
    const-string v6, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_8

    .line 315
    const-string v6, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v11}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 320
    :cond_6
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v6, :cond_7

    .line 321
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V

    goto :goto_2

    .line 323
    :cond_7
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "BluetoothFtpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught the error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    .end local v1           #ex:Ljava/io/IOException;
    :cond_8
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V

    goto :goto_3

    .line 332
    :cond_9
    const-string v6, "com.android.bluetooth.ftp.accessdisallowed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 333
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V

    goto :goto_2

    .line 334
    :cond_a
    const-string v6, "com.android.bluetooth.ftp.authresponse"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 335
    const-string v6, "com.android.bluetooth.ftp.sessionkey"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, sessionkey:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyAuthKeyInput(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeAuthChallTimer()V

    .line 338
    invoke-direct {p0, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V

    goto/16 :goto_2

    .line 339
    .end local v3           #sessionkey:Ljava/lang/String;
    :cond_b
    const-string v6, "com.android.bluetooth.ftp.authcancelled"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 340
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyAuthCancelled()V

    .line 341
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeAuthChallTimer()V

    .line 342
    invoke-direct {p0, v9}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V

    goto/16 :goto_2

    .line 344
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private removeAuthChallTimer()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    :cond_0
    return-void
.end method

.method private removeFtpNotification(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 994
    .local v0, context:Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 996
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 997
    return-void
.end method

.method private startL2capSocketListener()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->initL2capSocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;Lcom/android/bluetooth/ftp/BluetoothFtpService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    .line 454
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    const-string v1, "BluetoothFtpL2capAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;->start()V

    goto :goto_0
.end method

.method private final startObexServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 565
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 566
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 567
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "StartingObexFtpTransaction"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 572
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    const-string v2, "BluetoothFtpService"

    const-string v3, "Acquire partial wake lock"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 577
    :cond_1
    new-instance v2, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;

    iget-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mFtpServer:Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;

    .line 578
    monitor-enter p0

    .line 579
    :try_start_0
    new-instance v2, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    iget-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    .line 580
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;->setChallenged(Z)V

    .line 581
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;->setCancelled(Z)V

    .line 582
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    sget-boolean v2, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isL2capSocket:Z

    if-nez v2, :cond_3

    .line 585
    new-instance v1, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2, v5}, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .line 590
    .local v1, transport:Lcom/android/bluetooth/ftp/BluetoothFtpTransport;
    :goto_0
    new-instance v2, Ljavax/btobex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mFtpServer:Lcom/android/bluetooth/ftp/BluetoothFtpObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAuth:Lcom/android/bluetooth/ftp/BluetoothFtpAuthenticator;

    invoke-direct {v2, v1, v3, v4}, Ljavax/btobex/ServerSession;-><init>(Ljavax/btobex/ObexTransport;Ljavax/btobex/ServerRequestHandler;Ljavax/btobex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    .line 593
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;->isSrmCapable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/btobex/ObexHelper;->setLocalSrmCapability(Z)V

    .line 594
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    invoke-virtual {v2}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v2

    if-nez v2, :cond_2

    .line 595
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    invoke-virtual {v2, v5}, Ljavax/btobex/ObexHelper;->setLocalSrmParamStatus(Z)V

    .line 600
    :cond_2
    return-void

    .line 582
    .end local v1           #transport:Lcom/android/bluetooth/ftp/BluetoothFtpTransport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 587
    :cond_3
    new-instance v1, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2, v4}, Lcom/android/bluetooth/ftp/BluetoothFtpTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .restart local v1       #transport:Lcom/android/bluetooth/ftp/BluetoothFtpTransport;
    goto :goto_0
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->initRfcommSocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;Lcom/android/bluetooth/ftp/BluetoothFtpService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    const-string v1, "BluetoothFtpRfcommAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->start()V

    goto :goto_0
.end method

.method private stopObexServerSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    const-string v1, "BluetoothFtpService"

    const-string v2, "Release full wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 610
    iput-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 615
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v1}, Ljavax/btobex/ServerSession;->close()V

    .line 617
    iput-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mServerSession:Ljavax/btobex/ServerSession;

    .line 620
    :cond_1
    iput-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;

    .line 621
    iput-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capAcceptThread:Lcom/android/bluetooth/ftp/BluetoothFtpService$L2capSocketAcceptThread;

    .line 624
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V

    .line 625
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V

    .line 626
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startRfcommSocketListener()V

    .line 634
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->startL2capSocketListener()V

    .line 636
    :cond_2
    return-void

    .line 612
    :cond_3
    iput-object v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothFtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 240
    const-string v1, "BluetoothFtpService"

    const-string v2, "Ftp Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 244
    iget-boolean v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 245
    iput-boolean v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mHasStarted:Z

    .line 248
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 249
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    .end local v0           #state:I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 357
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    .line 362
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 260
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 261
    iput p3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mStartId:I

    .line 262
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 263
    const-string v1, "BluetoothFtpService"

    const-string v2, "Stopping BluetoothFtpService: device does not have BT or device is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
