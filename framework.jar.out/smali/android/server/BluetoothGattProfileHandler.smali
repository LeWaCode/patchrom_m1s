.class final Landroid/server/BluetoothGattProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothGattProfileHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final END:Ljava/lang/String; = "end"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final HANDLE:Ljava/lang/String; = "handle"

.field private static final MESSAGE_DISCONNECT_LE:I = 0xc

.field private static final MESSAGE_DISCOVER_CHARACTERISTICS_RESP:I = 0x7

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_BY_UUID_RESP:I = 0x5

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_RESP:I = 0x4

.field private static final MESSAGE_FIND_INCLUDED_SERVICE_RESP:I = 0x6

.field private static final MESSAGE_FIND_INFO_RESP:I = 0x8

.field private static final MESSAGE_READ_BY_TYPE_RESP:I = 0x9

.field private static final MESSAGE_READ_RESP:I = 0xa

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_SEND_INDICATION:I = 0x3

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final MESSAGE_WRITE_RESP:I = 0xb

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final PATH:Ljava/lang/String; = "PATH"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final REQUEST_HANDLE:Ljava/lang/String; = "request_handle"

.field private static final SESSION:Ljava/lang/String; = "session"

.field private static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "BluetoothGattProfileHandler"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VALUE_HANDLE:Ljava/lang/String; = "value_handle"

.field private static sInstance:Landroid/server/BluetoothGattProfileHandler;


