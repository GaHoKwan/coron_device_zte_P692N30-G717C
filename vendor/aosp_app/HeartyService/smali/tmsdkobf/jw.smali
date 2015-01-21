.class public Ltmsdkobf/jw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/jw$a;
    }
.end annotation


# instance fields
.field private sj:I

.field protected xC:Lorg/apache/http/params/HttpParams;

.field private xD:Z

.field private xE:Ljava/lang/String;

.field protected xF:Ltmsdkobf/jw$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    .line 39
    iput-boolean v1, p0, Ltmsdkobf/jw;->xD:Z

    .line 40
    iput-object v0, p0, Ltmsdkobf/jw;->xE:Ljava/lang/String;

    .line 41
    iput v1, p0, Ltmsdkobf/jw;->sj:I

    .line 45
    iput-object v0, p0, Ltmsdkobf/jw;->xF:Ltmsdkobf/jw$a;

    .line 53
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 79
    iget-object v0, p0, Ltmsdkobf/jw;->xF:Ltmsdkobf/jw$a;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 81
    iget-object v0, p0, Ltmsdkobf/jw;->xF:Ltmsdkobf/jw$a;

    invoke-interface {v0, p2}, Ltmsdkobf/jw$a;->a(Landroid/os/Bundle;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Ltmsdkobf/jw;->xF:Ltmsdkobf/jw$a;

    invoke-interface {v0, p2}, Ltmsdkobf/jw$a;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Ltmsdkobf/jw$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Ltmsdkobf/jw;->xF:Ltmsdkobf/jw$a;

    .line 118
    return-void
.end method

.method protected eV()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, client:Lorg/apache/http/client/HttpClient;
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    if-nez v2, :cond_0

    .line 124
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    .line 127
    :cond_0
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 132
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    iget-object v2, p0, Ltmsdkobf/jw;->xC:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 134
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    iget-boolean v2, p0, Ltmsdkobf/jw;->xD:Z

    if-eqz v2, :cond_1

    .line 135
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Ltmsdkobf/jw;->xE:Ljava/lang/String;

    iget v3, p0, Ltmsdkobf/jw;->sj:I

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v1, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 139
    .end local v1           #proxy:Lorg/apache/http/HttpHost;
    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "port"

    .prologue
    .line 107
    iput-object p1, p0, Ltmsdkobf/jw;->xE:Ljava/lang/String;

    .line 108
    iput p2, p0, Ltmsdkobf/jw;->sj:I

    .line 109
    return-void
.end method

.method public x(Z)V
    .locals 0
    .parameter "useProxy"

    .prologue
    .line 95
    iput-boolean p1, p0, Ltmsdkobf/jw;->xD:Z

    .line 96
    return-void
.end method
