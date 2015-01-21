.class Lcom/baidu/pcs/BaiduPCSDiffer;
.super Lcom/baidu/pcs/BaiduPCSActionBase;


# static fields
.field private static final Key_Cursor:Ljava/lang/String; = "cursor"

.field private static final Value_Method:Ljava/lang/String; = "diff"

.field private static final maxRecord:I = 0x7d0


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public diff(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    move v0, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/pcs/BaiduPCSDiffer;->getUpdate(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v4, :cond_2

    const/4 v0, 0x1

    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-boolean v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    iput-boolean v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    iget-boolean v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    iput-boolean v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->isReseted:Z

    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    iget-object p1, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->cursor:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    :cond_1
    iget-object v4, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->hasMore:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iput v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    :cond_3
    return-object v2
.end method

.method public getUpdate(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;
    .locals 5

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v4, "diff"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSDiffer;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cursor"

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSDiffer;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduPCSDiffer;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSDiffer;->parseDiffResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSDiffResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method
