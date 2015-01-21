.class public Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
.super Ljava/lang/Object;
.source "BaiduOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduOAuthResponse"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiresIn:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->accessToken:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->userName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->expiresIn:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->refreshToken:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->expiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->accessToken:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 0
    .parameter "ei"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->expiresIn:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .parameter "rt"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->refreshToken:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "un"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->userName:Ljava/lang/String;

    .line 38
    return-void
.end method
