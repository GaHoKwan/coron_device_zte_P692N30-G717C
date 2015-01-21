.class public Lajd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lajd;


# instance fields
.field private a:Laja;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private final a:Ljava/lang/String;

.field private final a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "RecommendAppInfoManager"

    iput-object v0, p0, Lajd;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajd;->a:Z

    .line 67
    iput-object p1, p0, Lajd;->a:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lajd;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lajd;->a:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lajd;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lajd;->a:Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object v0, p0, Lajd;->a:Landroid/content/Context;

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iput-object v0, p0, Lajd;->a:Laja;

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;)Lajd;
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lajd;->a:Lajd;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lajd;

    invoke-direct {v0, p0}, Lajd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lajd;->a:Lajd;

    .line 58
    :cond_0
    sget-object v0, Lajd;->a:Lajd;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 80
    const/4 v0, -0x1

    .line 81
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    :try_start_0
    iget-object v1, p0, Lajd;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lajd;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return v1

    .line 108
    :cond_0
    iget-object v0, p0, Lajd;->a:Laja;

    invoke-virtual {v0, p2, p3}, Laja;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v0, p0, Lajd;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)Laix;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Laix;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v5}, Lajd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 114
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downloading:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lajd;->a(Ljava/lang/String;)V

    .line 115
    if-eqz v0, :cond_1

    move v1, v3

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lajd;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)I

    move-result v6

    .line 119
    if-ne v6, v1, :cond_2

    invoke-virtual {p0, v5}, Lajd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 120
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " download pause:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lajd;->a(Ljava/lang/String;)V

    .line 121
    if-eqz v0, :cond_3

    .line 122
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 119
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p0, p2}, Lajd;->a(Ljava/lang/String;)I

    move-result v0

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " current version code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lajd;->a(Ljava/lang/String;)V

    .line 126
    if-ne v6, v3, :cond_4

    invoke-virtual {p0, v5}, Lajd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " download:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lajd;->a(Ljava/lang/String;)V

    .line 128
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 129
    if-ge v0, p3, :cond_6

    .line 130
    if-eqz v1, :cond_5

    move v1, v4

    .line 131
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 126
    goto :goto_3

    .line 133
    :cond_5
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 137
    :cond_6
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 139
    :cond_7
    if-eqz v1, :cond_8

    move v1, v4

    .line 140
    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 142
    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 21

    .prologue
    .line 190
    const-string v1, ""

    .line 192
    const-string v1, ""

    .line 193
    const-string v1, ""

    .line 194
    const-string v9, ""

    .line 195
    const-string v1, ""

    .line 196
    const-string v1, ""

    .line 197
    const-string v1, ""

    .line 198
    const-string v10, ""

    .line 199
    const-string v7, ""

    .line 200
    const-string v6, ""

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v4, 0x0

    .line 203
    const-string v3, ""

    .line 204
    const-string v2, ""

    .line 205
    const-wide/16 v11, 0x0

    .line 206
    const-wide/16 v13, 0x0

    .line 210
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    const-string v15, "market://details?id=com.papaya.papayafree2"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v1, v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v8, v0, Lajd;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v15, 0x0

    invoke-virtual {v8, v1, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_2

    .line 213
    const/4 v1, 0x1

    :goto_0
    move v8, v1

    .line 222
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lajd;->a:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 223
    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 224
    sget-object v16, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 225
    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 226
    sget-object v18, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 227
    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 228
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    move-object v6, v1

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lajd;->a:Landroid/content/Context;

    const-string v20, "connectivity"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 236
    if-eqz v1, :cond_1

    .line 237
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    .line 238
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    :goto_3
    move v5, v4

    move v4, v1

    .line 241
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_5

    .line 243
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 254
    :goto_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string v20, "av"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v15, "br"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v15, "dn"

    invoke-virtual {v3, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v9, "pm"

    move-object/from16 v0, v17

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v9, "mf"

    move-object/from16 v0, v18

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v9, "dp"

    move-object/from16 v0, v19

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v9, "pn"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v9, "so"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v7, "sn"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v6, "sm"

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v6, "mc"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    const-string v5, "wc"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 267
    const-string v4, "lc"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v2, "ll"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "xx"

    invoke-virtual {v3, v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 270
    const-string v1, "yy"

    invoke-virtual {v3, v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 271
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 280
    :goto_5
    return-object v1

    .line 215
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    .line 237
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 238
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 272
    :catch_1
    move-exception v1

    .line 274
    const-string v1, ""

    goto :goto_5

    .line 275
    :catch_2
    move-exception v1

    .line 277
    const-string v1, ""

    goto :goto_5

    :cond_5
    move-object v1, v2

    move-object v2, v3

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lajd;->a(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    :try_start_0
    iget-object v1, p0, Lajd;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lajd;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :cond_2
    iget-object v0, p0, Lajd;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    if-eqz p1, :cond_3

    .line 172
    iget-object v0, p0, Lajd;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 175
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    goto :goto_1
.end method
