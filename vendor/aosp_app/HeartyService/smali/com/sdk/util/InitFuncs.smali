.class public Lcom/sdk/util/InitFuncs;
.super Ljava/lang/Object;
.source "InitFuncs.java"


# static fields
.field private static final TS:Ljava/lang/String; = "offline"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initADCValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "100322"

    .line 82
    .local v0, adc:Ljava/lang/String;
    return-object v0
.end method

.method public static initANValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 89
    const-string v0, ""

    .line 90
    .local v0, an:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 91
    .local v1, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "w-Android-gen-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static initAVValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "MARK_1.0.0_20140218"

    .line 100
    .local v0, av:Ljava/lang/String;
    return-object v0
.end method

.method private static initDB(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 139
    :try_start_0
    const-string v3, "offline.db"

    .line 140
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 141
    .local v4, ins:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, dbName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, f:Ljava/io/File;
    invoke-static {v4, v2}, Lcom/sdk/util/InitFuncs;->inputstreamtofile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0           #dbName:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #ins:Ljava/io/InputStream;
    :goto_0
    const-string v5, "offline"

    return-object v5

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 68
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 69
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, imei:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    .line 73
    :cond_0
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static initIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 51
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 52
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, imsi:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 56
    .local v0, dt:Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, random:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "99903"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, randomImsi:Ljava/lang/String;
    move-object v1, v3

    .line 61
    .end local v0           #dt:Ljava/util/Date;
    .end local v2           #random:Ljava/lang/String;
    .end local v3           #randomImsi:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static initLastTs(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 127
    const-string v2, "ts"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "lastts"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, ts:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initDB(Landroid/content/Context;)Ljava/lang/String;

    .line 132
    const-string v1, "offline"

    .line 134
    .end local v1           #ts:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static initModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 108
    .local v0, model:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    const-string v0, ""

    .line 111
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public static initPkgname(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, packageNames:Ljava/lang/String;
    return-object v0
.end method

.method public static inputstreamtofile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .parameter "ins"
    .parameter "file"

    .prologue
    .line 159
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v3, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 161
    .local v1, bytesRead:I
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 162
    .local v0, buffer:[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 165
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 166
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 170
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #os:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 163
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #os:Ljava/io/OutputStream;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeNewTs(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "newTs"
    .parameter "context"

    .prologue
    .line 176
    const-string v2, "ts"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastts"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method
