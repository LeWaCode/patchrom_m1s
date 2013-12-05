.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private catServicesNum:I

.field private mCardNum:I

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:[Landroid/os/HandlerThread;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 87
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    iput v1, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    .line 90
    iput v1, p0, Lcom/android/stk/StkAppService;->catServicesNum:I

    .line 91
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 314
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 304
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 305
    monitor-enter p0

    .line 307
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 308
    :catch_0
    move-exception v0

    goto :goto_1

    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Menu on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$ServiceHandler;->getMainMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0
.end method

.method indicateDisplayTextDlgVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->indicateDisplayTextDlgVisibility(Z)V

    .line 278
    return-void
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .parameter "visibility"
    .parameter "slotId"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->indicateMenuVisibility(Z)V

    .line 285
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    .line 163
    iget v0, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 164
    iget v0, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v0, v0, [Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    .line 165
    iget v0, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    new-array v0, v0, [Lcom/android/stk/StkAppService$ServiceHandler;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    .line 166
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Number of Cards present:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GetInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 174
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v0, v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 266
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 183
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget v5, p0, Lcom/android/stk/StkAppService;->catServicesNum:I

    iget v6, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v5, :cond_4

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v5, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v1, v5, :cond_4

    .line 190
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v6

    aput-object v6, v5, v1

    .line 193
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v1

    if-nez v5, :cond_3

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " GetCatServiceInstance for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_3
    iget v5, p0, Lcom/android/stk/StkAppService;->catServicesNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/stk/StkAppService;->catServicesNum:I

    .line 197
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    new-instance v6, Landroid/os/HandlerThread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceHandler"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1

    .line 198
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 200
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    new-instance v6, Lcom/android/stk/StkAppService$ServiceHandler;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mHandlerThread:[Landroid/os/HandlerThread;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V

    aput-object v6, v5, v1

    goto :goto_2

    .line 207
    .end local v1           #i:I
    :cond_4
    iget v5, p0, Lcom/android/stk/StkAppService;->catServicesNum:I

    iget v6, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    if-eq v5, v6, :cond_5

    .line 208
    const-string v5, "Returning as all CatServices are not running"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->stopSelf()V

    goto/16 :goto_0

    .line 213
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 219
    const-string v5, "slot_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, slotId:I
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 222
    .local v2, msg:Landroid/os/Message;
    const-string v5, "op"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "called on slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget v5, v2, Landroid/os/Message;->arg1:I

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    .line 227
    :sswitch_0
    const-string v5, "cmd message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    :cond_6
    :goto_3
    :sswitch_1
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 232
    :sswitch_2
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 239
    :sswitch_3
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    :sswitch_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget v5, p0, Lcom/android/stk/StkAppService;->mCardNum:I

    if-ge v1, v5, :cond_6

    .line 243
    if-eq v1, v3, :cond_7

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    .line 244
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 245
    .local v4, tmpmsg:Landroid/os/Message;
    iget v5, v2, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 246
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:[Lcom/android/stk/StkAppService$ServiceHandler;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v4           #tmpmsg:Landroid/os/Message;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method
