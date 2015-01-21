.class Lcom/baidu/oauth/BaiduOAuthUtility$1;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"

# interfaces
.implements Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthUtility;->createDialogListener(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v0}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onCancel()V

    .line 454
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v2, :cond_0

    .line 408
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 410
    .local v0, uiThreadHandler:Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;

    iget-object v3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility$1;Landroid/os/Bundle;Landroid/os/Handler;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    .local v1, workThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 444
    .end local v0           #uiThreadHandler:Landroid/os/Handler;
    .end local v1           #workThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v0, p1}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onException(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method
