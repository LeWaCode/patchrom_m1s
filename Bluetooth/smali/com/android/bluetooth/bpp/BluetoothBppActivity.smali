.class public Lcom/android/bluetooth/bpp/BluetoothBppActivity;
.super Landroid/app/Activity;
.source "BluetoothBppActivity.java"


# static fields
.field public static JobChannel:I

.field public static StatusChannel:I

.field static mContext:Landroid/content/Context;

.field static volatile mOPPstop:Z

.field static volatile mSettingMenu:Z


# instance fields
.field bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

.field private mButtonClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 98
    sput v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->JobChannel:I

    .line 99
    sput v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->StatusChannel:I

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/bpp/BluetoothBppActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    .line 114
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mOPPstop:Z

    .line 115
    sput-boolean v6, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mSettingMenu:Z

    .line 116
    iput-boolean v6, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mButtonClicked:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "jobCh"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->JobChannel:I

    .line 119
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "statCh"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->StatusChannel:I

    .line 120
    const-string v3, "BluetoothBppActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BPP Activity Created - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->JobChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->StatusChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v0, v3, -0x1

    .line 124
    .local v0, id:I
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iput-object v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 127
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->requestWindowFeature(I)Z

    .line 128
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->setResult(I)V

    .line 134
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 135
    .local v2, scanButtonleft:Landroid/widget/Button;
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 137
    .local v1, scanButtonRight:Landroid/widget/Button;
    new-instance v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity$1;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v3, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity$2;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    const-string v0, "BluetoothBppActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "BluetoothBppActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mSettingMenu:Z

    .line 175
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 198
    const-string v1, "BluetoothBppActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 212
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "BluetoothBppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mSettingMenu:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mOPPstop:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuthChallProcess:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v2, 0x1ea

    iput v2, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 220
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->finish()V

    .line 224
    :cond_2
    return-void
.end method
