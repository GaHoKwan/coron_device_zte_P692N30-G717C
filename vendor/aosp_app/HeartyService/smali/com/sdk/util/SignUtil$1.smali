.class Lcom/sdk/util/SignUtil$1;
.super Lcom/sdk/http/NetCallBack;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->activate(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$1;->val$callBack:Lcom/sdk/http/NetCallBack;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$1;->val$context:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/sdk/http/NetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sdk/util/SignUtil$1;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v0, p1}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 6
    .parameter "Info"

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "phoneSignUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    .line 120
    const-string v3, "logUploadUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    .line 121
    #calls: Lcom/sdk/util/SignUtil;->isUrlempty()Z
    invoke-static {}, Lcom/sdk/util/SignUtil;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/sdk/util/SignUtil$1;->val$callBack:Lcom/sdk/http/NetCallBack;

    const-string v4, "\u53f7\u7801\u6807\u8bb0\u529f\u80fd\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    iget-object v3, p0, Lcom/sdk/util/SignUtil$1;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sdk/util/SignUtil$1;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    sget-object v5, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    #calls: Lcom/sdk/util/SignUtil;->saveUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/sdk/util/SignUtil;->access$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "confTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "confTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, confTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/sdk/util/SignUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "oldTs"

    #calls: Lcom/sdk/util/SignUtil;->updateTs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v0}, Lcom/sdk/util/SignUtil;->access$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0           #confTime:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sdk/util/SignUtil$1;->val$callBack:Lcom/sdk/http/NetCallBack;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
