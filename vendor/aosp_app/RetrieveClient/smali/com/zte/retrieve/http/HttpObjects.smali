.class Lcom/zte/retrieve/http/HttpObjects;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# instance fields
.field public mHttpClient:Lorg/apache/http/client/HttpClient;

.field public mHttpHost:Lorg/apache/http/HttpHost;

.field public mHttpParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object v0, p0, Lcom/zte/retrieve/http/HttpObjects;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 506
    iput-object v0, p0, Lcom/zte/retrieve/http/HttpObjects;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 507
    iput-object v0, p0, Lcom/zte/retrieve/http/HttpObjects;->mHttpHost:Lorg/apache/http/HttpHost;

    .line 504
    return-void
.end method
