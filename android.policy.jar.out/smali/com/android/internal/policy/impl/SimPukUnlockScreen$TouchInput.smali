.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const v0, 0x1020358

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 407
    const v0, 0x102034f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 408
    const v0, 0x1020350

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 409
    const v0, 0x1020351

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 410
    const v0, 0x1020352

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 411
    const v0, 0x1020353

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 412
    const v0, 0x1020354

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 413
    const v0, 0x1020355

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 414
    const v0, 0x1020356

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 415
    const v0, 0x1020357

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 416
    const v0, 0x1020269

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 463
    const/4 v0, -0x1

    .line 464
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 465
    const/4 v0, 0x0

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 469
    const/4 v0, 0x2

    goto :goto_0

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 471
    const/4 v0, 0x3

    goto :goto_0

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 473
    const/4 v0, 0x4

    goto :goto_0

    .line 474
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 475
    const/4 v0, 0x5

    goto :goto_0

    .line 476
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 477
    const/4 v0, 0x6

    goto :goto_0

    .line 478
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 479
    const/4 v0, 0x7

    goto :goto_0

    .line 480
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 481
    const/16 v0, 0x8

    goto :goto_0

    .line 482
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 483
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->updatePukUnlockCancel(I)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 456
    .local v0, digit:I
    if-ltz v0, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V

    goto :goto_0
.end method
