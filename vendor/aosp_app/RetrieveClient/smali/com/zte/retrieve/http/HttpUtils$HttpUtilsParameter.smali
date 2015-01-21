.class public Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/http/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpUtilsParameter"
.end annotation


# instance fields
.field private data:[B

.field private isProxySet:Z

.field private method:I

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private token:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;[BIZLjava/lang/String;I)V
    .locals 1
    .parameter "token"
    .parameter "url"
    .parameter "data"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-wide p1, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->token:J

    .line 448
    iput-object p3, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->url:Ljava/lang/String;

    .line 449
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->data:[B

    .line 450
    iput p5, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->method:I

    .line 451
    iput-boolean p6, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->isProxySet:Z

    .line 452
    iput-object p7, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->proxyHost:Ljava/lang/String;

    .line 453
    iput p8, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->proxyPort:I

    .line 454
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "url2"
    .parameter "method"

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->url:Ljava/lang/String;

    .line 458
    iput p2, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->method:I

    .line 460
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->method:I

    return v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->proxyPort:I

    return v0
.end method

.method public getToken()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->token:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->isProxySet:Z

    return v0
.end method

.method printParams()V
    .locals 3

    .prologue
    .line 491
    const-string v0, "HttpUtilsParameter_printParams:httpConnection: params list"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtilsParameter_printParams:\ttoken\t\t= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getToken()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtilsParameter_printParams:\turl\t\t= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "HttpUtilsParameter_printParams:\tmethod\t\t= "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getMethod()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "POST"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtilsParameter_printParams:\tisProxySet\t= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->isProxySet()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtilsParameter_printParams:\tproxyHost\t= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtilsParameter_printParams:\tproxyPort\t= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 500
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;->getMethod()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "GET"

    goto :goto_0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method
