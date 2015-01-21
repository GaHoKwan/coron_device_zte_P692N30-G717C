.class Lcom/baidu/pcs/BaiduPCSDiffer;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSDiffer.java"


# static fields
.field private static final Key_Cursor:Ljava/lang/String; = "cursor"

.field private static final Value_Method:Ljava/lang/String; = "diff"

.field private static final maxRecord:I = 0x7d0


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 21
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    .line 24
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    const/4 v2, 0x0

    .line 29
    .local v2, success:Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSDiffer;->getUpdate(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    .line 32
    .local v0, info:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v3, :cond_2

    .line 34
    const/4 v2, 0x1

    .line 36
    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 37
    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    iput-boolean v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    .line 38
    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    iput-boolean v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    .line 39
    iget-object v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    .line 42
    iget-object p1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    .line 45
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    if-nez v3, :cond_1

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    .line 50
    :cond_1
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-boolean v3, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 64
    :cond_2
    if-eqz v2, :cond_3

    .line 65
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 66
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 69
    :cond_3
    return-object v1
.end method

.method public getUpdate(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 77
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    .line 79
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const-string v7, "diff"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSDiffer;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cursor"

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1
    :cond_0
    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSDiffer;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSDiffer;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v2

    .line 92
    .local v2, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v2, :cond_1

    .line 93
    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v6, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 95
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v5}, Lcom/baidu/pcs/BaiduPCSDiffer;->parseDiffResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v3

    .line 100
    :cond_1
    return-object v3
.end method
