.class Lcom/android/bluetooth/proximity/LEProximityServices$2;
.super Landroid/bluetooth/IBluetoothGattProfile$Stub;
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
    .line 471
    iput-object p1, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattProfile$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoverCharacteristicsResult(Ljava/lang/String;Z)V
    .locals 8
    .parameter "path"
    .parameter "result"

    .prologue
    .line 473
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDiscoverCharacteristicsResult : path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, srvCharUuid:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, uuids:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 478
    .local v3, srvUUID:Landroid/os/ParcelUuid;
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 480
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz p2, :cond_1

    .line 481
    if-eqz v1, :cond_0

    .line 482
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gattService.getServiceUuid() ======= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V
    invoke-static {v5, v3}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$800(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "LEProximityServices"

    const-string v6, " gattService is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_1
    const-string v5, "LEProximityServices"

    const-string v6, "Discover characterisitcs failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetCharacteristicCliConfResult(Ljava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "result"

    .prologue
    .line 514
    return-void
.end method

.method public onSetCharacteristicValueResult(Ljava/lang/String;Z)V
    .locals 7
    .parameter "path"
    .parameter "result"

    .prologue
    .line 499
    sget-object v4, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v4, v4, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    .local v0, srvCharUuid:Ljava/lang/String;
    const-string v4, "LEProximityServices"

    const-string v5, "callback onSetCharacteristicValueResult: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, uuids:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 506
    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v4, "LEProximityServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 509
    .local v1, srvUuid:Landroid/os/ParcelUuid;
    iget-object v4, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v5, "PROXIMITY_SERVICE_OP_WRITE_VALUE"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v4, v2, v5, p2, v6}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 511
    return-void
.end method

.method public onUpdateCharacteristicValueResult(Ljava/lang/String;Z)V
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 521
    const-string v5, "LEProximityServices"

    const-string v6, "callback onUpdateCharacteristicValueResult: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v5, Lcom/android/bluetooth/proximity/LEProximityServices;->mDevice:Lcom/android/bluetooth/proximity/LEProximityDevice;

    iget-object v5, v5, Lcom/android/bluetooth/proximity/LEProximityDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    .local v0, srvCharUuid:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, uuids:[Ljava/lang/String;
    aget-object v5, v3, v9

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 527
    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uuid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    aget-object v5, v3, v10

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 529
    .local v1, srvUuid:Landroid/os/ParcelUuid;
    if-eqz p2, :cond_2

    .line 530
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v6, "00002a0600001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v5, v6}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    const-string v5, "LEProximityServices"

    const-string v6, "Reading the PROXIMITY Charactersitics"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->readProximityChar(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v5, v2, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$900(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v6, "PROXIMITY_SERVICE_OP_READ"

    new-instance v7, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v5, v2, v6, v9, v7}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 552
    .end local v4           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v6, "00002a0700001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v5, v6}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$200(Lcom/android/bluetooth/proximity/LEProximityServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 538
    const-string v5, "LEProximityServices"

    const-string v6, "Reading the TX power Charactersitics"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->readTXPower(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v5, v2, v1}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$1000(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .restart local v4       #value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v6, "PROXIMITY_SERVICE_OP_READ"

    new-instance v7, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v5, v2, v6, v9, v7}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 543
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    const-string v5, "LEProximityServices"

    const-string v6, "Proximity char UUID does not match"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :cond_2
    const-string v5, "LEProximityServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateCharacteristicValueResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v5, p0, Lcom/android/bluetooth/proximity/LEProximityServices$2;->this$0:Lcom/android/bluetooth/proximity/LEProximityServices;

    const-string v6, "PROXIMITY_SERVICE_OP_READ"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/proximity/LEProximityServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v5, v2, v6, v10, v7}, Lcom/android/bluetooth/proximity/LEProximityServices;->access$300(Lcom/android/bluetooth/proximity/LEProximityServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "value"

    .prologue
    .line 518
    return-void
.end method
