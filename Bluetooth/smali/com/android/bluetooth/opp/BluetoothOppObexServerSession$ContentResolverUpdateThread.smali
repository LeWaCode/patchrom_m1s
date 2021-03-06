.class Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolverUpdateThread"
.end annotation


# instance fields
.field private contentUri:Landroid/net/Uri;

.field private volatile interrupted:Z

.field private mContext1:Landroid/content/Context;

.field private position:J

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cntUri"
    .parameter "pos"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 208
    const-string v0, "BtOpp Server ContentResolverUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 209
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    .line 210
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    .line 211
    iput-wide p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    .line 212
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    .line 251
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 252
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 225
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 235
    const-string v2, "BtOppObexServer"

    const-string v3, "ContentResolverUpdateThread was interrupted before sleep !, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    return-void

    .line 240
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v2, "BtOppObexServer"

    const-string v3, "Server ContentResolverUpdateThread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateProgress(J)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    .line 216
    return-void
.end method
