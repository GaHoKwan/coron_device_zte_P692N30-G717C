.class public Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# static fields
.field public static final JSON_KEY_CLIENT_LOCAL:Ljava/lang/String; = "client_locale"

.field public static final JSON_KEY_FROM:Ljava/lang/String; = "from"

.field public static final JSON_KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"


# instance fields
.field private final DEFAULT_VERIONANME:Ljava/lang/String;

.field private final DEFAULT_VERIONCODE:I

.field private final GENERIC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v0, "GENERIC"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->GENERIC:Ljava/lang/String;

    .line 74
    const-string v0, "V0.0.0"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->DEFAULT_VERIONANME:Ljava/lang/String;

    .line 75
    iput v2, p0, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->DEFAULT_VERIONCODE:I

    .line 85
    sget-object v0, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->OPERATOR:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->COUNTRY:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->DEVICE:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->VERSIONNAME:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 90
    const-string v0, "versionCode"

    invoke-virtual {p0, v0, v2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "client_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 97
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;-><init>()V

    .line 98
    sget-object v0, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->APPNAME:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private parseOneInfo(ILjava/lang/String;)I
    .locals 5
    .parameter "customCount"
    .parameter "info"

    .prologue
    .line 121
    const-string v4, "\\|"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, msg:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 123
    .local v1, key:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 127
    .local v3, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;

    move-result-object v0

    .line 128
    .local v0, appKey:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;
    invoke-virtual {v0, p0, v3}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;->put2JSONObject(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #appKey:Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;
    :goto_0
    return p1

    .line 130
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 170
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
    .line 103
    const-string v3, "ZTE_"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, infos:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 107
    .local v0, customCount:I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    .line 111
    if-lez p3, :cond_0

    .line 112
    const-string v3, "versionCode"

    invoke-virtual {p0, v3, p3}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    const-string v3, "versionName"

    invoke-virtual {p0, v3, p2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    return-void

    .line 107
    :cond_2
    aget-object v1, v2, v3

    .line 108
    .local v1, info:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v0

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "customCount"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, customtKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customValue"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, customValue:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v0, p3}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
