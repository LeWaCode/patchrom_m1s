.class Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;
.super Landroid/bluetooth/IBluetoothThermometerServices$Stub;
.source "BluetoothThermometerServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearNotifyIndicate(Landroid/os/ParcelUuid;)Z
    .locals 5
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 708
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Inside clearNotifyIndicate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, readCharUUID:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "The character parcel uuid is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :goto_0
    monitor-exit p0

    return v1

    .line 715
    :cond_0
    :try_start_1
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Char client conf for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a1c00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a1e00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const/4 v3, 0x0

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->setClientConfDesc(Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;
    invoke-static {v2, p1, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$2000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, result:Z
    goto :goto_0

    .line 724
    .end local v1           #result:Z
    :cond_2
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Cannot Notify/Indicate this char : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0

    .line 708
    .end local v0           #readCharUUID:Ljava/lang/String;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized closeThermometerService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "btDevice"
    .parameter "srvUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->closeService(Landroid/os/ParcelUuid;)Z
    invoke-static {v0, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$2100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 2
    .parameter "serviceUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    .local v0, srvName:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 520
    .end local v0           #srvName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyIndicateValue(Landroid/os/ParcelUuid;)Z
    .locals 5
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Inside notifyIndicateValue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, readCharUUID:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "The character parcel uuid is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    const/4 v1, 0x0

    .line 703
    :goto_0
    monitor-exit p0

    return v1

    .line 687
    :cond_0
    :try_start_1
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Char client conf for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a1c00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const/4 v3, 0x2

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->setClientConfDesc(Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;
    invoke-static {v2, p1, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$2000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, result:Z
    goto :goto_0

    .line 693
    .end local v1           #result:Z
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a1e00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 695
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const/4 v3, 0x1

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->setClientConfDesc(Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;
    invoke-static {v2, p1, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$2000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;S)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1       #result:Z
    goto :goto_0

    .line 697
    .end local v1           #result:Z
    :cond_3
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Cannot Notify or Indicate this characteristics : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto/16 :goto_0

    .line 680
    .end local v0           #readCharUUID:Ljava/lang/String;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized readCharacteristicsValue(Landroid/os/ParcelUuid;)V
    .locals 9
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Inside BluetoothThermometerServices readCharacteristics"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, readCharUUID:Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 540
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a0800001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Reading the Date Time Charactersitics"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateDateTime(Landroid/os/ParcelUuid;)Z
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 549
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Reading the Measurement Interval Charactersitics"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharValue(Landroid/os/ParcelUuid;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #readCharUUID:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 553
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #readCharUUID:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a1d00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Reading the temperature type Charactersitics"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readTemperatureType(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 558
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Read Char returned null..so calling update char"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharValue(Landroid/os/ParcelUuid;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 566
    .end local v2           #value:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2900001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2400001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2500001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2700001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2600001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2800001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2a00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 582
    :cond_5
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Reading the Device Information UTF-8 Charactersitic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationUtf8String(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .restart local v2       #value:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 585
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Read Char returned null..so calling update char"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharValue(Landroid/os/ParcelUuid;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 588
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 594
    .end local v2           #value:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2a00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 598
    :cond_8
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Reading the Device Information Charactersitic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1200(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .restart local v2       #value:Ljava/lang/String;
    if-nez v2, :cond_9

    .line 601
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Read Char returned null..so calling update char"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->updateCharValue(Landroid/os/ParcelUuid;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 604
    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 611
    .end local v2           #value:Ljava/lang/String;
    :cond_a
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This characteristics : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 618
    :cond_b
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "The character parcel uuid is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_OP_READ"

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized readClientCharConf(Landroid/os/ParcelUuid;)I
    .locals 6
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Inside BluetoothThermometerServices readClientCharConf"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, -0x1

    .line 657
    .local v1, result:I
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, readCharUUID:Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "The character parcel uuid is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 675
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    monitor-exit p0

    return v2

    .line 662
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a1c00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a1e00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    :cond_1
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading Char client conf for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getClientConfDesc(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1900(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v2, v1

    .line 675
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 671
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_2
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The client conf for this char : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    const/4 v1, -0x1

    goto :goto_1

    .line 655
    .end local v0           #readCharUUID:Ljava/lang/String;
    .end local v1           #result:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startThermometerService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothThermometerCallBack;)Z
    .locals 6
    .parameter "btDevice"
    .parameter "uuid"
    .parameter "callBack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 485
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Inside startGattService: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    if-nez v2, :cond_0

    .line 487
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "mDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    const/4 v1, 0x0

    .line 516
    :goto_0
    monitor-exit p0

    return v1

    .line 490
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 491
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new GATT service for UUID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #setter for: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->thermometerSrvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;
    invoke-static {v2, p3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1302(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/bluetooth/IBluetoothThermometerCallBack;)Landroid/bluetooth/IBluetoothThermometerCallBack;

    .line 493
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "services have already been discovered. Create Gatt service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, objPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 498
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET GATT SERVICE for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    invoke-static {v2, v0, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    .end local v0           #objPath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 501
    .restart local v0       #objPath:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action GATT has not been received for uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, p2, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto/16 :goto_0

    .line 505
    .end local v0           #objPath:Ljava/lang/String;
    :cond_2
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "Primary services need to be discovered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, p2, p1}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto/16 :goto_0

    .line 510
    :cond_3
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gatt service already exists for UUID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_SERVICE_READY"

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, p2, v3, v4, v5}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized writeCharacteristicsValue(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 5
    .parameter "uuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Inside BluetoothThermometerServices writeCharacteristics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, writeCharUUID:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "The character parcel uuid is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    const/4 v2, 0x0

    .line 650
    :goto_0
    monitor-exit p0

    return v2

    .line 636
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a0800001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "writing the Date Time Charactersitics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeDateTime(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    invoke-static {v2, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1700(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    .line 640
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDateTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v0

    .line 650
    goto :goto_0

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "writing the Measurement Interval Charactersitics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$3;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->writeMeasurementInterval(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    invoke-static {v2, p1, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1800(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 646
    :cond_2
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This characteristics : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be written"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    const/4 v0, 0x0

    goto :goto_1

    .line 628
    .end local v0           #result:Z
    .end local v1           #writeCharUUID:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
