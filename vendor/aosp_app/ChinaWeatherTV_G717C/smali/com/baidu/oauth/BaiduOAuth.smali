.class public Lcom/baidu/oauth/BaiduOAuth;
.super Ljava/lang/Object;
.source "BaiduOAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;,
        Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;,
        Lcom/baidu/oauth/BaiduOAuth$OAuthListener;
    }
.end annotation


# instance fields
.field private mbPermission:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "netdisk"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuth;->mbPermission:[Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public logout(Ljava/lang/String;)Z
    .locals 2
    .parameter "token"

    .prologue
    .line 188
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-direct {v0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, utility:Lcom/baidu/oauth/BaiduOAuthUtility;
    invoke-virtual {v0}, Lcom/baidu/oauth/BaiduOAuthUtility;->logout()Z

    move-result v1

    return v1
.end method

.method public logout(Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)Z
    .locals 1
    .parameter "token"
    .parameter "listener"

    .prologue
    .line 174
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-direct {v0}, Lcom/baidu/oauth/BaiduOAuthUtility;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/baidu/oauth/BaiduOAuthUtility;->logoutInBackground(Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)Z

    move-result v0

    return v0
.end method

.method public startOAuth(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 1
    .parameter "context"
    .parameter "apiKey"
    .parameter "listener"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuth;->mbPermission:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/baidu/oauth/BaiduOAuth;->startOAuth(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    .line 140
    return-void
.end method

.method public startOAuth(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 2
    .parameter "context"
    .parameter "apiKey"
    .parameter "permission"
    .parameter "listener"

    .prologue
    .line 155
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthViaDialog;

    invoke-direct {v0, p2}, Lcom/baidu/oauth/BaiduOAuthViaDialog;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, dialog:Lcom/baidu/oauth/BaiduOAuthViaDialog;
    invoke-static {p1, p2, p4}, Lcom/baidu/oauth/BaiduOAuthUtility;->createDialogListener(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->startDialogAuth(Landroid/content/Context;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)Z

    .line 157
    return-void
.end method
