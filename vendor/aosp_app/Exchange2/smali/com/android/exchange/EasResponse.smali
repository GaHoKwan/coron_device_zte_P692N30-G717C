.class public Lcom/android/exchange/EasResponse;
.super Ljava/lang/Object;
.source "EasResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasResponse$Callbacks;
    }
.end annotation


# static fields
.field private static final HTTP_NEED_PROVISIONING:I = 0x1c1

.field public static sCallback:Lcom/android/exchange/EasResponse$Callbacks;


# instance fields
.field private mClientCertRequested:Z

.field private mClosed:Z

.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private mInputStream:Ljava/io/InputStream;

.field private final mLength:I

.field final mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 68
    iput-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 69
    iput-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    .line 70
    iput-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    .line 71
    iput v1, p0, Lcom/android/exchange/EasResponse;->mLength:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 73
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 76
    iput-object p1, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 77
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    .line 78
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    .line 83
    :goto_1
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    iput v1, p0, Lcom/android/exchange/EasResponse;->mLength:I

    goto :goto_1
.end method

.method public static fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/content/Context;)Lcom/android/exchange/EasResponse;
    .locals 7
    .parameter "connManager"
    .parameter "client"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 90
    sget-boolean v4, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v4, :cond_1

    .line 91
    sget-object v4, Lcom/android/exchange/EasResponse;->sCallback:Lcom/android/exchange/EasResponse$Callbacks;

    invoke-interface {v4, p2}, Lcom/android/exchange/EasResponse$Callbacks;->fromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;

    move-result-object v3

    .line 105
    :cond_0
    :goto_0
    return-object v3

    .line 94
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, reqTime:J
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 98
    .local v2, response:Lorg/apache/http/HttpResponse;
    new-instance v3, Lcom/android/exchange/EasResponse;

    invoke-direct {v3, v2}, Lcom/android/exchange/EasResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 99
    .local v3, result:Lcom/android/exchange/EasResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->hasDetectedUnsatisfiedCertReq(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    iput-boolean v6, v3, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 102
    iput-boolean v6, v3, Lcom/android/exchange/EasResponse;->mClosed:Z

    goto :goto_0
.end method

.method public static isAuthError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 114
    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProvisionError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 123
    const/16 v0, 0x1c1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServerError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 132
    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/GZIPInputStream;

    if-eqz v0, :cond_1

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 207
    :cond_2
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    if-eqz v4, :cond_1

    .line 144
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t reuse stream or get closed stream"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-nez v4, :cond_2

    .line 146
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t get input stream without entity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_2
    const/4 v2, 0x0

    .line 151
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 152
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v5, "Content-Encoding"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 153
    .local v0, ceHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, encoding:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    move-object v2, v3

    .line 163
    .end local v0           #ceHeader:Lorg/apache/http/Header;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    .line 164
    return-object v2

    .line 161
    :catch_0
    move-exception v4

    goto :goto_0

    .line 160
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x191

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissingCertificate()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    return v0
.end method
