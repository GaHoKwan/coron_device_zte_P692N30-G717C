.class public Lcom/zte/retrieve/upgrade/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# static fields
.field private static final DEFAULT_VERIONANME:Ljava/lang/String; = "V0.0.0"

.field private static final DEFAULT_VERIONCODE:I = 0x0

.field private static final GENERIC:Ljava/lang/String; = "GENERIC"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->OPERATOR:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->COUNTRY:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->DEVICE:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->VERSIONNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V

    .line 80
    const-string v0, "versionCode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;-><init>()V

    .line 86
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->APPNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private parseOneInfo(ILjava/lang/String;)I
    .locals 6
    .parameter "customCount"
    .parameter "info"

    .prologue
    .line 103
    const-string v5, "\\|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, msg:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 105
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 107
    .local v4, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    move-result-object v0

    .line 108
    .local v0, appKey:Lcom/zte/retrieve/upgrade/AppDescriptionKey;
    invoke-virtual {v0, p0, v4}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #appKey:Lcom/zte/retrieve/upgrade/AppDescriptionKey;
    :goto_0
    return p1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p1, v2, v4}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putCustomValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "description"
    .parameter "versionName"
    .parameter "versionCode"

    .prologue
    .line 90
    const-string v3, "ZTE_"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, infos:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 93
    .local v0, customCount:I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 96
    const-string v3, "versionCode"

    invoke-virtual {p0, v3, p3}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v3, "versionName"

    invoke-virtual {p0, v3, p2}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void

    .line 93
    :cond_1
    aget-object v1, v2, v3

    .line 94
    .local v1, info:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v0

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "customCount"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, customtKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customValue"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, customValue:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0, p3}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
