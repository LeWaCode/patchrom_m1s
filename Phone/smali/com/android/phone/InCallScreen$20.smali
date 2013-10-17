.class Lcom/android/phone/InCallScreen$20;
.super Ljava/lang/Thread;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->getCallerIdResultByReceiver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$numberarg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5070
    iput-object p1, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$20;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$20;->val$numberarg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5073
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$20;->val$number:Ljava/lang/String;

    invoke-static {v3}, Lcom/soso/t9/PhoneSearcher;->searchInCloud(Ljava/lang/String;)Lcom/soso/t9/Phone;

    move-result-object v2

    .line 5074
    .local v2, phone:Lcom/soso/t9/Phone;
    new-instance v1, Lcom/android/phone/InCallScreen$YellowPageInfo;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v1, v3}, Lcom/android/phone/InCallScreen$YellowPageInfo;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5075
    .local v1, info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    iput-object v2, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->phone:Lcom/soso/t9/Phone;

    .line 5076
    iget-object v3, p0, Lcom/android/phone/InCallScreen$20;->val$numberarg:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->number:Ljava/lang/String;

    .line 5077
    iget-object v3, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x4c5

    invoke-static {v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5081
    .end local v1           #info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    .end local v2           #phone:Lcom/soso/t9/Phone;
    :goto_0
    return-void

    .line 5078
    :catch_0
    move-exception v0

    .line 5079
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
