.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;,
        Landroid/server/BluetoothA2dpService$localPlayerSettings;,
        Landroid/server/BluetoothA2dpService$PlayerSettings;
    }
.end annotation


# static fields
.field private static final ACTION_METADATA_CHANGED:Ljava/lang/String; = "android.media.MediaPlayer.action.METADATA_CHANGED"

.field public static final ATTRIBUTE_EQUALIZER:I = 0x1

.field public static final ATTRIBUTE_REPEATMODE:I = 0x2

.field public static final ATTRIBUTE_SCANMODE:I = 0x4

.field public static final ATTRIBUTE_SHUFFLEMODE:I = 0x3

.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CMDGET:Ljava/lang/String; = "get"

.field private static final CMDSET:Ljava/lang/String; = "set"

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final DBG:Z = true

.field private static final DEFAULT_METADATA_NUMBER:Ljava/lang/String; = "0"

.field private static final DEFAULT_METADATA_STRING:Ljava/lang/String; = "Unknown"

.field private static final EVENT_PLAYSTATUS_CHANGED:I = 0x1

.field private static final EVENT_TRACK_CHANGED:I = 0x2

.field private static final EXTRA_ATTIBUTE_ID_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTRIBUTE_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTRIBUTE_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTRIB_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_INVALID:I = 0xff

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field private static final MESSAGE_PLAYERSETTINGS_TIMEOUT:I = 0x2

.field private static final MESSAGE_PLAYSTATUS_TIMEOUT:I = 0x1

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field private static final PLAYERSETTINGS_REQUEST:Ljava/lang/String; = "com.android.music.playersettingsrequest"

.field private static final PLAYERSETTINGS_RESPONSE:Ljava/lang/String; = "com.android.music.playersettingsresponse"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PLAYSTATUS_REQUEST:Ljava/lang/String; = "com.android.music.playstatusrequest"

.field private static final PLAYSTATUS_RESPONSE:Ljava/lang/String; = "com.android.music.playstatusresponse"

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final STATUS_ERROR:I = 0xff

.field private static final STATUS_FWD_SEEK:I = 0x3

.field private static final STATUS_PAUSED:I = 0x2

.field private static final STATUS_PLAYING:I = 0x1

.field private static final STATUS_REV_SEEK:I = 0x4

.field private static final STATUS_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"

.field public static final VALUE_INVALID:I = 0x0

.field public static final VALUE_REPEATMODE_ALL:I = 0x3

.field public static final VALUE_REPEATMODE_OFF:I = 0x1

.field public static final VALUE_REPEATMODE_SINGLE:I = 0x2

.field public static final VALUE_SHUFFLEMODE_ALL:I = 0x2

.field public static final VALUE_SHUFFLEMODE_OFF:I = 0x1


# instance fields
.field private final UPDATE_ATTRIBUTES:Ljava/lang/String;

.field private final UPDATE_ATTRIB_TEXT:Ljava/lang/String;

.field private final UPDATE_ATTRIB_VALUE:Ljava/lang/String;

.field private final UPDATE_VALUES:Ljava/lang/String;

.field private final UPDATE_VALUE_TEXT:Ljava/lang/String;

