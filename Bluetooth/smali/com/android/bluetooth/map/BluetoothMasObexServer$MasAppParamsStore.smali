.class Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;
.super Ljava/lang/Object;
.source "BluetoothMasObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasAppParamsStore"
.end annotation


# instance fields
.field private appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasObexServer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasObexServer;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->this$0:Lcom/android/bluetooth/map/BluetoothMasObexServer;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    .line 143
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMasAppParams;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    .line 144
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 145
    return-void
.end method

.method private final getUint16BigEndian(BB)I
    .locals 3
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 187
    const v1, 0xff00

    shl-int/lit8 v2, p1, 0x8

    and-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    or-int v0, v1, v2

    .line 188
    .local v0, retVal:I
    return v0
.end method

.method private final getUint32BigEndian(BBBB)J
    .locals 8
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"

    .prologue
    .line 193
    const-wide/32 v2, -0x1000000

    shl-int/lit8 v4, p1, 0x24

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    shl-int/lit8 v6, p2, 0x16

    int-to-long v6, v6

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    shl-int/lit8 v6, p3, 0x8

    int-to-long v6, v6

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0xff

    int-to-long v6, p4

    and-long/2addr v4, v6

    or-long v0, v2, v4

    .line 196
    .local v0, retVal:J
    return-wide v0
.end method

.method private final validateTag(JJJJJ)Z
    .locals 2
    .parameter "tagVal"
    .parameter "tagLen"
    .parameter "tagMinVal"
    .parameter "tagMaxVal"
    .parameter "tagActualLen"

    .prologue
    const/4 v0, 0x0

    .line 201
    cmp-long v1, p3, p9

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    cmp-long v1, p1, p5

    if-ltz v1, :cond_0

    cmp-long v1, p1, p7

    if-gtz v1, :cond_0

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Clear AppParams : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/16 v1, 0x400

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/16 v1, 0xff

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const-wide/32 v1, 0xffff

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 139
    return-void
.end method

