.class public Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# static fields
.field private static clientAPK:Ljava/lang/String;


# instance fields
.field private final DEFAULT_VERIONANME:Ljava/lang/String;

.field private final DEFAULT_VERIONCODE:I

.field private final GENERIC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->clientAPK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v1, "GENERIC"

    iput-object v1, p0, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->GENERIC:Ljava/lang/String;

    .line 86
    const-string v1, "V0.0.0"

    iput-object v1, p0, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->DEFAULT_VERIONANME:Ljava/lang/String;

    .line 87
    iput v3, p0, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->DEFAULT_VERIONCODE:I

    .line 96
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, fromBuildModel:Ljava/lang/String;
    sget-object v1, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->OPERATOR:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    const-string v2, "GENERIC"

    invoke-virtual {v1, p0, v2}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->COUNTRY:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    const-string v2, "GENERIC"

    invoke-virtual {v1, p0, v2}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->DEVICE:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    const-string v2, "GENERIC"

    invoke-virtual {v1, p0, v2}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->VERSIONNAME:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    const-string v2, "V0.0.0"

    invoke-virtual {v1, p0, v2}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 103
    const-string v1, "versionCode"

    invoke-virtual {p0, v1, v3}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v1, "from"

    invoke-virtual {p0, v1, v0}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "client_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "clientapk"

    sget-object v2, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->clientAPK:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;-><init>()V

    .line 113
    sget-object v0, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->APPNAME:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private parseOneInfo(ILjava/lang/String;)I
    .locals 7
    .parameter "customCount"
    .parameter "info"

    .prologue
    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string v5, "\\|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, msg:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 134
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 136
    .local v4, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    move-result-object v0

    .line 138
    .local v0, appKey:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;
    invoke-virtual {v0, p0, v4}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #appKey:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;
    :goto_0
    return p1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p1, v2, v4}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putCustomValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 179
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
    .line 118
    const-string v6, "ZTE_"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, infos:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 121
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

    .line 122
    .local v3, info:Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v1

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v3           #info:Ljava/lang/String;
    :cond_0
    const-string v6, "versionCode"

    invoke-virtual {p0, v6, p3}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    .line 125
    if-eqz p2, :cond_1

    .line 126
    const-string v6, "versionName"

    invoke-virtual {p0, v6, p2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    return-void
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "customCount"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
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

    .line 151
    .local v0, customValue:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0, p3}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
