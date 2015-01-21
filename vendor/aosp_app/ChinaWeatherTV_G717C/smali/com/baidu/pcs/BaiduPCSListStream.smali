.class Lcom/baidu/pcs/BaiduPCSListStream;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSListStream.java"


# static fields
.field private static final Value_Limit:Ljava/lang/String; = "limit"

.field private static final Value_Method:Ljava/lang/String; = "list"

.field private static final Value_Start:Ljava/lang/String; = "start"

.field private static final Value_Type:Ljava/lang/String; = "type"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public listStream(Ljava/lang/String;II)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    .locals 9
    .parameter "type"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 19
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;-><init>()V

    .line 21
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const-string v7, "list"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSListStream;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    if-lez p2, :cond_0

    .line 29
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "start"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    if-ltz p3, :cond_1

    .line 34
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "limit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://pcs.baidu.com/rest/2.0/pcs/stream?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSListStream;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSListStream;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v2

    .line 42
    .local v2, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v2, :cond_2

    .line 43
    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v6, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 45
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_2

    .line 46
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v5}, Lcom/baidu/pcs/BaiduPCSListStream;->parseListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSListInfoResponse;

    move-result-object v3

    .line 51
    .end local v0           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v1           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-object v3
.end method
