.class Lcom/android/bluetooth/bpp/BluetoothBppActivity$1;
.super Ljava/lang/Object;
.source "BluetoothBppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/bpp/BluetoothBppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppActivity$1;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    const-string v0, "BluetoothBppActivity"

    const-string v1, "Click\'d Setting button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mSettingMenu:Z

    .line 142
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/bpp/BluetoothBppSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    sget-object v1, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method
