.class Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;
.super Ljava/util/TimerTask;
.source "LEProximityServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/proximity/LEProximityServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "reconnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/proximity/LEProximityServices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1076
    const-string v0, "LEProximityServices"

    const-string v3, "Inside reconnect task"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v3, "0000180300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v0, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1079
    .local v1, srvUuid:Landroid/os/ParcelUuid;
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices$reconnectTask;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const/16 v4, 0x1000

    const/16 v5, 0x12

    const/16 v6, 0x8

    const/16 v7, 0x100

    const/16 v9, 0xc0

    move v3, v2

    move v8, v2

    move v11, v10

    move v12, v2

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->gattConnect(Landroid/os/ParcelUuid;BBIIIIIIIII)Z
    invoke-static/range {v0 .. v12}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1400(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;BBIIIIIIIII)Z

    .line 1083
    return-void
.end method
