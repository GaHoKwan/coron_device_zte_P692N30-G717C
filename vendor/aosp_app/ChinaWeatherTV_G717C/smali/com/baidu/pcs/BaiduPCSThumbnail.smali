.class Lcom/baidu/pcs/BaiduPCSThumbnail;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSThumbnail.java"


# static fields
.field private static final BestQuality:I = 0x64

.field private static final Key_C:Ljava/lang/String; = "c"

.field private static final Key_Quality:Ljava/lang/String; = "quality"

.field private static final Key_Size:Ljava/lang/String; = "size"

.field private static final Key_U:Ljava/lang/String; = "_u"

.field private static final MaxHeight:I = 0x244

.field private static final MaxWidth:I = 0x352

.field private static final Value_Method:Ljava/lang/String; = "generate"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 13
    .parameter "serverPath"
    .parameter "quality"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 19
    new-instance v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    invoke-direct {v6}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;-><init>()V

    .line 21
    .local v6, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    if-lez p3, :cond_4

    if-lez p4, :cond_4

    .line 24
    if-gez p2, :cond_0

    .line 25
    const/4 p2, 0x1

    .line 28
    :cond_0
    const/16 v10, 0x64

    if-le p2, v10, :cond_1

    .line 29
    const/16 p2, 0x64

    .line 33
    :cond_1
    const/16 v10, 0x352

    move/from16 v0, p3

    if-le v0, v10, :cond_2

    .line 34
    const/16 p3, 0x352

    .line 37
    :cond_2
    const/16 v10, 0x244

    move/from16 v0, p4

    if-le v0, v10, :cond_3

    .line 38
    const/16 p4, 0x244

    .line 41
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "method"

    const-string v12, "generate"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSThumbnail;->getAccessToken()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "path"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "quality"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "c"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, size_param:Ljava/lang/String;
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "size"

    invoke-direct {v10, v11, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://pcs.baidu.com/rest/2.0/pcs/thumbnail?"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/baidu/pcs/BaiduPCSThumbnail;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, url:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v3}, Lcom/baidu/pcs/BaiduPCSThumbnail;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v5

    .line 56
    .local v5, response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    if-eqz v5, :cond_4

    .line 59
    iget-object v10, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v10, :cond_4

    .line 61
    const/16 v10, 0xc8

    iget-object v11, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 63
    :try_start_0
    iget-object v10, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 65
    .local v1, content:Ljava/io/InputStream;
    if-eqz v1, :cond_4

    .line 66
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v11, 0x0

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 67
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v1           #content:Ljava/io/InputStream;
    .end local v3           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .end local v7           #size_param:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v6

    .line 70
    .restart local v3       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v5       #response:Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
    .restart local v7       #size_param:Ljava/lang/String;
    .restart local v9       #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Ljava/lang/IllegalStateException;
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    iget-object v10, v5, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-super {p0, v10}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v8

    .line 79
    .local v8, specificError:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v11, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 80
    iget-object v10, v6, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v11, v8, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iput-object v11, v10, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method
