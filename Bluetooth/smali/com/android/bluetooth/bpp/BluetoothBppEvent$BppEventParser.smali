.class public Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;
.super Ljava/lang/Object;
.source "BluetoothBppEvent.java"

# interfaces
.implements Ljavax/btobex/ClientSession$eventParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BppEventParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Callback(Ljava/lang/String;)Z
    .locals 6
    .parameter "data"

    .prologue
    .line 491
    const-string v0, "BluetoothBppEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetEvent Response - taken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mTimeStamp:J
    invoke-static {v4}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->access$400(Lcom/android/bluetooth/bpp/BluetoothBppEvent;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppEvent$BppEventParser;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v0, v0, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    const-string v1, "GetEvent"

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->Parser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
