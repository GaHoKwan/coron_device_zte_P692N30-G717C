.class public Lcom/zte/heartyservice/update/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 72
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/update/ZTEJSONObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "appName"
    .parameter "fromBuildModel"
    .parameter "language"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->APPNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->OPERATOR:Lcom/zte/heartyservice/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->COUNTRY:Lcom/zte/heartyservice/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->DEVICE:Lcom/zte/heartyservice/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 84
    const-string v0, "versionCode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v0, "from"

    invoke-virtual {p0, v0, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "client_locale"

    invoke-virtual {p0, v0, p3}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/update/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "description"
    .parameter "versionName"
    .parameter "versionCode"

    .prologue
    .line 91
    const-string v6, "ZTE_"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, infos:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 94
    .local v1, customCount:I
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 95
    .local v3, info:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/update/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v1

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v3           #info:Ljava/lang/String;
    :cond_0
    const-string v6, "versionCode"

    invoke-virtual {p0, v6, p3}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 99
    const-string v6, "versionName"

    invoke-virtual {p0, v6, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method parseOneInfo(ILjava/lang/String;)I
    .locals 6
    .parameter "customCount"
    .parameter "info"

    .prologue
    .line 104
    const-string v5, "\\|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, msg:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 106
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 108
    .local v4, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/heartyservice/update/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/update/AppDescriptionKey;

    move-result-object v0

    .line 110
    .local v0, appKey:Lcom/zte/heartyservice/update/AppDescriptionKey;
    invoke-virtual {v0, p0, v4}, Lcom/zte/heartyservice/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0           #appKey:Lcom/zte/heartyservice/update/AppDescriptionKey;
    :goto_0
    return p1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p1, v2, v4}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putCustomValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "customCount"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, customtKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, customValue:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0, p3}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
