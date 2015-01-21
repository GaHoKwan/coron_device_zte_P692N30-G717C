.class Lcom/sdk/util/SignUtil$3;
.super Lcom/sdk/http/NetCallBack;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->requestSearchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sdk/util/SignUtil$3;->val$num:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/sdk/http/NetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v0, p1}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 7
    .parameter "Info"

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 231
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v5, "confTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const-string v5, "confTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, confTime:Ljava/lang/String;
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$context:Landroid/content/Context;

    const-string v6, "newTs"

    #calls: Lcom/sdk/util/SignUtil;->updateTs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v0}, Lcom/sdk/util/SignUtil;->access$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v0           #confTime:Ljava/lang/String;
    :cond_1
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    .local v4, type:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    invoke-static {}, Lcom/sdk/util/SignUtil;->access$4()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 241
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/sdk/util/SignUtil$3;->val$num:Ljava/lang/String;

    #calls: Lcom/sdk/util/SignUtil;->updateSign(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v5, v6, v4}, Lcom/sdk/util/SignUtil;->access$5(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    invoke-static {}, Lcom/sdk/util/SignUtil;->access$4()[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v4

    .line 243
    .local v2, info:Ljava/lang/String;
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v5, v2}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v2           #info:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #type:I
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 249
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 251
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    iget-object v5, p0, Lcom/sdk/util/SignUtil$3;->val$callBack:Lcom/sdk/http/NetCallBack;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    goto :goto_0
.end method