.field private def_attrib:[B

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mCursorCols:[Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMediaCount:Ljava/lang/String;

.field private mMediaNumber:Ljava/lang/String;

.field private mPendingCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayStatus:I

.field private mPlayStatusRequestPath:Ljava/lang/String;

.field private mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPosition:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportTime:Ljava/lang/Long;

.field private mTargetA2dpState:I

.field private mTrackName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

.field tmgr:Landroid/telephony/TelephonyManager;

.field private value_default:[B

.field private value_repmode:[B

.field private value_shufmode:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 8
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 809
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 88
    const-string v1, "Unknown"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    .line 89
    const-string v1, "Unknown"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    .line 90
    const-string v1, "Unknown"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    .line 91
    const-string v1, "0"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    .line 92
    const-string v1, "0"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    .line 93
    const-string v1, "0"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    .line 94
    const-string v1, "Unknown"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;

    .line 96
    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;

    .line 97
    iput v3, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    .line 98
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    .line 120
    const-string v1, "/"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    .line 125
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "artist"

    aput-object v2, v1, v4

    const-string v2, "album"

    aput-object v2, v1, v6

    const-string/jumbo v2, "title"

    aput-object v2, v1, v7

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mCursorCols:[Ljava/lang/String;

    .line 145
    new-instance v1, Landroid/server/BluetoothA2dpService$PlayerSettings;

    invoke-direct {v1, p0, v5}, Landroid/server/BluetoothA2dpService$PlayerSettings;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    .line 152
    new-instance v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;

    invoke-direct {v1, p0, v5}, Landroid/server/BluetoothA2dpService$localPlayerSettings;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    .line 187
    new-array v1, v6, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->def_attrib:[B

    .line 188
    new-array v1, v7, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->value_repmode:[B

    .line 192
    new-array v1, v6, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->value_shufmode:[B

    .line 194
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->value_default:[B

    .line 195
    const-string v1, "UpdateSupportedAttributes"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->UPDATE_ATTRIBUTES:Ljava/lang/String;

    .line 196
    const-string v1, "UpdateSupportedValues"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->UPDATE_VALUES:Ljava/lang/String;

    .line 197
    const-string v1, "UpdateCurrentValues"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->UPDATE_ATTRIB_VALUE:Ljava/lang/String;

    .line 198
    const-string v1, "UpdateAttributesText"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->UPDATE_ATTRIB_TEXT:Ljava/lang/String;

    .line 199
    const-string v1, "UpdateValuesText"

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->UPDATE_VALUE_TEXT:Ljava/lang/String;

    .line 203
    new-instance v1, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    .line 318
    new-instance v1, Landroid/server/BluetoothA2dpService$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$2;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 810
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 812
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 813
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "BluetoothA2dpService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 815
    new-instance v1, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    invoke-direct {v1, p0, v5}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    .line 817
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 819
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 820
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 821
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not init BluetoothA2dpService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 830
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 831
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.media.MediaPlayer.action.METADATA_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.music.playersettingsresponse"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 839
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    .line 841
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 843
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 844
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->tmgr:Landroid/telephony/TelephonyManager;

    .line 845
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 846
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iput-byte v4, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    .line 847
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iput-byte v4, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    .line 848
    return-void

    .line 187
    nop

    :array_0
    .array-data 0x1
        0x2t
        0x3t
    .end array-data

    .line 188
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 192
    :array_2
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method static synthetic access$1000(Landroid/server/BluetoothA2dpService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->value_default:[B

    return-object v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$localPlayerSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$1400(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$1500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/server/BluetoothA2dpService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$2702(Landroid/server/BluetoothA2dpService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/server/BluetoothA2dpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    return v0
.end method

.method static synthetic access$3002(Landroid/server/BluetoothA2dpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    return p1
.end method

.method static synthetic access$3100(Landroid/server/BluetoothA2dpService;ZJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/server/BluetoothA2dpService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3402(Landroid/server/BluetoothA2dpService;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->resumeSinkNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->getTrackId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/server/BluetoothA2dpService;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->updateLocalPlayerSettings([B)V

    return-void
.end method

.method static synthetic access$4400(Landroid/server/BluetoothA2dpService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->def_attrib:[B

    return-object v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothA2dpService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->value_repmode:[B

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothA2dpService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->value_shufmode:[B

    return-object v0
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 882
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :cond_0
    monitor-exit p0

    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 1282
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1283
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1285
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 1288
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x2

    .line 1291
    const/4 v0, 0x1

    .line 1293
    .local v0, result:Z
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-eq p1, v1, :cond_0

    .line 1294
    if-ne p1, v3, :cond_1

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v2, :cond_1

    .line 1296
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1297
    :cond_1
    if-ne p1, v2, :cond_2

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v3, :cond_2

    .line 1299
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 860
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x0

    .line 870
    :goto_0
    return v0

    .line 862
    :cond_0
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    .line 864
    :cond_1
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    const/4 v0, 0x2

    goto :goto_0

    .line 866
    :cond_2
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    const/16 v0, 0xa

    goto :goto_0

    .line 868
    :cond_3
    const-string v0, "disconnecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    const/4 v0, 0x3

    goto :goto_0

    .line 870
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private declared-synchronized convertedPlayStatus(ZJ)I
    .locals 3
    .parameter "playing"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 631
    monitor-enter p0

    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 632
    const/4 v0, 0x0

    .line 637
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 633
    :cond_1
    if-nez p1, :cond_2

    .line 634
    const/4 v0, 0x2

    goto :goto_0

    .line 635
    :cond_2
    if-eq p1, v0, :cond_0

    .line 637
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getTrackId(Ljava/lang/String;)J
    .locals 16
    .parameter "trackName"

    .prologue
    .line 1357
    const-wide/16 v12, 0x0

    .line 1359
    .local v12, trackId:J
    if-nez p1, :cond_0

    move-wide v14, v12

    .line 1391
    .end local v12           #trackId:J
    .local v14, trackId:J
    :goto_0
    return-wide v14

    .line 1363
    .end local v14           #trackId:J
    .restart local v12       #trackId:J
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v3, v4

    const-string v4, "is_music=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1368
    .local v9, musicCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1369
    .local v11, totalTracks:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1370
    const/4 v8, 0x0

    .line 1371
    .local v8, index:I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 1372
    const-wide/16 v1, 0x1

    add-long/2addr v12, v1

    .line 1373
    const-string/jumbo v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1375
    .local v10, title:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 1371
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1378
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1379
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1384
    .end local v10           #title:Ljava/lang/String;
    :cond_2
    if-ne v8, v11, :cond_3

    .line 1385
    const-string v1, "Record not found"

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1386
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    const-wide/16 v12, 0x0

    .line 1390
    .end local v8           #index:I
    .end local v9           #musicCursor:Landroid/database/Cursor;
    .end local v11           #totalTracks:I
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    move-wide v14, v12

    .line 1391
    .end local v12           #trackId:J
    .restart local v14       #trackId:J
    goto :goto_0

    .line 1382
    .end local v14           #trackId:J
    .restart local v8       #index:I
    .restart local v9       #musicCursor:Landroid/database/Cursor;
    .restart local v10       #title:Ljava/lang/String;
    .restart local v11       #totalTracks:I
    .restart local v12       #trackId:J
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1389
    .end local v8           #index:I
    .end local v9           #musicCursor:Landroid/database/Cursor;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #totalTracks:I
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    const v6, 0xfffe

    .line 293
    if-nez p1, :cond_0

    .line 294
    const/4 v4, 0x0

    .line 315
    :goto_0
    return-object v4

    .line 297
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 299
    .local v0, Char:I
    const v4, 0x10ffff

    if-gt v0, v4, :cond_2

    and-int/lit16 v4, v0, -0x800

    const v5, 0xd800

    if-eq v4, v5, :cond_2

    const v4, 0xfdd0

    if-lt v0, v4, :cond_1

    const v4, 0xfdef

    if-le v0, v4, :cond_2

    :cond_1
    and-int v4, v0, v6

    if-ne v4, v6, :cond_4

    .line 307
    .end local v0           #Char:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 309
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .local v3, temp:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #temp:Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v4, p1

    .line 315
    goto :goto_0

    .line 297
    .restart local v0       #Char:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v0           #Char:I
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothA2dpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 1271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1273
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 11
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1232
    if-eq p3, p2, :cond_1

    .line 1233
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z

    .line 1236
    const/4 v5, -0x1

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 1238
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-lez v5, :cond_0

    if-ne p3, v10, :cond_0

    .line 1242
    const/16 v5, 0x3e8

    invoke-virtual {p0, p1, v5}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1245
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 1246
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 1248
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->updateLocalSettingsToBluez()V

    .line 1251
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, p1, p3}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 1253
    .local v1, delay:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1254
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p2, p3, p1}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1261
    .end local v1           #delay:I
    :cond_1
    if-ne p2, v9, :cond_2

    if-ne p3, v10, :cond_2

    .line 1263
    invoke-virtual {p0}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1264
    .local v4, path:Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V

    .line 1265
    iget v5, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    int-to-long v5, v5

    invoke-direct {p0, v4, v9, v5, v6}, Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1268
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private native initNative()Z
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 936
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 947
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 941
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 943
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 944
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x1

    goto :goto_0

    .line 936
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1017
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1018
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1028
    :goto_0
    :pswitch_0
    monitor-exit p0

    return v2

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1023
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 1028
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1017
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 797
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 798
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 799
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 800
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 801
    .local v0, dockDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    const/4 v3, 0x1

    .line 806
    .end local v0           #dockDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 874
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 875
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    const/4 v1, 0x1

    .line 878
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1460
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 8

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "bluetooth_enabled=false"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 910
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 911
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 912
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 913
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 914
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 915
    .local v5, state:I
    sparse-switch v5, :sswitch_data_0

    .line 913
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 919
    :sswitch_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 921
    const/4 v6, 0x3

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 909
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 925
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :sswitch_1
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 930
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #state:I
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    monitor-exit p0

    return-void

    .line 915
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 12

    .prologue
    .line 888
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, devices:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 890
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 891
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 892
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 894
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 895
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_0

    .line 896
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 899
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 891
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 904
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 905
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    .line 888
    .end local v3           #devices:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1317
    if-nez p2, :cond_0

    .line 1318
    if-eqz p1, :cond_0

    .line 1319
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1326
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1321
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1322
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1323
    .local v2, state:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private onGetPlayStatusRequest(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 672
    const-string v4, "BluetoothA2dpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetPlayStatusRequest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetPlayStatus Request position is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 675
    iget v4, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 677
    .local v0, curTime:J
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 678
    .local v2, timeElapsed:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeElapsed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 679
    iget-wide v4, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    .line 680
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;

    .line 682
    .end local v0           #curTime:J
    .end local v2           #timeElapsed:J
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 683
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-wide v5, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    long-to-int v5, v5

    iget v6, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/server/BluetoothA2dpService;->sendPlayStatusNative(Ljava/lang/String;III)Z

    .line 684
    return-void
.end method

.method private onGetPlayerAttributeValues(Ljava/lang/String;[B)V
    .locals 7
    .parameter "path"
    .parameter "attrIds"

    .prologue
    const/4 v6, 0x4

    .line 721
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetPlayerAttributeValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 723
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    array-length v4, p2

    new-array v4, v4, [B

    iput-object v4, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    .line 725
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 728
    .local v2, msg:Landroid/os/Message;
    const-string v3, "command"

    const-string v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v3, "Attributes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 731
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 732
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v4, p2, v0

    aput-byte v4, v3, v0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 735
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 736
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 737
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 739
    return-void
.end method

.method private onListAttributeValuesText(Ljava/lang/String;B[B)V
    .locals 7
    .parameter "path"
    .parameter "attr"
    .parameter "valIds"

    .prologue
    const/4 v6, 0x3

    .line 774
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onListattributeValuesText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 778
    .local v2, msg:Landroid/os/Message;
    const-string v3, "command"

    const-string v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    const-string v3, "Attribute"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 781
    const-string v3, "Values"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 782
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 783
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    array-length v4, p3

    new-array v4, v4, [B

    iput-object v4, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    .line 784
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_0

    .line 785
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v4, p3, v0

    aput-byte v4, v3, v0

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 788
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 789
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 790
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 792
    return-void
.end method

.method private onListPlayerAttributeRequest(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 687
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onListPlayerAttributeRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 689
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.playersettingsrequest"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v2, "commandExtra"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 695
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 696
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 697
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x82

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 699
    return-void
.end method

.method private onListPlayerAttributeValues(Ljava/lang/String;B)V
    .locals 6
    .parameter "path"
    .parameter "attr"

    .prologue
    const/4 v5, 0x1

    .line 702
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onListPlayerAttributeValues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 704
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-byte p2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->attr:B

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.playersettingsrequest"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 709
    .local v1, msg:Landroid/os/Message;
    const-string v2, "command"

    const-string v3, "get"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v2, "commandExtra"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v2, "Attribute"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 712
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 715
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 716
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x82

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 718
    return-void
.end method

.method private onListPlayerAttributesText(Ljava/lang/String;[B)V
    .locals 7
    .parameter "path"
    .parameter "attrIds"

    .prologue
    const/4 v6, 0x2

    .line 754
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onListPlayerAttributesText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.music.playersettingsrequest"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 758
    .local v2, msg:Landroid/os/Message;
    const-string v3, "command"

    const-string v4, "get"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v3, "commandExtra"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string v3, "Attributes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 761
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 762
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    array-length v4, p2

    new-array v4, v4, [B

    iput-object v4, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    .line 763
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 764
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v4, p2, v0

    aput-byte v4, v3, v0

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 767
    iput v6, v2, Landroid/os/Message;->what:I

    .line 768
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 769
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 771
    return-void
.end method

.method private onSetPlayerAttributeValues(Ljava/lang/String;[B)V
    .locals 5
    .parameter "path"
    .parameter "attrValues"

    .prologue
    .line 742
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onListPlayerAttributeValues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.playersettingsrequest"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 746
    .local v1, msg:Landroid/os/Message;
    const-string v2, "command"

    const-string/jumbo v3, "set"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v2, "AttribValuePairs"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 748
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;

    iput-object p1, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    .line 750
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/16 v7, 0xa

    .line 1182
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1229
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1186
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    aget-object v2, p2, v5

    .line 1187
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1189
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1182
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1193
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1195
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1196
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 1197
    .local v4, state:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1199
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1202
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 1203
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1205
    :cond_3
    if-ne v4, v7, :cond_5

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_5

    .line 1206
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->tmgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_4

    .line 1207
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1208
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1210
    :cond_4
    const-string/jumbo v5, "suspend Sink"

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1215
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->suspendSinkNative(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1218
    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_6

    .line 1219
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1220
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 1223
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1224
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1225
    .local v3, prevState:I
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private declared-synchronized sendEvent(Ljava/lang/String;IJ)V
    .locals 3
    .parameter "path"
    .parameter "eventId"
    .parameter "data"

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothA2dpService;->sendEventNative(Ljava/lang/String;IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendEventNative(Ljava/lang/String;IJ)Z
.end method

.method private declared-synchronized sendMetaData(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    :cond_2
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    .line 646
    :cond_3
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    :cond_4
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    .line 648
    :cond_5
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 649
    :cond_6
    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    .line 652
    :cond_7
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMetaData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta data info is trackname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMediaNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediaCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPostion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGenre "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->sendMetaDataNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendMetaDataNative(Ljava/lang/String;)Z
.end method

.method private declared-synchronized sendPlayStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPlayStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-wide v1, p0, Landroid/server/BluetoothA2dpService;->mPosition:J

    long-to-int v1, v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mPlayStatus:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/server/BluetoothA2dpService;->sendPlayStatusNative(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synchronized native declared-synchronized sendPlayStatusNative(Ljava/lang/String;III)Z
.end method

.method private synchronized native declared-synchronized sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
.end method

.method private synchronized native declared-synchronized sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method

.method private updateLocalPlayerSettings([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1396
    aget-byte v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 1395
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1398
    :pswitch_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->eq_value:B

    goto :goto_1

    .line 1401
    :pswitch_1
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    goto :goto_1

    .line 1404
    :pswitch_2
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    goto :goto_1

    .line 1407
    :pswitch_3
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, v1, Landroid/server/BluetoothA2dpService$localPlayerSettings;->scan_value:B

    goto :goto_1

    .line 1411
    :cond_0
    return-void

    .line 1396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateLocalSettingsToBluez()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1414
    const/4 v4, 0x0

    .line 1415
    .local v4, validSettings:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->eq_value:B

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1416
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    if-le v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1417
    :cond_1
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    if-le v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1418
    :cond_2
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->scan_value:B

    if-lez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 1419
    :cond_3
    if-nez v4, :cond_4

    .line 1444
    :goto_0
    return-void

    .line 1421
    :cond_4
    mul-int/lit8 v5, v4, 0x2

    new-array v2, v5, [B

    .line 1422
    .local v2, retValarray:[B
    const/4 v0, 0x0

    .line 1424
    .local v0, i:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    if-le v5, v6, :cond_5

    .line 1425
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x2

    aput-byte v5, v2, v0

    .line 1426
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    aput-byte v5, v2, v1

    .line 1428
    :cond_5
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    if-le v5, v6, :cond_6

    .line 1429
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x3

    aput-byte v5, v2, v0

    .line 1430
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    aput-byte v5, v2, v1

    .line 1432
    :cond_6
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->eq_value:B

    if-lez v5, :cond_7

    .line 1433
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aput-byte v6, v2, v0

    .line 1434
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->eq_value:B

    aput-byte v5, v2, v1

    .line 1436
    :cond_7
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->scan_value:B

    if-lez v5, :cond_8

    .line 1437
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x4

    aput-byte v5, v2, v0

    .line 1438
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;

    iget-byte v5, v5, Landroid/server/BluetoothA2dpService$localPlayerSettings;->scan_value:B

    aput-byte v5, v2, v1

    .line 1440
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.music.playersettingsresponse"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v3, updateIntent:Landroid/content/Intent;
    const-string v5, "Response"

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    const-string v5, "AttribValuePairs"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1443
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1158
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1170
    :goto_0
    monitor-exit p0

    return v2

    .line 1164
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1165
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 1166
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1158
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1169
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1170
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 959
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectSink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 962
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 977
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 965
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 966
    .local v1, sinkDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 967
    .local v2, state:I
    if-eqz v2, :cond_2

    .line 968
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 973
    :cond_3
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 959
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sinkDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 977
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_0
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 981
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 1013
    :goto_0
    monitor-exit p0

    return v2

    .line 983
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 985
    .local v1, state:I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 989
    goto :goto_0

    .line 992
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1000
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 1004
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1006
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1008
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1010
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1011
    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    :pswitch_0
    move v2, v3

    .line 995
    goto :goto_0

    :pswitch_1
    move v2, v4

    .line 997
    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 1013
    goto :goto_0

    .line 981
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 985
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 992
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1036
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1040
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 1041
    .local v1, state:I
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, path:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1051
    :pswitch_0
    const/4 v4, 0x3

    invoke-direct {p0, p1, v1, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1052
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1054
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1057
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return v2

    :pswitch_2
    move v2, v3

    .line 1045
    goto :goto_0

    .line 1040
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1449
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "BluetoothA2dpService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1457
    :cond_0
    monitor-exit p0

    return-void

    .line 1452
    :cond_1
    :try_start_1
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1454
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1455
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1449
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 853
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 857
    return-void

    .line 855
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1125
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 1122
    .end local v0           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectedSinksPaths()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    const-string v8, "Need BLUETOOTH permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1113
    .local v0, btDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1114
    .local v5, paths:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1115
    .local v3, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1116
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 1118
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    monitor-exit p0

    return-object v5

    .line 1111
    .end local v0           #btDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v5           #paths:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1106
    const/4 v1, 0x0

    .line 1107
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1103
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v6, sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1132
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 1133
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 1134
    .local v7, state:I
    if-ne v7, v5, :cond_1

    .line 1135
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1129
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1133
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1140
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 951
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 955
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1082
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1085
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1099
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1088
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1090
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1098
    :cond_2
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 1099
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 1082
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 1151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1061
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suspendSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1064
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1078
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1067
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1069
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1074
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1077
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 1078
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 1061
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
