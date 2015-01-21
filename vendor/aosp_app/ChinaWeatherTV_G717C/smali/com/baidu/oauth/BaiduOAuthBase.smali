.class abstract Lcom/baidu/oauth/BaiduOAuthBase;
.super Ljava/lang/Object;
.source "BaiduOAuthBase.java"


# static fields
.field public static AUTH_URL:Ljava/lang/String; = null

.field public static EXPLICIT_AUTH_URL:Ljava/lang/String; = null

.field public static final OAUTH_ERR_GENERAL:I = -0x1

.field public static final REGISTERSUCCESS_URL:Ljava/lang/String; = "http://wap.baidu.com/?"

.field public static final SUCCESS_URL:Ljava/lang/String; = "/login_success"

.field static final TAG_Key_Method:Ljava/lang/String; = "method"

.field static final TAG_URL_EXPIRES:Ljava/lang/String; = "expires_in"

.field static final TAG_URL_SESSION_KEY:Ljava/lang/String; = "session_key"

.field static final TAG_URL_SESSION_SECRET:Ljava/lang/String; = "session_secret"

.field static final TAG_URL_THIRD_ACCESS_TOKEN:Ljava/lang/String; = "third_access_token"

.field static final TAG_URL_TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mConsumerKey:Ljava/lang/String;

.field private mExpiresDate:J

.field private mSessionKey:Ljava/lang/String;

.field private mSessionSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "https://openapi.baidu.com/xcloud/1.0/authorize?response_type=token&redirect_uri=oob&display=mobile"

    sput-object v0, Lcom/baidu/oauth/BaiduOAuthBase;->EXPLICIT_AUTH_URL:Ljava/lang/String;

    .line 32
    const-string v0, "https://openapi.baidu.com/oauth/2.0/authorize?response_type=token&redirect_uri=oob&display=mobile"

    sput-object v0, Lcom/baidu/oauth/BaiduOAuthBase;->AUTH_URL:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mAccessToken:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mConsumerKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "consumerKey"
    .parameter "mAccessToken"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mAccessToken:Ljava/lang/String;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cientid\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mConsumerKey:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p2}, Lcom/baidu/oauth/BaiduOAuthBase;->setAccessToken(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private getAccessExpires()J
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mExpiresDate:J

    monitor-exit p0

    return-wide v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public IsSessionValid()Z
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthBase;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/baidu/oauth/BaiduOAuthBase;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/baidu/oauth/BaiduOAuthBase;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 66
    goto :goto_0
.end method

.method public addCommonParameter(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clienttype"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "channel"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "version"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mAccessToken:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mConsumerKey:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExpireExpires()J
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mExpiresDate:J

    monitor-exit p0

    return-wide v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAccessExpires(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iput-wide p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mExpiresDate:J

    .line 150
    monitor-exit p0

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setAccessExpiresIn(Ljava/lang/String;)V
    .locals 6
    .parameter "expiresIn"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/oauth/BaiduOAuthBase;->setAccessExpires(J)V

    .line 141
    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1
    .parameter "mAccessToken"

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mAccessToken:Ljava/lang/String;

    .line 180
    monitor-exit p0

    .line 183
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConsumerKey(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerID"

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mConsumerKey:Ljava/lang/String;

    .line 162
    monitor-exit p0

    .line 165
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setmExpiresDate(J)V
    .locals 1
    .parameter "mExpiresDate"

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iput-wide p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mExpiresDate:J

    .line 199
    monitor-exit p0

    .line 202
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setmSessionKey(Ljava/lang/String;)V
    .locals 1
    .parameter "mSessionKey"

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mSessionKey:Ljava/lang/String;

    .line 187
    monitor-exit p0

    .line 190
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setmSessionSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "secret"

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthBase;->mSessionSecret:Ljava/lang/String;

    .line 193
    monitor-exit p0

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public signInHeader(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 79
    .line 80
    const-string v0, "Cookie"

    .line 81
    const-string v1, "BDUSS=9BUU5tcS1PWXBaZHNhUmFCeDNhVmk2aHRRNWJ-Q0NPNEUzRm9MNHhmOUJNZTlPQUFBQUFBJCQAAAAAAAAAAAouSSCTkHMeeWlkaXNrX3Rlc3QwMQAAAAAAAAAAAAAAAAAAAAAAAACAYIArMAAAAOAahn4AAAAAuWZCAAAAAAAxMC42NS4yMkGkx05BpMdOZk"

    .line 79
    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public signInUri(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthBase;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p0

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlink()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthBase;->setAccessToken(Ljava/lang/String;)V

    .line 129
    return-void
.end method
