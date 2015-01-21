.class Lcom/baidu/oauth/BaiduOAuthUtility$2$1;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthUtility$2;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/oauth/BaiduOAuthUtility$2;

.field private final synthetic val$apiKey:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

.field private final synthetic val$uiThreadHandler:Landroid/os/Handler;

.field private final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility$2;Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->this$1:Lcom/baidu/oauth/BaiduOAuthUtility$2;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$values:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$apiKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$uiThreadHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$values:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, token:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$values:Landroid/os/Bundle;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, expiresIn:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 362
    new-instance v8, Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-direct {v8, v2}, Lcom/baidu/oauth/BaiduOAuthUtility;-><init>(Ljava/lang/String;)V

    .line 365
    .local v8, utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    invoke-virtual {v8}, Lcom/baidu/oauth/BaiduOAuthUtility;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, userName:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 369
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    .line 370
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, imei:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$apiKey:Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Lcom/baidu/oauth/BaiduOAuthUtility;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v6           #imei:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$uiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;

    iget-object v5, p0, Lcom/baidu/oauth/BaiduOAuthUtility$2$1;->val$listener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/oauth/BaiduOAuthUtility$2$1$1;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility$2$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    .end local v3           #userName:Ljava/lang/String;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    .end local v8           #utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    :cond_1
    return-void
.end method
