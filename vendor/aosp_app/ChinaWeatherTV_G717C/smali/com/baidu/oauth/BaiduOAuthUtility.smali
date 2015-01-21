.class Lcom/baidu/oauth/BaiduOAuthUtility;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;
    }
.end annotation


# static fields
.field static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field static final Key_Method:Ljava/lang/String; = "method"


# instance fields
.field private Key_ENC:Ljava/lang/String;

.field private Key_Format:Ljava/lang/String;

.field private Key_Logout_Result:Ljava/lang/String;

.field private Key_Model:Ljava/lang/String;

.field private Key_SN:Ljava/lang/String;

.field private Key_Type:Ljava/lang/String;

.field public Key_UserName:Ljava/lang/String;

.field private Max_Tries:I

.field private Sleep_Interval:I

.field private Url_ExpireToken:Ljava/lang/String;

.field private Url_Register:Ljava/lang/String;

.field private Url_UserInfo:Ljava/lang/String;

.field private Value_Format:Ljava/lang/String;

.field private Value_Register:Ljava/lang/String;

.field private Value_Type_IMEI:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/auth/expireSession"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    .line 415
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/users/getinfo"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    .line 418
    const-string v0, "username"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    .line 421
    const-string v0, "format"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    .line 424
    const-string v0, "json"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    .line 427
    const-string v0, "result"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 440
    const-string v0, "type"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Type:Ljava/lang/String;

    .line 443
    const-string v0, "imei"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Type_IMEI:Ljava/lang/String;

    .line 446
    const-string v0, "sn"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_SN:Ljava/lang/String;

    .line 449
    const-string v0, "enc"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_ENC:Ljava/lang/String;

    .line 452
    const-string v0, "model"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Model:Ljava/lang/String;

    .line 455
    const-string v0, "register"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Register:Ljava/lang/String;

    .line 458
    const/16 v0, 0x8

    iput v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Max_Tries:I

    .line 461
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Sleep_Interval:I

    .line 464
    const-string v0, "https://pcs.baidu.com/rest/2.0/pcs/coupon"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_Register:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/auth/expireSession"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    .line 415
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/users/getinfo"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    .line 418
    const-string v0, "username"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    .line 421
    const-string v0, "format"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    .line 424
    const-string v0, "json"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    .line 427
    const-string v0, "result"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 440
    const-string v0, "type"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Type:Ljava/lang/String;

    .line 443
    const-string v0, "imei"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Type_IMEI:Ljava/lang/String;

    .line 446
    const-string v0, "sn"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_SN:Ljava/lang/String;

    .line 449
    const-string v0, "enc"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_ENC:Ljava/lang/String;

    .line 452
    const-string v0, "model"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Model:Ljava/lang/String;

    .line 455
    const-string v0, "register"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Register:Ljava/lang/String;

    .line 458
    const/16 v0, 0x8

    iput v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Max_Tries:I

    .line 461
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Sleep_Interval:I

    .line 464
    const-string v0, "https://pcs.baidu.com/rest/2.0/pcs/coupon"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_Register:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility;->toHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/baidu/oauth/BaiduOAuthUtility;)I
    .locals 1
    .parameter

    .prologue
    .line 461
    iget v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Sleep_Interval:I

    return v0
.end method

.method static synthetic access$2(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Register:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Type_IMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_SN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_ENC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/baidu/oauth/BaiduOAuthUtility;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_Register:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/baidu/oauth/BaiduOAuthUtility;)I
    .locals 1
    .parameter

    .prologue
    .line 458
    iget v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Max_Tries:I

    return v0
.end method

.method static createDialogListener(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    .locals 1
    .parameter "context"
    .parameter "apiKey"
    .parameter "listener"

    .prologue
    .line 336
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$2;-><init>(Lcom/baidu/oauth/BaiduOAuth$OAuthListener;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "bytes"
    .parameter "separator"

    .prologue
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v2, hexString:Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
    :cond_0
    aget-byte v0, p0, v3

    .line 214
    .local v0, b:B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, hex:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 216
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected buildParams(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, urlParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 231
    .local v3, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 234
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf8"

    invoke-direct {v2, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 235
    .local v2, paramsEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 248
    .end local v2           #paramsEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v3

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 244
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 58
    const/4 v6, 0x0

    .line 60
    .local v6, ret:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 62
    .local v7, token:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "access_token"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 72
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 75
    :try_start_0
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 76
    .local v4, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, json:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 80
    iget-object v9, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .end local v0           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 82
    .restart local v0       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #jo:Lorg/json/JSONObject;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v3       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #url:Ljava/lang/String;
    :cond_1
    const-string v6, "-"
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 88
    :catch_1
    move-exception v9

    goto :goto_0

    .line 86
    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method public logout()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 103
    const/4 v7, 0x0

    .line 105
    .local v7, ret:Z
    iget-object v8, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 107
    .local v8, token:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "access_token"

    invoke-direct {v11, v12, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 119
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 122
    :try_start_0
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 123
    .local v4, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, json:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 127
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 128
    .local v6, result:I
    if-ne v10, v6, :cond_1

    move v7, v10

    .line 145
    .end local v0           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #result:I
    .end local v9           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 128
    .restart local v0       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #jo:Lorg/json/JSONObject;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v3       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #result:I
    .restart local v9       #url:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 130
    .end local v6           #result:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 137
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 135
    :catch_1
    move-exception v10

    goto :goto_0

    .line 133
    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method public logoutInBackground(Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)Z
    .locals 4
    .parameter "token"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 253
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;

    invoke-direct {v0, p0, p2}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    return v3
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "apiKey"
    .parameter "sn"

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/oauth/BaiduOAuthUtility$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$1;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    .local v0, workThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method protected sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "request"

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, response:Lorg/apache/http/HttpResponse;
    if-eqz p1, :cond_0

    .line 299
    invoke-static {}, Lcom/baidu/oauth/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 300
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "compatibility"

    invoke-static {v3, v4}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 302
    if-eqz v0, :cond_0

    .line 304
    const/4 v2, 0x0

    .local v2, retries:I
    :goto_0
    if-nez v1, :cond_0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 332
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #retries:I
    :cond_0
    return-object v1

    .line 311
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #retries:I
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 320
    :goto_1
    if-nez v1, :cond_2

    .line 322
    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 304
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v3

    goto :goto_1

    .line 314
    :catch_1
    move-exception v3

    goto :goto_1

    .line 316
    :catch_2
    move-exception v3

    goto :goto_1

    .line 323
    :catch_3
    move-exception v3

    goto :goto_2
.end method
