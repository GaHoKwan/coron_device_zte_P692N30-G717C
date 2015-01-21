.class public Lcom/zte/retrieve/upgrade/UpgradeJsonUtils;
.super Ljava/lang/Object;
.source "UpgradeJsonUtils.java"


# static fields
.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final PACEAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final VERSION:Ljava/lang/String; = "device"

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final VERSION_NAME:Ljava/lang/String; = "versionName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateJSONObject(Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;)Ljava/lang/String;
    .locals 6
    .parameter "version"

    .prologue
    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .local v1, jsonArray:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v2, jsonObject1:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "device"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v4, "versionCode"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v4, "versionName"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "packageName"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v4, "operator"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v4, "country"

    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, myJsonReqStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSON send JSONObject = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 41
    return-object v3

    .line 36
    .end local v3           #myJsonReqStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseJSONObject(Lorg/json/JSONObject;)Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    if-eqz p0, :cond_0

    .line 54
    new-instance v1, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;

    .end local v1           #responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    invoke-direct {v1}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;-><init>()V

    .line 56
    .restart local v1       #responseInfo:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    :try_start_0
    const-string v2, "hasUpdate"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setHasUpdate(Z)V

    .line 57
    const-string v2, "packageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setPackageName(Ljava/lang/String;)V

    .line 58
    const-string v2, "ZTE_AutoUpdate_Url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setUpdateUrl(Ljava/lang/String;)V

    .line 59
    const-string v2, "size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSize(J)V

    .line 61
    const-string v2, "versionCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionCode(I)V

    .line 62
    const-string v2, "versionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setVersionName(Ljava/lang/String;)V

    .line 63
    const-string v2, "summary"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->setSummary(Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON receiver: parseJSONObject responseInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
