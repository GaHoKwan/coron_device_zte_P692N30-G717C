.class Lcom/baidu/pcs/BaiduPCSDeleter;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSDeleter.java"


# static fields
.field private static final Value_Method:Ljava/lang/String; = "delete"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 2
    .parameter "file"

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSDeleter;->deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v1

    return-object v1
.end method

.method public deleteFiles(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, files:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    .line 32
    .local v5, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    const-string v9, "delete"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSDeleter;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSDeleter;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, url:Ljava/lang/String;
    const-string v7, "param"

    invoke-virtual {p0, p1, v7}, Lcom/baidu/pcs/BaiduPCSDeleter;->buildBodyParamsWithList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v8, p0, Lcom/baidu/pcs/BaiduPCSDeleter;->Encoding_UTF8:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSDeleter;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v4

    .line 50
    .local v4, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v4, :cond_0

    .line 51
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 53
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 54
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSDeleter;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 66
    .end local v1           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 58
    .restart local v1       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v2       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method
