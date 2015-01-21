.class public Lcom/baidu/pcs/BaiduCloudDownload;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduCloudDownload.java"


# static fields
.field private static final Cancel_Task_Id:Ljava/lang/String; = "task_id"

.field private static final Key_AppendUrl:Ljava/lang/String; = "cloud_dl"

.field private static final Query_Task_Id:Ljava/lang/String; = "task_ids"

.field private static final Query_Task_Type:Ljava/lang/String; = "op_type"

.field private static final Sever_Path:Ljava/lang/String; = "save_path"

.field private static final Source_Url:Ljava/lang/String; = "source_url"

.field private static final Value_Asc:Ljava/lang/String; = "asc"

.field private static final Value_CallBack:Ljava/lang/String; = "callback"

.field private static final Value_Limit:Ljava/lang/String; = "limit"

.field private static final Value_Method_Add:Ljava/lang/String; = "add_task"

.field private static final Value_Method_Cancel:Ljava/lang/String; = "cancel_task"

.field private static final Value_Method_List:Ljava/lang/String; = "list_task"

.field private static final Value_Method_Query:Ljava/lang/String; = "query_task"

.field private static final Value_NeedTaskInfo:Ljava/lang/String; = "need_task_info"

.field private static final Value_RateLimit:Ljava/lang/String; = "rate_limit"

.field private static final Value_Start:Ljava/lang/String; = "start"

.field private static final Value_TimeOut:Ljava/lang/String; = "timeout"

.field private static final Version:Ljava/lang/String; = "v"

.field private static final Version_No:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method

.method private parseCloudDownloadResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 6
    .parameter "response"

    .prologue
    .line 167
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;-><init>()V

    .line 168
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v5, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 171
    :try_start_0
    iget-object v4, p1, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, json:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, jo:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->parseSimplefiedResponse(Lorg/json/JSONObject;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    .line 181
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    if-nez v4, :cond_1

    .line 183
    const-string v4, "request_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "request_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->requestId:Ljava/lang/String;

    .line 186
    :cond_0
    const-string v4, "task_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    const-string v4, "task_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->taskId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 196
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 197
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 203
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 204
    iget-object v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public cancelCloudDownloadTask(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 8
    .parameter "taskId"

    .prologue
    .line 148
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;-><init>()V

    .line 149
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const-string v7, "cancel_task"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "task_id"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduCloudDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v2

    .line 160
    .local v2, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    invoke-direct {p0, v2}, Lcom/baidu/pcs/BaiduCloudDownload;->parseCloudDownloadResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v3

    .line 161
    return-object v3
.end method

.method public cloudDownload(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    .locals 10
    .parameter "sourceUrl"
    .parameter "severPath"
    .parameter "rateLimit"
    .parameter "timeOut"
    .parameter "callbackUrl"

    .prologue
    .line 22
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;-><init>()V

    .line 24
    .local v4, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "method"

    const-string v8, "add_task"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "source_url"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "save_path"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "v"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_0

    .line 32
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "rate_limit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_1

    .line 35
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "timeout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 38
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "callback"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduCloudDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, url:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v3

    .line 45
    .local v3, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    invoke-direct {p0, v3}, Lcom/baidu/pcs/BaiduCloudDownload;->parseCloudDownloadResponseBody(Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadResponse;

    move-result-object v4

    .line 47
    .end local v1           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public cloudTaskList(IIIZ)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    .locals 9
    .parameter "start"
    .parameter "limit"
    .parameter "asc"
    .parameter "needTaskInfo"

    .prologue
    .line 51
    new-instance v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    invoke-direct {v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;-><init>()V

    .line 53
    .local v3, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const-string v7, "list_task"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    if-gez p1, :cond_0

    .line 57
    const/4 p1, 0x0

    .line 59
    :cond_0
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "start"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    if-gtz p2, :cond_1

    .line 61
    const/16 p2, 0xa

    .line 63
    :cond_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "limit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v5, 0x1

    if-ne p3, v5, :cond_2

    .line 65
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "asc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    if-nez p4, :cond_3

    .line 68
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "need_task_info"

    const-string v7, "0"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduCloudDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduCloudDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v2

    .line 76
    .local v2, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_4

    .line 77
    iget-object v5, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v6, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v6, v5, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 78
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_4

    .line 79
    iget-object v5, v2, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v5}, Lcom/baidu/pcs/BaiduCloudDownload;->parseCloudDownloadTaskListResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadTaskListResponse;

    move-result-object v3

    .line 82
    :cond_4
    return-object v3
.end method

.method public bridge synthetic getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryCloudDownloadTaskProgress([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    .locals 10
    .parameter "queryTaskId"

    .prologue
    .line 118
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;-><init>()V

    .line 119
    .local v4, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;
    const/4 v1, 0x0

    .line 120
    .local v1, i:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v5, taskId:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_0
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_1

    .line 125
    aget-object v7, p1, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    const-string v9, "query_task"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "task_ids"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "op_type"

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduCloudDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduCloudDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v3

    .line 137
    .local v3, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 138
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v8, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 139
    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 140
    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v7, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->parseCloudDownloadTaskProgressInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskProgressResponse;

    move-result-object v4

    .line 143
    :cond_0
    return-object v4

    .line 122
    .end local v0           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    aget-object v7, p1, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public queryCloudDownloadTaskStatus([Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    .locals 10
    .parameter "queryTaskId"

    .prologue
    .line 87
    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;-><init>()V

    .line 88
    .local v4, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;
    const/4 v1, 0x0

    .line 89
    .local v1, i:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v5, taskId:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_0
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_1

    .line 94
    aget-object v7, p1, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "method"

    const-string v9, "query_task"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduCloudDownload;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "task_ids"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "op_type"

    const-string v9, "0"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/pcs/BaiduCloudDownload;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduCloudDownload;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v3

    .line 106
    .local v3, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 107
    iget-object v7, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v8, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    .line 108
    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v7, :cond_0

    .line 109
    iget-object v7, v3, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v7, p1}, Lcom/baidu/pcs/BaiduCloudDownload;->parseCloudDownloadTaskStatusInfoResponse(Lorg/apache/http/HttpResponse;[Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCloudDownloadQueryTaskStatusResponse;

    move-result-object v4

    .line 112
    :cond_0
    return-object v4

    .line 91
    .end local v0           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    aget-object v7, p1, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method
