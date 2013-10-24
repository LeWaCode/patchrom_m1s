.class Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;
.super Landroid/bluetooth/IBluetoothGattProfile$Stub;
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
    .line 328
    iput-object p1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattProfile$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoverCharacteristicsResult(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "result"

    .prologue
    .line 330
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDiscoverCharacteristicsResult : path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 333
    .local v2, srvUUID:Landroid/os/ParcelUuid;
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->uuidGattSrvMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 334
    .local v1, gattService:Landroid/bluetooth/BluetoothGattService;
    if-eqz p2, :cond_1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gattService.getServiceUuid() ======= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->registerForWatcher(Landroid/os/ParcelUuid;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$200(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V

    .line 340
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->discoverCharacteristics(Landroid/os/ParcelUuid;)V
    invoke-static {v3, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$300(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "BluetoothThermometerServices"

    const-string v4, " gattService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_1
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "Discover characterisitcs failed "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetCharacteristicCliConfResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "result"

    .prologue
    .line 365
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v1, v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 367
    .local v0, uuid:Landroid/os/ParcelUuid;
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "callback onSetCharacteristicCliConfResult: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v2, "THERMOMETER_SERVICE_OP_REGISTER_NOTIFY_INDICATE"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 373
    return-void
.end method

.method public onSetCharacteristicValueResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "result"

    .prologue
    .line 353
    sget-object v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v1, v1, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 355
    .local v0, uuid:Landroid/os/ParcelUuid;
    const-string v1, "BluetoothThermometerServices"

    const-string v2, "callback onSetCharacteristicValueResult: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v1, "BluetoothThermometerServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v2, "THERMOMETER_SERVICE_OP_WRITE_VALUE"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 362
    return-void
.end method

.method public onUpdateCharacteristicValueResult(Ljava/lang/String;Z)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 404
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "callback onUpdateCharacteristicValueResult: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v2, v2, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 408
    .local v0, uuid:Landroid/os/ParcelUuid;
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p2, :cond_7

    .line 410
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a0800001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "calling Date Time Read Char to get updated value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDateTime(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$800(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v6, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 477
    .end local v1           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "calling Msr Interval Read Char to get updated value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readMeasurementInterval(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$900(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .restart local v1       #value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v6, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 427
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a1d00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Reading the temperature type Charactersitics"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readTemperatureType(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1000(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1       #value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v6, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 435
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2900001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2400001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2500001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2700001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2600001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2800001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2a00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    :cond_3
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Reading the Device Information UTF-8 Charactersitic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationUtf8String(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1100(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1       #value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v6, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 458
    .end local v1           #value:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2300001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "00002a2a00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v2, v3}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 462
    :cond_5
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Reading the Device Information Charactersitic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->readDeviceInformationString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$1200(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .restart local v1       #value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v6, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 470
    .end local v1           #value:Ljava/lang/String;
    :cond_6
    const-string v2, "BluetoothThermometerServices"

    const-string v3, "Character cannot be updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    :cond_7
    const-string v2, "BluetoothThermometerServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateCharacteristicValueResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v3, "THERMOMETER_SERVICE_OP_READ"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v2, v0, v3, v7, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    .line 376
    sget-object v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->mDevice:Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;

    iget-object v3, v3, Lcom/android/bluetooth/thermometer/BluetoothThermometerDevice;->objPathUuidMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 377
    .local v1, uuid:Landroid/os/ParcelUuid;
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback onValueChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a2100001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "onValueChanged FOR MEASUREMENT_INTERVAL_UUID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertLittleEnHexStrToVal(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$600(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, msrIntStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_NOTIFICATION_INDICATION_VALUE"

    new-instance v5, Ljava/util/ArrayList;

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, v1, v4, v8, v5}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 401
    .end local v0           #msrIntStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a1c00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "00002a1e00001000800000805f9b34fb"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->convertStrToParcelUUID(Ljava/lang/String;)Landroid/os/ParcelUuid;
    invoke-static {v3, v4}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$500(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :cond_2
    const-string v3, "BluetoothThermometerServices"

    const-string v4, "onValueChanged FOR TEMPERATURE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->parseTempMeasurement(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, p2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$700(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "BluetoothThermometerServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices$2;->this$0:Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;

    const-string v4, "THERMOMETER_SERVICE_NOTIFICATION_INDICATION_VALUE"

    #calls: Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->bundleAndSendResult(Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V
    invoke-static {v3, v1, v4, v8, v2}, Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;->access$400(Lcom/android/bluetooth/thermometer/BluetoothThermometerServices;Landroid/os/ParcelUuid;Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method
