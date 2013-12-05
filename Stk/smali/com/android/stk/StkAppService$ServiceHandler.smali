.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    }
.end annotation


# instance fields
.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mClearSelectItem:Z

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentSlotId:I

.field private mDisplayText:Z

.field private mDisplayTextDlgIsVisibile:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mMenuIsVisibile:Z

.field private mScreenIdle:Z

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field mTimeoutHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/stk/TonePlayer;

.field private responseNeeded:Z

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method public constructor <init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V
    .locals 4
    .parameter
    .parameter "looper"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 375
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 316
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 317
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 318
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 319
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 322
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 323
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 324
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 325
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 326
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 327
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 328
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 329
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    .line 330
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    .line 331
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 332
    iput v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 333
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mClearSelectItem:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 335
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 339
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$ServiceHandler$1;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 378
    iput p3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    return-void
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "event"
    .parameter "args"

    .prologue
    .line 1055
    const/4 v1, 0x0

    .line 1056
    .local v1, eventPresent:Z
    const/4 v0, 0x0

    .line 1057
    .local v0, addedInfo:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v4, :cond_3

    .line 1062
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1063
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v4, v4, v2

    if-ne p1, v4, :cond_1

    .line 1064
    const/4 v1, 0x1

    .line 1070
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "exists in the EventList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    packed-switch p1, :pswitch_data_0

    .line 1097
    .end local v2           #i:I
    :goto_1
    :pswitch_0
    return-void

    .line 1062
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->removeSetUpEvent(I)V

    goto :goto_1

    .line 1079
    :pswitch_2
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1086
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    goto :goto_1

    .line 1092
    .end local v3           #language:Ljava/lang/String;
    :cond_2
    const-string v4, " Event does not exist in the EventList"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1095
    .end local v2           #i:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 991
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1432
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1433
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-object v3

    .line 1436
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1437
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1438
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAlphaNotify(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1458
    const-string v0, "alpha_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha string received from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1462
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1463
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1464
    return-void
.end method

.method private handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V
    .locals 7
    .parameter "args"

    .prologue
    const/16 v6, 0x14d

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 473
    const-string v2, "card_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 475
    .local v0, CardStatus:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    if-nez v0, :cond_1

    .line 477
    const-string v2, "CARD is ABSENT"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 480
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 481
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService;->stopSelf()V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 484
    .local v1, state:Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v2, "refresh_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResultFromRIL(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icc Refresh Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v5, :cond_3

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 495
    :cond_3
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v5, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 498
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 499
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 13
    .parameter "cmdMsg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 649
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 654
    const/4 v7, 0x1

    .line 656
    .local v7, waitForUsersResponse:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 802
    :cond_2
    :goto_1
    if-nez v7, :cond_0

    .line 803
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_e

    .line 804
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 659
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v6

    .line 661
    .local v6, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v8, :cond_3

    .line 662
    const/4 v7, 0x0

    .line 664
    :cond_3
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 665
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 679
    :goto_2
    iget-boolean v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    if-nez v8, :cond_6

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, StkIntent:Landroid/content/Intent;
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    iput-boolean v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    goto :goto_1

    .line 666
    .end local v0           #StkIntent:Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_5

    .line 667
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 670
    :cond_5
    const-string v8, ""

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 685
    :cond_6
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_1

    .line 689
    .end local v6           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_1

    .line 693
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 694
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 695
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->removeMenu()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 696
    const-string v8, "Uninstall App"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iput-object v11, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 698
    iput-object v11, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 699
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v8, v9}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 704
    :goto_3
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 705
    iget-boolean v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v8, :cond_2

    .line 706
    invoke-direct {p0, v11}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 701
    :cond_7
    const-string v8, "Install App"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v8, v9}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    goto :goto_3

    .line 711
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchInputActivity()V

    goto/16 :goto_1

    .line 714
    :pswitch_4
    const/4 v7, 0x0

    .line 715
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 716
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 717
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 719
    .local v2, idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v3, idleStkIntent:Landroid/content/Intent;
    if-eqz v2, :cond_8

    .line 721
    iget-object v8, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 722
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    :cond_8
    :goto_4
    const-string v8, "set up idle mode"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 731
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8, v3}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 724
    :cond_9
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 726
    iput-object v11, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_4

    .line 738
    .end local v2           #idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v3           #idleStkIntent:Landroid/content/Intent;
    :pswitch_5
    const/4 v7, 0x0

    .line 739
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    .line 740
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_1

    .line 743
    :pswitch_6
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 746
    :pswitch_7
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v5, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 747
    .local v5, mesg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v5, :cond_b

    iget-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 748
    :cond_a
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 750
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SET_UP_CALL mesg.text "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 754
    .end local v5           #mesg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchToneDialog()V

    goto/16 :goto_1

    .line 757
    :pswitch_9
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchOpenChannelDialog()V

    goto/16 :goto_1

    .line 762
    :pswitch_a
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v4

    .line 764
    .local v4, m:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v4, :cond_c

    iget-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 765
    sget-object v8, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 780
    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    goto/16 :goto_1

    .line 767
    :pswitch_b
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_5

    .line 770
    :pswitch_c
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_5

    .line 773
    :pswitch_d
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_5

    .line 784
    .end local v4           #m:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_e
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 785
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 786
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 787
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-nez v8, :cond_2

    .line 789
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 790
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v8, v8, v1

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    .line 791
    const-string v8, " IDLE_SCREEN_AVAILABLE_EVENT present in List"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .restart local v0       #StkIntent:Landroid/content/Intent;
    const-string v8, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v8, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 789
    .end local v0           #StkIntent:Landroid/content/Intent;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 806
    .end local v1           #i:I
    :cond_e
    iput-boolean v12, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 765
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 12
    .parameter "args"

    .prologue
    const/4 v11, 0x1

    .line 826
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v9, :cond_0

    .line 970
    :goto_0
    return-void

    .line 829
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 832
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v9, "help"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 833
    .local v3, helpRequired:Z
    const/4 v2, 0x0

    .line 835
    .local v2, confirmed:Z
    const-string v9, "response id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 958
    :pswitch_0
    const-string v9, "Unknown result id"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :pswitch_1
    const-string v9, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    const-string v9, "menu selection"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 839
    .local v5, menuSelection:I
    sget-object v9, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_0

    .line 961
    .end local v5           #menuSelection:I
    :cond_1
    :goto_1
    const-string v9, "slot_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 962
    .local v7, slotId:I
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v9}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aget-object v9, v9, v7

    if-eqz v9, :cond_c

    .line 964
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CmdResponse sent on"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v9}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-interface {v9, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 842
    .end local v7           #slotId:I
    .restart local v5       #menuSelection:I
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService$ServiceHandler;->getItemName(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 843
    if-eqz v3, :cond_2

    .line 844
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 849
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 850
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->startTimeOut()V

    goto :goto_1

    .line 846
    :cond_2
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 855
    .end local v5           #menuSelection:I
    :pswitch_2
    const-string v9, "RES_ID_INPUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    const-string v9, "input"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, input:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 858
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    if-eqz v1, :cond_4

    iget-boolean v9, v1, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v9, :cond_4

    .line 859
    const-string v9, "YES"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 861
    .local v8, yesNoSelection:Z
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 863
    .end local v8           #yesNoSelection:Z
    :cond_4
    if-eqz v3, :cond_5

    .line 864
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 866
    :cond_5
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 868
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :cond_6
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 873
    .end local v1           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    .end local v4           #input:Ljava/lang/String;
    :pswitch_3
    const-string v9, "RES_ID_CONFIRM"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    const-string v9, "confirm"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 875
    sget-object v9, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_1

    goto/16 :goto_1

    .line 877
    :sswitch_1
    if-eqz v2, :cond_8

    .line 878
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_7
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 881
    :cond_8
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 885
    :sswitch_2
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 890
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v10, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    if-ne v9, v10, :cond_9

    if-eqz v2, :cond_9

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/stk/StkAppService$ServiceHandler;->isBrowserLaunched(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 892
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 893
    const/4 v9, 0x2

    invoke-virtual {v6, v11, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(ZI)V

    .line 894
    const-string v9, "LAUNCH_BROWSER_ERROR - Browser_Unavailable"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    :goto_6
    if-eqz v2, :cond_1

    .line 901
    iput-boolean v11, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    goto/16 :goto_1

    .line 896
    :cond_9
    if-eqz v2, :cond_a

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_7
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_6

    :cond_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_7

    .line 905
    :sswitch_3
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 906
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 907
    if-eqz v2, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchCallMsg()V

    goto/16 :goto_1

    .line 914
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 917
    :pswitch_5
    const-string v9, "RES_ID_BACKWARD"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 921
    :pswitch_6
    const-string v9, "RES_ID_END_SESSION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 925
    :pswitch_7
    const-string v9, "RES_ID_TIMEOUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v10

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v9, :cond_b

    .line 933
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 935
    :cond_b
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 939
    :pswitch_8
    const-string v9, "choice"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 940
    .local v0, choice:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Choice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    packed-switch v0, :pswitch_data_1

    .line 951
    :goto_8
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 953
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 943
    :pswitch_9
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 944
    const/4 v2, 0x1

    .line 945
    goto :goto_8

    .line 947
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_8

    .line 968
    .end local v0           #choice:I
    .restart local v7       #slotId:I
    :cond_c
    const-string v9, "CmdResponse on wrong slotid"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 839
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    .line 875
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch

    .line 941
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    .line 607
    .local v0, cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 616
    .end local v0           #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 609
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 612
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleScreenStatus(Landroid/os/Bundle;)V
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string v1, "screen status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 509
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 514
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 516
    :cond_1
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-eqz v1, :cond_2

    .line 522
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->isTopOfStack()Z

    move-result v1

    if-nez v1, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendScreenBusyResponse()V

    .line 527
    :goto_0
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 530
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_2

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, StkIntent:Landroid/content/Intent;
    const-string v1, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    .end local v0           #StkIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 525
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_0
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 626
    iput-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 627
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 630
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 633
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 634
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 642
    :goto_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 643
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 644
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 646
    :cond_2
    return-void

    .line 639
    :cond_3
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private handleStopTone()V
    .locals 1

    .prologue
    .line 568
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendResponse(I)V

    .line 569
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 570
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 571
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 572
    const-string v0, "Finished handling PlayTone with Null alpha"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private isBrowserLaunched(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1208
    const/16 v2, 0x63

    .line 1209
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1211
    if-nez v0, :cond_0

    move v0, v1

    .line 1225
    :goto_0
    return v0

    .line 1213
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1215
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1217
    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1219
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1225
    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 587
    sget-object v0, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 598
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isTopOfStack()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 541
    .local v1, mAcivityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, currentPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 544
    const-string v2, "com.android.stk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 547
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x400

    .line 1162
    if-nez p1, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1166
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    const/4 v0, 0x0

    .line 1169
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings.url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1172
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1179
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1180
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1182
    :cond_3
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1183
    sget-object v2, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1198
    :goto_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1203
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1174
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifiedUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1185
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1188
    :pswitch_1
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1192
    :pswitch_2
    if-eqz v0, :cond_5

    .line 1193
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    :cond_5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1229
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1230
    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1235
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1236
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1238
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1239
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1241
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1243
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1244
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1254
    :goto_1
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1255
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1259
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1260
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1261
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1246
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1151
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1156
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1157
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1159
    return-void
.end method

.method private launchEventMessage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1116
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1117
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1121
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1123
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1124
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1126
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1128
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1129
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1139
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1140
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1145
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1146
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1131
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 9

    .prologue
    const v8, 0x108050b

    const v7, 0x1020006

    const/16 v6, 0x14d

    const/4 v5, 0x0

    .line 1266
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1267
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-nez v1, :cond_1

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1303
    :goto_0
    return-void

    .line 1270
    :cond_1
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1271
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.android.stk"

    const v4, 0x10900ad

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1275
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1276
    iput v8, v1, Landroid/app/Notification;->icon:I

    .line 1283
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_3

    .line 1284
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1285
    const v3, 0x1020046

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1288
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 1289
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1297
    :goto_1
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1298
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1301
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1292
    :cond_4
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 1018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1021
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1025
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 996
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const/high16 v0, 0x1400

    .line 1000
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 1002
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1004
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    :goto_0
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1013
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1014
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1015
    return-void

    .line 1007
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1009
    const-string v2, "MENU"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1010
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchOpenChannelDialog()V
    .locals 3

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1351
    if-nez v0, :cond_0

    .line 1352
    const-string v0, "msg is null, return here"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1357
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1361
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler$3;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$ServiceHandler$3;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler$2;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$ServiceHandler$2;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1392
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1393
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1395
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1398
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    const/high16 v1, 0x7080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1036
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1037
    return-void
.end method

.method private launchToneDialog()V
    .locals 5

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1307
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v1

    .line 1309
    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Starting Activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v4, Lcom/android/stk/ToneDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1312
    const/high16 v3, 0x5080

    sget-object v4, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1315
    const-string v3, "TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1316
    const-string v0, "TONE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1317
    const-string v0, "slot_id"

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting Activity based on the ToneDialog Intent for SlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1325
    :goto_0
    return-void

    .line 1322
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NO Activity, play tone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-direct {p0, v0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->onPlayToneNullAlphaTag(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V

    goto :goto_0
.end method

.method private onPlayToneNullAlphaTag(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    .line 1332
    :cond_0
    new-instance v0, Lcom/android/stk/TonePlayer;

    invoke-direct {v0}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play tone settings.tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->player:Lcom/android/stk/TonePlayer;

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 1335
    iget-object v0, p2, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToneDialog: Tone timeout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    if-nez v0, :cond_1

    .line 1338
    const/16 v0, 0x7d0

    .line 1340
    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1341
    const/16 v2, 0xda

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1343
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1344
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v1, :cond_2

    .line 1345
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1347
    :cond_2
    return-void
.end method

.method private removeMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1446
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1454
    :goto_0
    return v0

    .line 1450
    :catch_0
    move-exception v1

    .line 1451
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1454
    goto :goto_0
.end method

.method private removeSetUpEvent(I)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v1, :cond_0

    .line 1106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 1113
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1106
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 577
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse mCurrentSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return-void
.end method

.method private sendScreenBusyResponse()V
    .locals 3

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 554
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 555
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 557
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 559
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 560
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 563
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private sendSetUpEventResponse(I[B)V
    .locals 3
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSetUpEventResponse: event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1046
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1048
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1049
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1051
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 358
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    return-void
.end method


# virtual methods
.method public getMainMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 383
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 385
    .local v1, opcode:I
    sparse-switch v1, :sswitch_data_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 387
    :sswitch_0
    const-string v2, "OP_LAUNCH_APP"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    .line 392
    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 395
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 397
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 408
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_2

    .line 412
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 413
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, p0, v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmdResponse(Landroid/os/Bundle;)V

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 431
    :goto_1
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    goto :goto_0

    .line 428
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_1

    .line 434
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_5

    .line 435
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 436
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 438
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v6}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :sswitch_4
    const-string v2, "OP_BOOT_COMPLETED"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 448
    :sswitch_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleDelayedCmd()V

    goto/16 :goto_0

    .line 451
    :sswitch_6
    const-string v2, "IDLE SCREEN"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleScreenStatus(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 455
    :sswitch_7
    const-string v2, "Locale Changed"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v3, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 459
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleAlphaNotify(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 462
    :sswitch_9
    const-string v2, "Received MSG_ID_STOP_TONE"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleStopTone()V

    goto/16 :goto_0

    .line 466
    :sswitch_a
    const-string v2, "Card/Icc Status change received"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_a
        0x1e -> :sswitch_8
        0xda -> :sswitch_9
    .end sparse-switch
.end method

.method indicateDisplayTextDlgVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 976
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 977
    return-void
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 815
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 816
    return-void
.end method
