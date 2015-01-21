.class Lcom/baidu/pcs/BaiduPCSThumbnail;
.super Lcom/baidu/pcs/BaiduPCSActionBase;


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

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public thumbnail(Ljava/lang/String;III)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;
    .locals 6

    const/16 v1, 0x352

    const/16 v0, 0x244

    const/16 v2, 0x64

    new-instance v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;

    invoke-direct {v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    if-gez p2, :cond_6

    const/4 v3, 0x1

    :goto_0
    if-le v3, v2, :cond_5

    :goto_1
    if-le p3, v1, :cond_0

    move p3, v1

    :cond_0
    if-le p4, v0, :cond_1

    move p4, v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "method"

    const-string v5, "generate"

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSThumbnail;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    invoke-direct {v1, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "quality"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/thumbnail?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSThumbnail;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_3

    const/16 v1, 0xc8

    iget-object v2, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->closeInputStream(Ljava/io/InputStream;)V

    :cond_3
    :goto_2
    return-object v4

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v2, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/baidu/pcs/BaiduPCSThumbnail;->closeInputStream(Ljava/io/InputStream;)V

    throw v0

    :cond_4
    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-super {p0, v0}, Lcom/baidu/pcs/BaiduPCSActionBase;->parseSimplefiedResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    move-result-object v0

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iget-object v1, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSThumbnailResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->message:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v2, v3

    goto/16 :goto_1

    :cond_6
    move v3, p2

    goto/16 :goto_0
.end method
