.class Lcom/baidu/oauth/BaiduOAuthUtility$2;
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
.field private final synthetic val$apiKey:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuth$OAuthListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$apiKey:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v0}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onCancel()V

    .line 405
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8
    .parameter "values"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v0, :cond_0

    .line 351
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 353
    .local v5, uiThreadHandler:Landroid/os/Handler;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;

    iget-object v3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$apiKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility$2;Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 393
    .local v7, workThread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 395
    .end local v5           #uiThreadHandler:Landroid/os/Handler;
    .end local v7           #workThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v0, p1}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onException(Ljava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method
