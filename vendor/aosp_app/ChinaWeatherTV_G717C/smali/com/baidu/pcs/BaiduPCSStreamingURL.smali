.class public Lcom/baidu/pcs/BaiduPCSStreamingURL;
.super Lcom/baidu/pcs/BaiduPCSActionBase;
.source "BaiduPCSStreamingURL.java"


# static fields
.field private static final Display_Type:Ljava/lang/String; = "display"

.field private static final Key_Type:Ljava/lang/String; = "type"

.field private static final Value_Method_Streaming:Ljava/lang/String; = "streaming"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/baidu/pcs/BaiduPCSActionBase;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamingURL(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    .locals 6
    .parameter "source"
    .parameter "type"

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 16
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "streaming"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-virtual {p0}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "path"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "display"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://pcs.baidu.com/rest/2.0/pcs/file?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSStreamingURL;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, url:Ljava/lang/String;
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;

    .end local v1           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;-><init>()V

    .line 29
    .restart local v1       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    iget-object v3, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    const/4 v4, 0x0

    iput v4, v3, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    .line 30
    iput-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;->url:Ljava/lang/String;

    .line 33
    .end local v0           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 34
    new-instance v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;

    .end local v1           #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    invoke-direct {v1}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;-><init>()V

    .line 37
    .restart local v1       #ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSStreamingURLResponse;
    :cond_1
    return-object v1
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSActionBase;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method
