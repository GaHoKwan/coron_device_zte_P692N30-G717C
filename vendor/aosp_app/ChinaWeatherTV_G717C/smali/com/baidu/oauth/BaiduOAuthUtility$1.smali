.class Lcom/baidu/oauth/BaiduOAuthUtility$1;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthUtility;->register(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

.field private final synthetic val$apiKey:Ljava/lang/String;

.field private final synthetic val$sn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$sn:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$apiKey:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 158
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$sn:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$apiKey:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;
    invoke-static {v11}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$0(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 160
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 162
    .local v4, md5:Ljava/security/MessageDigest;
    if-eqz v4, :cond_0

    .line 163
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 164
    .local v5, model:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$apiKey:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$sn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, originalString:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 166
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    const-string v12, ""

    #calls: Lcom/baidu/oauth/BaiduOAuthUtility;->toHexString([BLjava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$1([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, enc:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "access_token"

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;
    invoke-static {v13}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$0(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "method"

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Register:Ljava/lang/String;
    invoke-static {v13}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$2(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Type:Ljava/lang/String;
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$3(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Type_IMEI:Ljava/lang/String;
    invoke-static {v13}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$4(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Key_SN:Ljava/lang/String;
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$5(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->val$sn:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Model:Ljava/lang/String;
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$6(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Key_ENC:Ljava/lang/String;
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$7(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Url_Register:Ljava/lang/String;
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$8(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-virtual {v12, v7}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, url:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 180
    .local v9, success:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-nez v9, :cond_0

    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Max_Tries:I
    invoke-static {v11}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$9(Lcom/baidu/oauth/BaiduOAuthUtility;)I

    move-result v11

    if-lt v3, v11, :cond_1

    .line 201
    .end local v1           #enc:Ljava/lang/String;
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #i:I
    .end local v4           #md5:Ljava/security/MessageDigest;
    .end local v5           #model:Ljava/lang/String;
    .end local v6           #originalString:Ljava/lang/String;
    .end local v7           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v9           #success:Z
    .end local v10           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 182
    .restart local v1       #enc:Ljava/lang/String;
    .restart local v2       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #i:I
    .restart local v4       #md5:Ljava/security/MessageDigest;
    .restart local v5       #model:Ljava/lang/String;
    .restart local v6       #originalString:Ljava/lang/String;
    .restart local v7       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v9       #success:Z
    .restart local v10       #url:Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-virtual {v11, v2}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 185
    .local v8, response:Lorg/apache/http/HttpResponse;
    if-eqz v8, :cond_2

    if-eqz v8, :cond_2

    .line 186
    const/4 v9, 0x1

    .line 180
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v11, v3, 0x1

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility$1;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    #getter for: Lcom/baidu/oauth/BaiduOAuthUtility;->Sleep_Interval:I
    invoke-static {v12}, Lcom/baidu/oauth/BaiduOAuthUtility;->access$10(Lcom/baidu/oauth/BaiduOAuthUtility;)I

    move-result v12

    mul-int/2addr v11, v12

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 193
    .end local v1           #enc:Ljava/lang/String;
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #i:I
    .end local v4           #md5:Ljava/security/MessageDigest;
    .end local v5           #model:Ljava/lang/String;
    .end local v6           #originalString:Ljava/lang/String;
    .end local v7           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #success:Z
    .end local v10           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
