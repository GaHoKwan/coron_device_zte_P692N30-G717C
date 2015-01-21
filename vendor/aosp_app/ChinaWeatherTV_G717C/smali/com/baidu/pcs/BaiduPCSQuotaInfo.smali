.class Lcom/baidu/pcs/BaiduPCSQuotaInfo;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSQuotaInfo.java"


# static fields
.field private static final Key_Total:Ljava/lang/String; = "quota"

.field private static final Key_Used:Ljava/lang/String; = "used"

.field private static final Value_Method:Ljava/lang/String; = "info"

.field private static final mbCommand:Ljava/lang/String; = "quota"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method quotaInfo()Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    move-result-object v0

    return-object v0
.end method

.method quotaInfo(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    .locals 12
    .parameter "folder"

    .prologue
    .line 33
    new-instance v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;

    invoke-direct {v7}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;-><init>()V

    .line 36
    .local v7, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "method"

    const-string v11, "info"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 41
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "path"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "https://pcs.baidu.com/rest/2.0/pcs/quota?"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, url:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 48
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSQuotaInfo;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v6

    .line 51
    .local v6, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v6, :cond_1

    .line 52
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 53
    iget-object v9, v6, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v9, :cond_1

    .line 54
    iget-object v9, v6, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 57
    .local v5, resEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, json:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, jo:Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 61
    const-string v9, "error_code"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_code"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 64
    const-string v9, "error_msg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "error_msg"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 88
    .end local v1           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v3           #json:Ljava/lang/String;
    .end local v5           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    :cond_1
    :goto_0
    return-object v7

    .line 68
    .restart local v1       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #jo:Lorg/json/JSONObject;
    .restart local v3       #json:Ljava/lang/String;
    .restart local v5       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    :cond_2
    const-string v9, "quota"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 69
    const-string v9, "quota"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->total:J

    .line 70
    const-string v9, "used"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->used:J

    .line 71
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v10, 0x0

    iput v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 75
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v3           #json:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 77
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, e:Lorg/json/JSONException;
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    :cond_3
    iget-object v9, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSQuotaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const-string v10, "Invalid Url"

    iput-object v10, v9, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method
