.class Lcom/baidu/pcs/BaiduPCSFileLink;
.super Lcom/baidu/pcs/BaiduPCSActionBase;


# static fields
.field private static final Command_Share:Ljava/lang/String; = "share"

.field private static final Value_Method_Cancel:Ljava/lang/String; = "cancel"

.field private static final Value_Method_Create:Ljava/lang/String; = "create"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method

.method private parseCreateLinkResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 4

    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;-><init>()V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v2, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :try_start_0
    iget-object v0, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileLink;->parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v0, :cond_1

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->links:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->links:Ljava/util/List;

    :cond_0
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->links:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 4

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "method"

    const-string v3, "create"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileLink;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "path"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/share?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileLink;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileLink;->parseCreateLinkResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createwebFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 4

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "method"

    const-string v3, "create"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileLink;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "path"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://pcs.baidu.com/rest/2.0/xcloud/ext/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileLink;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileLink;->parseCreateLinkResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createwebFileLink(Ljava/util/ArrayList;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "list"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "param"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "create"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileLink;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://pcs.baidu.com/rest/2.0/xcloud/ext/?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileLink;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->parseCreateLinkResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileLinkResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteFileLink(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    .locals 5

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "cancel"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSFileLink;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/share?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSFileLink;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSFileLink;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileLink;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method
