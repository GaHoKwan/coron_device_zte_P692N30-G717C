.class public Lcom/zte/aliveupdate/CustomConfig;
.super Ljava/lang/Object;
.source "CustomConfig.java"


# static fields
.field public static final CHINA_MOBILE_CONFIG:Ljava/lang/String; = "china_mobile_config.xml"

.field public static final CLOUD_HUB_PACKAGE:Ljava/lang/String; = "com.zte.cloudhub"

.field public static final CLOUD_HUB_RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final DEFAULT_CONFIG:Ljava/lang/String; = "default_config.xml"

.field public static final USES_CUSTOM_CONFIG:Ljava/lang/String; = "uses_custom_config.xml"

.field private static customConfig:Lcom/zte/aliveupdate/CustomConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/zte/aliveupdate/CustomConfig;

    invoke-direct {v0}, Lcom/zte/aliveupdate/CustomConfig;-><init>()V

    sput-object v0, Lcom/zte/aliveupdate/CustomConfig;->customConfig:Lcom/zte/aliveupdate/CustomConfig;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDefault()Lcom/zte/aliveupdate/CustomConfig;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/zte/aliveupdate/CustomConfig;->customConfig:Lcom/zte/aliveupdate/CustomConfig;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "init"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/CustomConfig;->isConfigSharePrefFileExsit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "aliveupdae_config.xml is exist"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/CustomConfig;->isUsesCustomCofigExsit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "uses_custom_config.xml is exist"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "uses_custom_config.xml"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aliveupdate/CustomConfig;->saveCustomConfigtoSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/aliveupdate/CustomConfig;->isChinaMobileModelCustom(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is China Mobile Custom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "china_mobile_config.xml"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aliveupdate/CustomConfig;->saveCustomConfigtoSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "default_config.xml"

    invoke-virtual {p0, p1, v0}, Lcom/zte/aliveupdate/CustomConfig;->saveCustomConfigtoSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isChinaMobileModelCustom(Ljava/lang/String;)Z
    .locals 4
    .parameter "model"

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZTE"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, phoneName:Ljava/lang/String;
    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isCloudHubRecommandExsit(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 94
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.zte.cloudhub"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 95
    .local v3, pckgInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 96
    .local v2, metaData:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 97
    const-string v6, "Cloudhub not have meta-data"

    invoke-static {p0, v6}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v5

    .line 113
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v3           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 100
    .restart local v2       #metaData:Landroid/os/Bundle;
    .restart local v3       #pckgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v6, "recommend"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    const-string v6, "Cloudhub not have meta-data:recommand"

    invoke-static {p0, v6}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v5

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    const-string v6, "recommend"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, b:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cloudhub not have meta-data:recommand is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #b:Z
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v3           #pckgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Cloudhub is not installed"

    invoke-static {p0, v6}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v5

    .line 113
    goto :goto_0
.end method

.method public isConfigSharePrefFileExsit(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    const-string v1, "aliveupdate_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isUsesCustomCofigExsit(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, ins:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "uses_custom_config.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, v1}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "uses_custom_config.xml is not exsit"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, v1}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v1}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    throw v2
.end method

.method public saveCustomConfigtoSharedPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "customName"

    .prologue
    .line 121
    const-string v8, ""

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 122
    .local v6, sharedDri:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 124
    const-string v8, "aliveupdate_config"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 127
    .local v7, sharedfile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :goto_0
    const/4 v2, 0x0

    .line 135
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 138
    .local v4, ins:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 141
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 142
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 144
    .local v5, length:I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 145
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 150
    .end local v0           #buffer:[B
    .end local v5           #length:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 152
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    invoke-direct {p0, v2}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    .line 161
    invoke-direct {p0, v4}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    .line 165
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 128
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #ins:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 130
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    .restart local v5       #length:I
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    invoke-direct {p0, v3}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    .line 161
    invoke-direct {p0, v4}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 162
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 153
    .end local v0           #buffer:[B
    .end local v5           #length:I
    :catch_2
    move-exception v1

    .line 155
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    invoke-direct {p0, v2}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    .line 161
    invoke-direct {p0, v4}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    goto :goto_3

    .line 160
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    invoke-direct {p0, v2}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    .line 161
    invoke-direct {p0, v4}, Lcom/zte/aliveupdate/CustomConfig;->close(Ljava/io/Closeable;)V

    throw v8

    .line 160
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 153
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 150
    :catch_4
    move-exception v1

    goto :goto_2
.end method
