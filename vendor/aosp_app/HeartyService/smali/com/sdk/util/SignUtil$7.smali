.class Lcom/sdk/util/SignUtil$7;
.super Lcom/sdk/http/NetCallBack;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->requestUpdateSignDB(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$7;->val$callBack:Lcom/sdk/http/NetCallBack;

    .line 479
    invoke-direct {p0}, Lcom/sdk/http/NetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sdk/util/SignUtil$7;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v0, p1}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 9
    .parameter "Info"

    .prologue
    .line 483
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, ""

    .line 487
    .local v3, newTs:Ljava/lang/String;
    const-string v7, "confTime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    const-string v7, "confTime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, confTime:Ljava/lang/String;
    iget-object v7, p0, Lcom/sdk/util/SignUtil$7;->val$context:Landroid/content/Context;

    const-string v8, "newTs"

    #calls: Lcom/sdk/util/SignUtil;->updateTs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v0}, Lcom/sdk/util/SignUtil;->access$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v0           #confTime:Ljava/lang/String;
    :cond_0
    const-string v7, "newTs"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 492
    const-string v7, "newTs"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    :cond_1
    const-string v7, "url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    const-string v7, "url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, url:Ljava/lang/String;
    new-instance v5, Lcom/sdk/http/DownloadTask;

    iget-object v7, p0, Lcom/sdk/util/SignUtil$7;->val$callBack:Lcom/sdk/http/NetCallBack;

    iget-object v8, p0, Lcom/sdk/util/SignUtil$7;->val$context:Landroid/content/Context;

    invoke-direct {v5, v7, v8}, Lcom/sdk/http/DownloadTask;-><init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;)V

    .line 498
    .local v5, task:Lcom/sdk/http/DownloadTask;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v7, 0x1

    aput-object v3, v4, v7

    .line 499
    .local v4, params:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v7}, Lcom/sdk/http/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 507
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #newTs:Ljava/lang/String;
    .end local v4           #params:[Ljava/lang/String;
    .end local v5           #task:Lcom/sdk/http/DownloadTask;
    .end local v6           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 501
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #newTs:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/sdk/util/SignUtil$7;->val$callBack:Lcom/sdk/http/NetCallBack;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #newTs:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 504
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 505
    iget-object v7, p0, Lcom/sdk/util/SignUtil$7;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
