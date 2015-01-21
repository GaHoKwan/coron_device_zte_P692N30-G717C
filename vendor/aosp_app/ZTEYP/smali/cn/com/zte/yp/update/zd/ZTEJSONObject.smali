.class public Lcn/com/zte/yp/update/zd/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# static fields
.field private static final DEFAULT_VERIONANME:Ljava/lang/String; = "V0.0.0"

.field private static final DEFAULT_VERIONCODE:I = 0x0

.field private static final GENERIC:Ljava/lang/String; = "GENERIC"

.field public static final JSON_KEY_CLIENT_LOCAL:Ljava/lang/String; = "client_locale"

.field public static final JSON_KEY_FROM:Ljava/lang/String; = "from"

.field public static final JSON_KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    sget-object v0, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->OPERATOR:Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->COUNTRY:Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->DEVICE:Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->VERSIONNAME:Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V

    .line 88
    const-string v0, "versionCode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v0, "client_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 95
    invoke-direct {p0}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;-><init>()V

    .line 96
    sget-object v0, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->APPNAME:Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private parseOneInfo(ILjava/lang/String;)I
    .locals 6
    .parameter "customCount"
    .parameter "info"

    .prologue
    .line 113
    const-string v5, "\\|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, msg:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 115
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 117
    .local v4, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lcn/com/zte/yp/update/zd/AppDescriptionKey;

    move-result-object v0

    .line 118
    .local v0, appKey:Lcn/com/zte/yp/update/zd/AppDescriptionKey;
    invoke-virtual {v0, p0, v4}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;->put2JSONObject(Lcn/com/zte/yp/update/zd/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #appKey:Lcn/com/zte/yp/update/zd/AppDescriptionKey;
    :goto_0
    return p1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p1, v2, v4}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putCustomValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 163
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
    .line 100
    const-string v6, "ZTE_"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, infos:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 103
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

    .line 104
    .local v3, info:Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v1

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v3           #info:Ljava/lang/String;
    :cond_0
    const-string v6, "versionCode"

    invoke-virtual {p0, v6, p3}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 107
    if-eqz p2, :cond_1

    .line 108
    const-string v6, "versionName"

    invoke-virtual {p0, v6, p2}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "customCount"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
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

    .line 132
    .local v0, customValue:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0, p3}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
