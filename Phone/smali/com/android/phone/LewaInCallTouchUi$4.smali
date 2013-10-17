.class Lcom/android/phone/LewaInCallTouchUi$4;
.super Ljava/lang/Object;
.source "LewaInCallTouchUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LewaInCallTouchUi;->hideIncomingCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LewaInCallTouchUi;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/LewaInCallTouchUi;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    iput-object p2, p0, Lcom/android/phone/LewaInCallTouchUi$4;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1283
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1284
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->val$targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;
    invoke-static {v0}, Lcom/android/phone/LewaInCallTouchUi;->access$400(Lcom/android/phone/LewaInCallTouchUi;)Llewa/laml/AdvancedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;
    invoke-static {v0}, Lcom/android/phone/LewaInCallTouchUi;->access$400(Lcom/android/phone/LewaInCallTouchUi;)Llewa/laml/AdvancedView;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/AdvancedView;->onPause()V

    .line 1288
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;
    invoke-static {v0}, Lcom/android/phone/LewaInCallTouchUi;->access$400(Lcom/android/phone/LewaInCallTouchUi;)Llewa/laml/AdvancedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Llewa/laml/AdvancedView;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;
    invoke-static {v1}, Lcom/android/phone/LewaInCallTouchUi;->access$400(Lcom/android/phone/LewaInCallTouchUi;)Llewa/laml/AdvancedView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->removeView(Landroid/view/View;)V

    .line 1290
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/LewaInCallTouchUi;->mIncomAdvancedView:Llewa/laml/AdvancedView;
    invoke-static {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->access$402(Lcom/android/phone/LewaInCallTouchUi;Llewa/laml/AdvancedView;)Llewa/laml/AdvancedView;

    .line 1294
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1279
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0}, Lcom/android/phone/LewaInCallTouchUi;->access$200(Lcom/android/phone/LewaInCallTouchUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    const-string v1, "IncomingCallWidget\'s hiding animation started"

    #calls: Lcom/android/phone/LewaInCallTouchUi;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->access$100(Lcom/android/phone/LewaInCallTouchUi;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    #getter for: Lcom/android/phone/LewaInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/LewaInCallTouchUi;->access$300(Lcom/android/phone/LewaInCallTouchUi;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/LewaInCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 1273
    iget-object v0, p0, Lcom/android/phone/LewaInCallTouchUi$4;->this$0:Lcom/android/phone/LewaInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/LewaInCallTouchUi;->showIncallControlAnim()V

    .line 1275
    :cond_0
    return-void
.end method
