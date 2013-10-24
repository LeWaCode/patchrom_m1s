.class public Lcom/android/bluetooth/bpp/BluetoothBppSetting;
.super Landroid/app/ListActivity;
.source "BluetoothBppSetting.java"


# static fields
.field public static bpp_auth:Z

.field static mContext:Landroid/content/Context;


# instance fields
.field bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

.field items:[Ljava/lang/String;

.field private mBackKeyPressed:Z

.field selection:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OBEX Authentication"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->items:[Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mBackKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "BluetoothBppSetting"

    const-string v1, "onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mBackKeyPressed:Z

    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->setContentView(I)V

    .line 64
    iput-boolean v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mBackKeyPressed:Z

    .line 65
    sput-object p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    .line 68
    sget v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v0, v2, -0x1

    .line 69
    .local v0, id:I
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 71
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->items:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 75
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 77
    sget-boolean v2, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    invoke-virtual {v1, v5, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 79
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->selection:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 92
    const-string v0, "BluetoothBppSetting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    .line 85
    sget-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    invoke-virtual {p1, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 86
    const-string v0, "BluetoothBppSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new bpp_auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bpp_auth:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 98
    const-string v1, "BluetoothBppSetting"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 100
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mSettingMenu:Z

    .line 108
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 110
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "BluetoothBppSetting"

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

    .line 111
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mBackKeyPressed:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v1, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v2, 0x1ea

    iput v2, v1, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 115
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v1}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->finish()V

    .line 119
    :cond_2
    return-void
.end method
