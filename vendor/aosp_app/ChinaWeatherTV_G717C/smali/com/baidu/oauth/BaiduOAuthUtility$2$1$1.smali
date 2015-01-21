.class Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/oauth/BaiduOAuthUtility$2$1;

.field private final synthetic val$expiresIn:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

.field private final synthetic val$token:Ljava/lang/String;

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility$2$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->this$2:Lcom/baidu/oauth/BaiduOAuthUtility$2$1;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$expiresIn:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;

    invoke-direct {v0}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;-><init>()V

    .line 381
    .local v0, oauth:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setAccessToken(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setUserName(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$expiresIn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setExpiresIn(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v1, v0}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onComplete(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V

    .line 386
    return-void
.end method
