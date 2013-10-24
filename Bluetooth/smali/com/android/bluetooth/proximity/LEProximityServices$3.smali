.class Lcom/android/bluetooth/proximity/LEProximityServices$3;
.super Landroid/bluetooth/IBluetoothLEProximityServices$Stub;
.source "LEProximityServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/proximity/LEProximityServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/proximity/LEProximityServices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/proximity/LEProximityServices;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLEProximityServices$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized closeProximityService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "btDevice"
    .parameter "srvUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->closeService(Landroid/os/ParcelUuid;)Z
    invoke-static {v0, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)Z
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

.method public declared-synchronized readCharacteristicsValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 2
    .parameter "charUuid"
    .parameter "srvUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    const-string v0, "LEProximityServices"

    const-string v1, "Inside Proximity readCharacteristics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->readUpdatedCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$600(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerRssiUpdates(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "btDevice"
    .parameter "pathLossThresh"
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 622
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, bdAddr:Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v1, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const-string v1, "LEProximityServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting path loss threshold for the device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iput p2, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->pathLossThresh:I

    .line 627
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iput p3, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiInterval:I

    .line 628
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-byte v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->txPower:B

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    .line 630
    const-string v1, "LEProximityServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rssi thresh : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v3, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Path loss thresh : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v3, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->pathLossThresh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v1, "LEProximityServices"

    const-string v2, "Register RSSI watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v1, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiThresh:I

    sget-object v3, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget v3, v3, Lcom/android/bluetooth/proximity/LEProximityDevice;->rssiInterval:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->registerRssiUpdateWatcher(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v0           #bdAddr:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 637
    :cond_1
    :try_start_1
    const-string v1, "LEProximityServices"

    const-string v2, "The device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startProximityService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothThermometerCallBack;)Z
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

    .line 561
    monitor-enter p0

    :try_start_0
    const-string v2, "LEProximityServices"

    const-string v3, "Inside startGattService: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    if-nez v2, :cond_0

    .line 563
    const-string v1, "LEProximityServices"

    const-string v2, "mDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    const/4 v1, 0x0

    .line 596
    :goto_0
    monitor-exit p0

    return v1

    .line 566
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 567
    const-string v2, "LEProximityServices"

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

    .line 568
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #setter for: Lcom/android/bluetooth/proximity/LEProximityServices;->srvCallBack:Landroid/bluetooth/IBluetoothThermometerCallBack;
    invoke-static {v2, p3}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1102(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/bluetooth/IBluetoothThermometerCallBack;)Landroid/bluetooth/IBluetoothThermometerCallBack;

    .line 569
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    const-string v2, "LEProximityServices"

    const-string v3, "services have already been discovered. Create Gatt service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, objPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 577
    const-string v2, "LEProximityServices"

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

    .line 578
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->getBluetoothGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    invoke-static {v2, v0, p2}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$100(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 561
    .end local v0           #objPath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 580
    .restart local v0       #objPath:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v1, "LEProximityServices"

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

    .line 583
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, p2, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1200(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto/16 :goto_0

    .line 586
    .end local v0           #objPath:Ljava/lang/String;
    :cond_2
    const-string v1, "LEProximityServices"

    const-string v2, "Primary services need to be discovered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->getGattServices(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, p2, p1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1200(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto/16 :goto_0

    .line 591
    :cond_3
    const-string v2, "LEProximityServices"

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

    .line 592
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v3, "PROXIMITY_SERVICE_OP_SERVICE_READY"

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, p2, v3, v4, v5}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized unregisterRssiUpdates(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "btDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 644
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, bdAddr:Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v1, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    const-string v1, "LEProximityServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister rssi updates for the device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v1, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v1, v1, Lcom/android/bluetooth/proximity/LEProximityDevice;->BDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->unregisterRssiUpdateWatcher()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v0           #bdAddr:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_1
    :try_start_1
    const-string v1, "LEProximityServices"

    const-string v2, "The device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeCharacteristicsValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 5
    .parameter "uuid"
    .parameter "srvUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    const-string v2, "LEProximityServices"

    const-string v3, "Inside Proximity writeCharacteristics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compare "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget-object v2, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v2, v2, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidObjPathMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    .local v1, key:Ljava/lang/String;
    const-string v2, "LEProximityServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 610
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 615
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/proximity/LEProximityServices$3;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->writeProximityCharValue(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    invoke-static {v2, p1, p2, p3}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$700(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2
.end method
