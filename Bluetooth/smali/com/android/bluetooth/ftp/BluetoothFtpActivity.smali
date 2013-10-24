.class public Lcom/android/bluetooth/ftp/BluetoothFtpActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothFtpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
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
    .line 62
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mSessionKey:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mAlwaysAllowedValue:Z

    .line 96
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$1;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    new-instance v0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity$2;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ftp/BluetoothFtpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->onTimeout()V

    return-void
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 155
    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, mRemoteName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 162
    const-string v2, "BluetoothFtpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Text id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")not part of FTP resource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    const v2, 0x7f050080

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, mMessage2:Ljava/lang/String;
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 183
    const-string v1, "BluetoothFtpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create view id ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")not part of FTP resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mView:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mView:Landroid/view/View;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->messageView:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mView:Landroid/view/View;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    const-string v0, "com.android.bluetooth.ftp.authcancelled"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->finish()V

    .line 208
    return-void
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    const-string v0, "com.android.bluetooth.ftp.authresponse"

    const-string v1, "com.android.bluetooth.ftp.sessionkey"

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->finish()V

    .line 199
    return-void
.end method

.method private onTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 262
    iput-boolean v5, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 265
    .local v0, mButton:Landroid/widget/Button;
    iget v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mCurrentDialog:I

    if-ne v1, v5, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->messageView:Landroid/widget/TextView;

    const v2, 0x7f050083

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 272
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    return-void

    .line 277
    :cond_1
    const-string v1, "BluetoothFtpActivity"

    const-string v2, "Error! mButton is null, can\'t setVisibility"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/ftp/BluetoothFtpReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private showFtpDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 129
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 133
    const v1, 0x7f050081

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 134
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 135
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->setupAlert()V

    .line 140
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mOkButton:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, "BluetoothFtpActivity"

    const-string v2, "Error! mOkButton is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
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
    .line 313
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 245
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mSessionKey:Ljava/lang/String;

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->onPositive()V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->onNegative()V

    goto :goto_0

    .line 245
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
    const/4 v3, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.ftp.authchall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->showFtpDialog(I)V

    .line 114
    iput v3, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mCurrentDialog:I

    .line 120
    :goto_0
    const-string v2, "BluetoothFtpActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.bluetooth.ftp.userconfirmtimeout"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void

    .line 116
    :cond_0
    const-string v2, "BluetoothFtpActivity"

    const-string v3, "Error: this activity may be started only with intent FTP_ACCESS_REQUEST or FTP_AUTH_CHALL "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    .line 291
    iget-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->onTimeout()V

    .line 294
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 316
    return-void
.end method
