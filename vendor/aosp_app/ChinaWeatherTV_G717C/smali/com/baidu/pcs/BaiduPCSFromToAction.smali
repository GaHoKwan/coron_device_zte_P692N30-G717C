.class Lcom/baidu/pcs/BaiduPCSFromToAction;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSFromToAction.java"


# instance fields
.field private mbAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSFromToAction;->mbAction:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFromToAction;->mbAction:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected final execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;-><init>()V

    .line 26
    .local v0, data:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;
    iput-object p1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->from:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;->to:Ljava/lang/String;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v2

    return-object v2
.end method

.method protected final execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;>;"
    new-instance v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    invoke-direct {v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;-><init>()V

    .line 40
    .local v5, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    iget-object v9, p0, Lcom/baidu/pcs/BaiduPCSFromToAction;->mbAction:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFromToAction;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFromToAction;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, url:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->buildBodyParamsWithFromTo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "utf-8"

    invoke-direct {v7, v1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSFromToAction;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v4

    .line 56
    .local v4, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v4, :cond_0

    .line 58
    iget-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v8, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 60
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 61
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v7}, Lcom/baidu/pcs/BaiduPCSFromToAction;->parseFileFromToExtraInfo(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 73
    .end local v1           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v6           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 65
    .restart local v1       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v2       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v7, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method
