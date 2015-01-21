.class Lcom/baidu/oauth/BaiduOAuthUtility$1$1;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthUtility$1;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/oauth/BaiduOAuthUtility$1;

.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

.field private final synthetic val$uiThreadHandler:Landroid/os/Handler;

.field private final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility$1;Landroid/os/Bundle;Landroid/os/Handler;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->this$1:Lcom/baidu/oauth/BaiduOAuthUtility$1;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$values:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$uiThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 414
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$values:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, token:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$values:Landroid/os/Bundle;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, expiresIn:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    new-instance v6, Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-direct {v6, v2}, Lcom/baidu/oauth/BaiduOAuthUtility;-><init>(Ljava/lang/String;)V

    .line 422
    .local v6, utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    invoke-virtual {v6}, Lcom/baidu/oauth/BaiduOAuthUtility;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, userName:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$uiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1$1;

    iget-object v5, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/oauth/BaiduOAuthUtility$1$1$1;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility$1$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .end local v3           #userName:Ljava/lang/String;
    .end local v6           #utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    :cond_0
    return-void
.end method
