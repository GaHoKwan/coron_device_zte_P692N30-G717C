.class public interface abstract Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;
.super Ljava/lang/Object;
.source "SelfTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SelfTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelfTimerListener"
.end annotation


# virtual methods
.method public abstract onTimerStart()V
.end method

.method public abstract onTimerStop()V
.end method

.method public abstract onTimerTimeout()V
.end method
