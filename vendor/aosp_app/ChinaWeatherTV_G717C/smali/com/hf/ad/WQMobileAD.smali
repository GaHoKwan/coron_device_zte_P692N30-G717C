.class public Lcom/hf/ad/WQMobileAD;
.super Ljava/lang/Object;
.source "WQMobileAD.java"


# static fields
.field private static final AD_SLOT_ID:Ljava/lang/String; = "b633647a66ba4a6aa337169da1139a41"

.field private static final CONNECTION_TIME_OUT:I = 0x2710

.field private static final KEY:Ljava/lang/String; = "1872145507d8406f9b6fe1bc8b96d287"

.field private static final TAG:Ljava/lang/String; = "WQMobileAD"

.field private static final URL:Ljava/lang/String; = "http://s2s.adwaken.com:8090/wqs2s_test/getad?dev=%s&key=%s&as=%s&pf=android&pkg=%s&sr=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/ad/WQMobileAD;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hf/ad/WQMobileAD;->getClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private getClient()Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 40
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 41
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 43
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v2, "http.socket.timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 44
    const-string v2, "http.connection.timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 45
    return-object v0
.end method


# virtual methods
.method public load(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    new-instance v0, Lcom/hf/ad/WQMobileAD$1;

    invoke-direct {v0, p0, p1}, Lcom/hf/ad/WQMobileAD$1;-><init>(Lcom/hf/ad/WQMobileAD;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v1}, Lcom/hf/ad/WQMobileAD$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method
