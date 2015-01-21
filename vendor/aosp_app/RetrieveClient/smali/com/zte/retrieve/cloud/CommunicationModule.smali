.class public Lcom/zte/retrieve/cloud/CommunicationModule;
.super Ljava/lang/Object;
.source "CommunicationModule.java"


# static fields
.field public static final METHOD_GET:I = 0x2

.field public static final METHOD_POST:I = 0x1


# instance fields
.field public _context:Landroid/content/Context;

.field private httpResult:Lcom/zte/retrieve/http/HttpResult;

.field public httpUtils:Lcom/zte/retrieve/http/HttpUtils;

.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->_context:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/zte/retrieve/http/HttpUtils;

    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/http/HttpUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpUtils:Lcom/zte/retrieve/http/HttpUtils;

    .line 27
    return-void
.end method

.method private parseRespondStr(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;
    .locals 3
    .parameter "strJson"

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->jsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-instance v1, Lcom/zte/retrieve/utils/ServerResponseInfo;

    invoke-direct {v1}, Lcom/zte/retrieve/utils/ServerResponseInfo;-><init>()V

    .line 65
    .local v1, userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    const-string v2, "rescode"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonIntField(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setResCode(I)V

    .line 66
    const-string v2, "authcode"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonIntField(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setAuthcode(I)V

    .line 67
    const-string v2, "uid"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setUid(Ljava/lang/String;)V

    .line 68
    const-string v2, "token"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setToken(Ljava/lang/String;)V

    .line 69
    const-string v2, "nickname"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setNickname(Ljava/lang/String;)V

    .line 70
    const-string v2, "mobile"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setMobile(Ljava/lang/String;)V

    .line 71
    const-string v2, "email"

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->getJsonStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->setEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1           #userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSvrResponse(Lcom/zte/retrieve/http/HttpResult;)I
    .locals 2
    .parameter "httpResult"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, -0x2

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpResult.getStatusCode() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpResult;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/zte/retrieve/http/HttpResult;->getStatusCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public communication(Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lcom/zte/retrieve/http/HttpUtils;

    iget-object v2, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->_context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/retrieve/http/HttpUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpUtils:Lcom/zte/retrieve/http/HttpUtils;

    .line 31
    new-instance v0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;-><init>(Ljava/lang/String;I)V

    .line 32
    .local v0, httpUtilsParams:Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpUtils:Lcom/zte/retrieve/http/HttpUtils;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/http/HttpUtils;->httpConnection(Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;)Lcom/zte/retrieve/http/HttpResult;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpResult:Lcom/zte/retrieve/http/HttpResult;

    .line 33
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpResult:Lcom/zte/retrieve/http/HttpResult;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/cloud/CommunicationModule;->processSvrResponse(Lcom/zte/retrieve/http/HttpResult;)I

    move-result v1

    return v1
.end method

.method public communicationJson(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lcom/zte/retrieve/http/HttpUtils;

    iget-object v2, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->_context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/zte/retrieve/http/HttpUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpUtils:Lcom/zte/retrieve/http/HttpUtils;

    .line 39
    new-instance v0, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v0, httpUtilsParams:Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpUtils:Lcom/zte/retrieve/http/HttpUtils;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/http/HttpUtils;->httpConnection(Lcom/zte/retrieve/http/HttpUtils$HttpUtilsParameter;)Lcom/zte/retrieve/http/HttpResult;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpResult:Lcom/zte/retrieve/http/HttpResult;

    .line 42
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->httpResult:Lcom/zte/retrieve/http/HttpResult;

    invoke-virtual {v1}, Lcom/zte/retrieve/http/HttpResult;->getResData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/retrieve/cloud/CommunicationModule;->parseRespondStr(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v1

    return-object v1
.end method

.method public getJsonIntField(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJsonStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "field"

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/cloud/CommunicationModule;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method
