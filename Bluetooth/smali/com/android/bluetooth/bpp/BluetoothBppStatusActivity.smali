.class public Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;
.super Landroid/app/Activity;
.source "BluetoothBppStatusActivity.java"


# static fields
.field static volatile mContext:Landroid/content/Context;

.field public static mTrans_Progress:Landroid/widget/ProgressBar;

.field public static mTrans_View:Landroid/widget/TextView;


# instance fields
.field bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static updateProgress(II)V
    .locals 4
    .parameter "trans"
    .parameter "print"

    .prologue
    .line 95
    const-string v0, "BluetoothBppStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trans: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p0, 0x64

    sget-object v3, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_Progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_Progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 72
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    .line 73
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->setContentView(I)V

    .line 74
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_View:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sput-object v1, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_Progress:Landroid/widget/ProgressBar;

    .line 77
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mTrans_View:Landroid/widget/TextView;

    const-string v2, "File Transfer"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, cancel:Landroid/widget/Button;
    new-instance v1, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity$1;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "BluetoothBppStatusActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 112
    const-string v1, "BluetoothBppStatusActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 116
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "BluetoothBppStatusActivity"

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

    .line 118
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->finish()V

    .line 122
    :cond_1
    return-void
.end method
