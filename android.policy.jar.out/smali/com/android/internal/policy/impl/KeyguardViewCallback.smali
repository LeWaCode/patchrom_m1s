.class public interface abstract Lcom/android/internal/policy/impl/KeyguardViewCallback;
.super Ljava/lang/Object;
.source "KeyguardViewCallback.java"


# virtual methods
.method public abstract keyguardDone(Z)V
.end method

.method public abstract keyguardDoneDrawing()V
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract pokeWakelock(I)V
.end method

.method public abstract setLockScreenMode(I)V
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end method
