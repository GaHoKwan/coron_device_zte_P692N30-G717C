.class public interface abstract Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
.super Ljava/lang/Object;
.source "BaiduOAuthViaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuthViaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onException(Ljava/lang/String;)V
.end method
