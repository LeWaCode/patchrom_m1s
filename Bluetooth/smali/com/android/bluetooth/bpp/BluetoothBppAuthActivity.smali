.class public Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothBppAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

.field private mAlwaysAllowedValue:Z

.field private mCurrentDialog:I

.field private mKeyView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionKey:Ljava/lang/String;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mSessionKey:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mAlwaysAllowedValue:Z

    .line 102
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity$1;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity$2;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->onTimeout()V

    return-void
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, mRemoteName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    const v2, 0x7f050069

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, mMessage:Ljava/lang/String;
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mView:Landroid/view/View;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->messageView:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mView:Landroid/view/View;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onNegative()V
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 195
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->notifyAuthCancelled()V

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->finish()V

    .line 199
    return-void
.end method

.method private onPositive()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mSessionKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->notifyAuthKeyInput(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->finish()V

    .line 191
    return-void
.end method

.method private onTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 219
    iput-boolean v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    .line 221
    iget v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mCurrentDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f05006b

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v4}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 226
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 229
    .local v0, mAlertButton:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    .end local v0           #mAlertButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    return-void

    .line 232
    .restart local v0       #mAlertButton:Landroid/widget/Button;
    :cond_1
    const-string v1, "BluetoothBppActivity"

    const-string v2, "Error! mAlertButton is null, can\'t set visibility"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showBppDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 132
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 134
    :pswitch_0
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 135
    const v1, 0x7f05006a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 137
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 138
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 140
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->setupAlert()V

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mOkButton:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 267
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 202
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mSessionKey:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->onPositive()V

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->onNegative()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, i:Landroid/content/Intent;
    sget v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransId:I

    add-int/lit8 v1, v2, -0x1

    .line 118
    .local v1, idx:I
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppService;->mBppTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iput-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->bf:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 120
    invoke-direct {p0, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->showBppDialog(I)V

    .line 121
    iput v3, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mCurrentDialog:I

    .line 123
    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.bluetooth.bpp.userconfirmtimeout"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 243
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    .line 244
    const-string v0, "BluetoothBppActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->onTimeout()V

    .line 248
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 270
    return-void
.end method
