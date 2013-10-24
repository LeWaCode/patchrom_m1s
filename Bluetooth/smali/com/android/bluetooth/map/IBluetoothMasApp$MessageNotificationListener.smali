.class public interface abstract Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;
.super Ljava/lang/Object;
.source "IBluetoothMasApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/IBluetoothMasApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageNotificationListener"
.end annotation


# virtual methods
.method public abstract onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendingFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
