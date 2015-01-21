.class Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;
.super Ljava/lang/Object;
.source "HttpClientUtil.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/http/HttpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustAnyHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method
