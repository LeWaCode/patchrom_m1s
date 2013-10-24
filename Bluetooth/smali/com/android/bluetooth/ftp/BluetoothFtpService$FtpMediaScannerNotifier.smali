.class public Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;
.super Ljava/lang/Object;
.source "BluetoothFtpService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FtpMediaScannerNotifier"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mOp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 4
    .parameter "context"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "handler"
    .parameter "op"

    .prologue
    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 1021
    iput-object p4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 1022
    iput p5, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mOp:I

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v0, filenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v1, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {p1, v2, v3, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1033
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 0
    .parameter "context"
    .parameter "filenames"
    .parameter "mimetypes"
    .parameter "handler"
    .parameter "op"

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 1038
    iput-object p4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 1039
    iput p5, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mOp:I

    .line 1042
    invoke-static {p1, p2, p3, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 1058
    if-eqz p2, :cond_0

    .line 1059
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1060
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1061
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1062
    iget v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mOp:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1063
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1064
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1077
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1067
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1068
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1069
    iget v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$FtpMediaScannerNotifier;->mOp:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1070
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1073
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothFtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTP !!!MediaScannerConnection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1075
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method