# instance fields
.field private mAppConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            "Landroid/bluetooth/IBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mRegisteredServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/server/BluetoothGattProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothGattProfileHandler$1;-><init>(Landroid/server/BluetoothGattProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    .line 332
    iput-object p2, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    .line 336
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothGattProfileHandler;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->loadRegisteredServers([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothGattProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverEnable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothGattProfileHandler;->callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 5
    .parameter "config"
    .parameter "action"
    .parameter "status"

    .prologue
    .line 868
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 870
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 876
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 878
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "status"

    .prologue
    .line 850
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " State Change: status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 853
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 855
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v1

    .line 857
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 859
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 861
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private errorStatusToString(II)Ljava/lang/String;
    .locals 3
    .parameter "errorCode"
    .parameter "handle"

    .prologue
    .line 886
    if-nez p1, :cond_1

    .line 887
    const/4 v0, 0x0

    .line 955
    :cond_0
    :goto_0
    return-object v0

    .line 889
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 891
    .local v0, errorString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 946
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT_0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    :goto_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :pswitch_0
    const-string v0, "ATT_INVALID_HANDLE"

    .line 895
    goto :goto_1

    .line 897
    :pswitch_1
    const-string v0, "ATT_WRITE_NOT_PERM"

    .line 898
    goto :goto_1

    .line 900
    :pswitch_2
    const-string v0, "ATT_READ_NOT_PERM"

    .line 901
    goto :goto_1

    .line 903
    :pswitch_3
    const-string v0, "ATT_INVALID_PDU"

    .line 904
    goto :goto_1

    .line 906
    :pswitch_4
    const-string v0, "ATT_INSUFF_AUTHENTICATION"

    .line 907
    goto :goto_1

    .line 909
    :pswitch_5
    const-string v0, "ATT_REQ_NOT_SUPP"

    .line 910
    goto :goto_1

    .line 912
    :pswitch_6
    const-string v0, "ATT_INVALID_OFFSET"

    .line 913
    goto :goto_1

    .line 915
    :pswitch_7
    const-string v0, "ATT_INSUFF_AUTHORIZATION"

    .line 916
    goto :goto_1

    .line 918
    :pswitch_8
    const-string v0, "ATT_PREP_QUEUE_FULL"

    .line 919
    goto :goto_1

    .line 921
    :pswitch_9
    const-string v0, "ATT_ATTR_NOT_FOUND"

    .line 922
    goto :goto_1

    .line 924
    :pswitch_a
    const-string v0, "ATT_ATTR_NOT_LONG"

    .line 925
    goto :goto_1

    .line 927
    :pswitch_b
    const-string v0, "ATT_INSUFF_ENCR_KEY_SIZE"

    .line 928
    goto :goto_1

    .line 930
    :pswitch_c
    const-string v0, "ATT_INVAL_ATTR_VALUE_LEN"

    .line 931
    goto :goto_1

    .line 933
    :pswitch_d
    const-string v0, "ATT_UNLIKELY"

    .line 934
    goto :goto_1

    .line 936
    :pswitch_e
    const-string v0, "ATT_INSUFF_ENCRYPTION"

    .line 937
    goto :goto_1

    .line 939
    :pswitch_f
    const-string v0, "ATT_UNSUPP_GRP_TYPE"

    .line 940
    goto :goto_1

    .line 942
    :pswitch_10
    const-string v0, "ATT_INSUFF_RESOURCES"

    .line 943
    goto :goto_1

    .line 949
    :cond_2
    const-string v0, "ATT_UNLIKELY"

    goto :goto_1

    .line 891
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 340
    const-class v1, Landroid/server/BluetoothGattProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothGattProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothGattProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    .line 341
    :cond_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isServerEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 969
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRegisteredServers([Ljava/lang/String;)V
    .locals 4
    .parameter "servers"

    .prologue
    .line 959
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 960
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_0
    return-void
.end method

.method private removeRegisteredServer(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 964
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_0
    return-void
.end method

.method private serverDisable(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 975
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothService;->unregisterGattServerNative(Ljava/lang/String;Z)Z

    .line 979
    return-void
.end method

.method private serverEnable(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 982
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    return-void
.end method


# virtual methods
.method closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 5
    .parameter "config"
    .parameter "devPath"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, path:Ljava/lang/String;
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "closeGattLeConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v3, 0x0

    .line 387
    :goto_0
    return v3

    .line 379
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "PATH"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 383
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 385
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverCharacteristicsResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IBIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "property"
    .parameter "valueHandle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 498
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverCharacteristicsResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v3, 0x0

    .line 518
    :goto_0
    return v3

    .line 501
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " discoverCharacteristicsResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v3, "property"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 509
    const-string/jumbo v3, "value_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 514
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 516
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryByUuidResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v3, 0x0

    .line 463
    :goto_0
    return v3

    .line 449
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryByUuidResponse  handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string v3, "end"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 459
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 460
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 461
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 416
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v3, 0x0

    .line 438
    :goto_0
    return v3

    .line 425
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    const-string v3, "end"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 434
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "start"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findIncludedResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v3, 0x0

    .line 490
    :goto_0
    return v3

    .line 474
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findIncludedResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v3, "end"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 486
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 488
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;III)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findInfoResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v3, 0x0

    .line 542
    :goto_0
    return v3

    .line 528
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findInfoResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 538
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 540
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    const/4 v3, 0x1

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverCharacteristicsRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 704
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 705
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 706
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 718
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 709
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 710
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 712
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 701
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 713
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 714
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverIncludedRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverIncludedRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 682
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 683
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 684
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 687
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 688
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 690
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 679
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 691
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 692
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "reqHandle"

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryByUuidRequest - path : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "start :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 658
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 659
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 660
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 663
    .local v4, uuid:Landroid/os/ParcelUuid;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p2

    move v3, p3

    move v5, p5

    .line 664
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 674
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v6

    .line 666
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    instance-of v2, v6, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 668
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 655
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 669
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v6

    .line 670
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 619
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 620
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 621
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 624
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 625
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 627
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 617
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 628
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 629
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattFindInfoRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gatt object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 726
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 727
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 728
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 732
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 733
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 735
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 723
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 736
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 737
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadByTypeRequest(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "auth"
    .parameter "reqHandle"

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadByTypeRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 748
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 749
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 750
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 753
    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 754
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v2           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 755
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 756
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    instance-of v3, v7, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 758
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 745
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 759
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 760
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "handle"
    .parameter "reqHandle"

    .prologue
    .line 768
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadRequest - path : handle :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 770
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 771
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 772
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    :try_start_1
    invoke-interface {v0, v1, p3, p2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 784
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 775
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 776
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 778
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 768
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 779
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 780
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V
    .locals 6
    .parameter "path"
    .parameter "sessionHandle"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 831
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattSetClientConfigDescriptor - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    if-eqz v1, :cond_0

    .line 833
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 834
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 836
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 846
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 837
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 838
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 840
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 830
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 841
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 842
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 789
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattWriteRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz v1, :cond_0

    .line 792
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 793
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 796
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 797
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 799
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 788
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 800
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 801
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 8
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"
    .parameter "sessionHandle"
    .parameter "reqHandle"

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 811
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattReliableWriteRequest - path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    if-eqz v1, :cond_0

    .line 813
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 814
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    .line 816
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 826
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 817
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 818
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    instance-of v2, v7, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 820
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 810
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 821
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 822
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onIndicateResponse(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "result"

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indicate response object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 638
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    if-eqz v1, :cond_0

    .line 640
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 643
    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 649
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 644
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 645
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 636
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readByTypeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v3, 0x0

    .line 567
    :goto_0
    return v3

    .line 552
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readByTypeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 559
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 563
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 564
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 565
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    const/4 v3, 0x1

    goto :goto_0
.end method

.method readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v3, 0x0

    .line 591
    :goto_0
    return v3

    .line 577
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 583
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 587
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 588
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 589
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 347
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return v2
.end method

.method sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    .locals 5
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "notify"
    .parameter "sessionHandle"

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v3, 0x0

    .line 410
    :goto_0
    return v3

    .line 399
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "session"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 403
    const-string/jumbo v3, "notify"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 406
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 408
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    const/4 v3, 0x1

    goto :goto_0
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 359
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    invoke-direct {p0, v1}, Landroid/server/BluetoothGattProfileHandler;->removeRegisteredServer(Ljava/lang/String;)V

    .line 362
    const/4 v2, 0x1

    .line 365
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    .line 364
    :cond_0
    const-string v2, "BluetoothGattProfileHandler"

    const-string/jumbo v3, "unregisterAppConfiguration: GATT app not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    goto :goto_0
.end method

.method writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;II)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 596
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "writeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v3, 0x0

    .line 613
    :goto_0
    return v3

    .line 601
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v3, "error"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 609
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 611
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    const/4 v3, 0x1

    goto :goto_0
.end method
