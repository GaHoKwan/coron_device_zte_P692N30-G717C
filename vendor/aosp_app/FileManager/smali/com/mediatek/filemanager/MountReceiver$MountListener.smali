.class public interface abstract Lcom/mediatek/filemanager/MountReceiver$MountListener;
.super Ljava/lang/Object;
.source "MountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/MountReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MountListener"
.end annotation


# virtual methods
.method public abstract onEjected(Ljava/lang/String;)V
.end method

.method public abstract onMounted(Ljava/lang/String;)V
.end method

.method public abstract onSdSwap()V
.end method

.method public abstract onUnMounted(Ljava/lang/String;)V
.end method