.method public final get()Lcom/android/bluetooth/map/BluetoothMasAppParams;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v3, "Create MasAppParams struct for service : Enter"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMasAppParams;-><init>()V

    .line 151
    .local v0, tmp:Lcom/android/bluetooth/map/BluetoothMasAppParams;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v3, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    iput-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    .line 157
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 159
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 163
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 167
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_3
    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    .line 176
    return-object v0

    .line 167
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final isMaxListCountZero()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parse([B)Z
    .locals 13
    .parameter "params"

    .prologue
    .line 212
    const/4 v11, 0x0

    .line 215
    .local v11, i:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Parse App. Params: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    if-nez p1, :cond_2

    .line 218
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "No App. Params to parse: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    .line 222
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v11, v0, :cond_29

    .line 223
    aget-byte v0, p1, v11

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 225
    :pswitch_1
    add-int/lit8 v11, v11, 0x2

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint16BigEndian(BB)I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 227
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxlistcount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_4
    add-int/lit8 v11, v11, 0x2

    .line 239
    goto :goto_1

    .line 242
    :pswitch_2
    add-int/lit8 v11, v11, 0x2

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint16BigEndian(BB)I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 245
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxlistcount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 254
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 256
    :cond_6
    add-int/lit8 v11, v11, 0x2

    .line 257
    goto/16 :goto_1

    .line 260
    :pswitch_3
    add-int/lit8 v11, v11, 0x1

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 262
    const/4 v12, 0x1

    .local v12, j:I
    :goto_2
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_7

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 262
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 265
    :cond_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodBegin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_8
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 270
    add-int/lit8 v11, v11, 0x1

    .line 271
    goto/16 :goto_1

    .line 274
    .end local v12           #j:I
    :pswitch_4
    add-int/lit8 v11, v11, 0x1

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 276
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_3
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_9

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 276
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 279
    :cond_9
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_a
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 283
    add-int/lit8 v11, v11, 0x1

    .line 284
    goto/16 :goto_1

    .line 287
    .end local v12           #j:I
    :pswitch_5
    add-int/lit8 v11, v11, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 289
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_4
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_b

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 289
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 293
    :cond_b
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodRecipient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_c
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 298
    add-int/lit8 v11, v11, 0x1

    .line 299
    goto/16 :goto_1

    .line 302
    .end local v12           #j:I
    :pswitch_6
    add-int/lit8 v11, v11, 0x1

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 304
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_5
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_d

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 304
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 307
    :cond_d
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 308
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodOriginator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_e
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 312
    add-int/lit8 v11, v11, 0x1

    .line 313
    goto/16 :goto_1

    .line 316
    .end local v12           #j:I
    :pswitch_7
    add-int/lit8 v11, v11, 0x2

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 318
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterMessageType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xf

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 328
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 329
    goto/16 :goto_1

    .line 332
    :pswitch_8
    add-int/lit8 v11, v11, 0x2

    .line 333
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 334
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 335
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterReadStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 342
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 344
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 345
    goto/16 :goto_1

    .line 348
    :pswitch_9
    add-int/lit8 v11, v11, 0x2

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 350
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 351
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterPriority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 358
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 360
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 361
    goto/16 :goto_1

    .line 364
    :pswitch_a
    add-int/lit8 v11, v11, 0x2

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    .line 366
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 367
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StatusIndicator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_15
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_16

    .line 374
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 376
    :cond_16
    add-int/lit8 v11, v11, 0x1

    .line 377
    goto/16 :goto_1

    .line 380
    :pswitch_b
    add-int/lit8 v11, v11, 0x2

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    .line 382
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 383
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StatusValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 390
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 392
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 393
    goto/16 :goto_1

    .line 396
    :pswitch_c
    add-int/lit8 v11, v11, 0x2

    .line 397
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 398
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 399
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SubjectLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_19
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0xff

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 406
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 408
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 409
    goto/16 :goto_1

    .line 412
    :pswitch_d
    add-int/lit8 v11, v11, 0x2

    .line 413
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, v11, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, v11, 0x3

    aget-byte v4, p1, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint32BigEndian(BBBB)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 417
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const-wide/32 v1, 0xffff

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 419
    :cond_1b
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 420
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params[i+2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x2

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params[i+3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x3

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ParameterMask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1c
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 429
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 431
    :cond_1d
    add-int/lit8 v11, v11, 0x4

    .line 432
    goto/16 :goto_1

    .line 435
    :pswitch_e
    add-int/lit8 v11, v11, 0x2

    .line 436
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 437
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 438
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Charset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1e
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 445
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 447
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    .line 448
    goto/16 :goto_1

    .line 451
    :pswitch_f
    add-int/lit8 v11, v11, 0x2

    .line 452
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 453
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 454
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transparent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_20
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_21

    .line 461
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 463
    :cond_21
    add-int/lit8 v11, v11, 0x1

    .line 464
    goto/16 :goto_1

    .line 467
    :pswitch_10
    add-int/lit8 v11, v11, 0x2

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 469
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 470
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_22
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 477
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 479
    :cond_23
    add-int/lit8 v11, v11, 0x1

    .line 480
    goto/16 :goto_1

    .line 483
    :pswitch_11
    add-int/lit8 v11, v11, 0x2

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    .line 485
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 486
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_24
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_25

    .line 493
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 495
    :cond_25
    add-int/lit8 v11, v11, 0x1

    .line 496
    goto/16 :goto_1

    .line 499
    :pswitch_12
    add-int/lit8 v11, v11, 0x2

    .line 500
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 501
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 502
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Fraction Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_26
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 509
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 511
    :cond_27
    add-int/lit8 v11, v11, 0x1

    .line 512
    goto/16 :goto_1

    .line 515
    :pswitch_13
    add-int/lit8 v11, v11, 0x2

    .line 516
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    .line 517
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_28

    .line 521
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 524
    :cond_28
    add-int/lit8 v11, v11, 0x1

    .line 525
    goto/16 :goto_1

    .line 531
    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_12
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
