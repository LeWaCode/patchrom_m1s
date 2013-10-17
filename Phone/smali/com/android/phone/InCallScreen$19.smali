.class Lcom/android/phone/InCallScreen$19;
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
    .line 5047
    iput-object p1, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$19;->val$numberarg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 5056
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhoneSearcher:Lcom/soso/t9/PhoneSearcher;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/soso/t9/PhoneSearcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$19;->val$number:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/soso/t9/PhoneSearcher;->search(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 5057
    .local v3, phones:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/Phone;>;"
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/soso/t9/Phone;

    move-object v2, v4

    .line 5058
    .local v2, phone:Lcom/soso/t9/Phone;
    :goto_0
    if-eqz v2, :cond_0

    .line 5059
    new-instance v1, Lcom/android/phone/InCallScreen$YellowPageInfo;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v1, v4}, Lcom/android/phone/InCallScreen$YellowPageInfo;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5060
    .local v1, info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    iput-object v2, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->phone:Lcom/soso/t9/Phone;

    .line 5061
    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->val$numberarg:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/phone/InCallScreen$YellowPageInfo;->number:Ljava/lang/String;

    .line 5062
    iget-object v4, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$19;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4c5

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5067
    .end local v1           #info:Lcom/android/phone/InCallScreen$YellowPageInfo;
    .end local v2           #phone:Lcom/soso/t9/Phone;
    .end local v3           #phones:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/Phone;>;"
    :cond_0
    :goto_1
    return-void

    .line 5057
    .restart local v3       #phones:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/Phone;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 5064
    .end local v3           #phones:Ljava/util/List;,"Ljava/util/List<Lcom/soso/t9/Phone;>;"
    :catch_0
    move-exception v0

    .line 5065
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
