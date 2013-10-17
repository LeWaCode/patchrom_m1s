.class Lcom/android/phone/InCallScreen$21;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/android/phone/InCallScreen$ICallerIdResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5093
    iput-object p1, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultData(Lcom/android/phone/InCallScreen$YellowPageInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 5097
    iget-object v1, p1, Lcom/android/phone/InCallScreen$YellowPageInfo;->phone:Lcom/soso/t9/Phone;

    .line 5098
    .local v1, phone:Lcom/soso/t9/Phone;
    iget-object v0, p1, Lcom/android/phone/InCallScreen$YellowPageInfo;->number:Ljava/lang/String;

    .line 5099
    .local v0, number:Ljava/lang/String;
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xbs onResultData phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    if-eqz v1, :cond_1

    .line 5101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v4, Lcom/android/phone/InCallScreen;->mCallerIdResult:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\t\tSecond Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\t\tCompany: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCompany()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\t\tCity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n-----------------------------------------------------\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/phone/InCallScreen;->mCallerIdResult:Ljava/lang/String;

    .line 5106
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mCallerIdResult:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    const-string v2, ""

    .line 5108
    .local v2, showInfo:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCompany()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5109
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCompany()Ljava/lang/String;

    move-result-object v2

    .line 5119
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/LewaCallCard;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/LewaCallCard;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/phone/LewaCallCard;->updateYellowPageInfos(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    iget-object v3, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 5123
    .end local v2           #showInfo:Ljava/lang/String;
    :cond_1
    return-void

    .line 5110
    .restart local v2       #showInfo:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getSubType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5111
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getSubType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5112
    :cond_3
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5113
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5114
    :cond_4
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5115
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getCity()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5116
    :cond_5
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5117
    invoke-virtual {v1}, Lcom/soso/t9/Phone;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
