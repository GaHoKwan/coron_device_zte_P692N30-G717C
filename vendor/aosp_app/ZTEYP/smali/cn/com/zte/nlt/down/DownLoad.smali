.class public Lcn/com/zte/nlt/down/DownLoad;
.super Ljava/lang/Object;
.source "DownLoad.java"


# static fields
.field private static final DOWNLOAD_PARAMETERS_FOMAT:Ljava/lang/String; = "?Model=%s&Imei=%s&TVer=%s&Url=%s"

.field private static final Download:Ljava/lang/String; = "Download"

.field private static final TMP_DIR_PATH:Ljava/lang/String; = "/data/data/cn.com.zte.yp/tmpfiles/"

.field private static final UPGRADE_INFO:Ljava/lang/String; = "UpgradeInfo"

.field private static final UPGRADE_INFO_PARAMETERS_FOMAT:Ljava/lang/String; = "?Model=%s&Imei=%s&Ver=%s&DbVer=%s&Lang=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTmpDirPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/cn.com.zte.yp/tmpfiles/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 187
    :goto_0
    return-object v1

    .line 184
    :cond_0
    invoke-static {v1}, Lcn/com/zte/nlt/utils/FileUtil;->delDir(Ljava/lang/String;)Z

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private getTmpFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 164
    const-string v1, "/data/data/cn.com.zte.yp/tmpfiles/"

    .line 165
    .local v1, dirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 169
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 174
    :cond_1
    return-object v3
.end method

.method private parserJSON(Ljava/lang/String;)Lcn/com/zte/nlt/down/UpdatePackageInfo;
    .locals 13
    .parameter "content"

    .prologue
    const/4 v10, 0x0

    .line 54
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v9, root:Lorg/json/JSONObject;
    const-string v11, "new_package"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, newPackage:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newPackage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 57
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 58
    :cond_0
    const-string v11, "current db is the newest pacakge."

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object v0, v10

    .line 81
    .end local v7           #newPackage:Ljava/lang/String;
    .end local v9           #root:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 61
    .restart local v7       #newPackage:Ljava/lang/String;
    .restart local v9       #root:Lorg/json/JSONObject;
    :cond_1
    const-string v11, "packageinfo"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 62
    .local v8, pkgNode:Lorg/json/JSONObject;
    if-nez v8, :cond_2

    move-object v0, v10

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    const-string v11, "description"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, description:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "description="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 67
    const-string v11, "date"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, updateTime:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 69
    const-string v11, "url"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, url:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 71
    const-string v11, "version"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, version:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 73
    const-string v11, "size"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, size:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcn/com/zte/nlt/down/UpdatePackageInfo;

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/nlt/down/UpdatePackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .local v0, pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    invoke-virtual {v0}, Lcn/com/zte/nlt/down/UpdatePackageInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    .end local v0           #pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    .end local v1           #version:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #updateTime:Ljava/lang/String;
    .end local v5           #size:I
    .end local v7           #newPackage:Ljava/lang/String;
    .end local v8           #pkgNode:Lorg/json/JSONObject;
    .end local v9           #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 79
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v10

    .line 81
    goto/16 :goto_0
.end method

.method private replaceOrgDbFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "dbFilePath"

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/cn.com.zte.yp/databases/numberinfo.db"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, newDbFile:Ljava/io/File;
    invoke-static {v1, v0}, Lcn/com/zte/nlt/utils/FileUtil;->coypFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"
    .parameter "outDirPath"

    .prologue
    .line 142
    new-instance v7, Lcn/com/zte/nlt/utils/Zip;

    invoke-direct {v7}, Lcn/com/zte/nlt/utils/Zip;-><init>()V

    .line 144
    .local v7, zipUtils:Lcn/com/zte/nlt/utils/Zip;
    :try_start_0
    invoke-virtual {v7, p1, p2}, Lcn/com/zte/nlt/utils/Zip;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 147
    .local v6, listFiles:[Ljava/io/File;
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 148
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".db"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 155
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #listFiles:[Ljava/io/File;
    :goto_1
    return-object v8

    .line 147
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #listFiles:[Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #listFiles:[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    const-string v8, ""

    goto :goto_1
.end method


# virtual methods
.method public downloadPackage(Lcn/com/zte/nlt/down/ClientInfo;Ljava/lang/String;Lcn/com/zte/nlt/down/IDownloadCallback;)Z
    .locals 11
    .parameter "client"
    .parameter "downUrl"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getServerHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Download"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?Model=%s&Imei=%s&TVer=%s&Url=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getModel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getDbVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, url:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcn/com/zte/nlt/down/DownLoad;->getTmpFilePath()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, tmpDownloadfilePath:Ljava/lang/String;
    invoke-static {v5, v3, p3}, Lcn/com/zte/nlt/down/HttpUtils;->httpConnect2File(Ljava/lang/String;Ljava/lang/String;Lcn/com/zte/nlt/down/IDownloadCallback;)I

    move-result v0

    .line 102
    .local v0, len:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 103
    const-string v6, "download failed. len is -1."

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 118
    :goto_0
    return v1

    .line 106
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download success. len is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcn/com/zte/nlt/down/DownLoad;->getTmpDirPath()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, tmpOutDir:Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcn/com/zte/nlt/down/DownLoad;->unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, tmpDbFilePath:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const-string v6, "download failed. unzip file failed."

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 114
    :cond_1
    invoke-direct {p0, v2}, Lcn/com/zte/nlt/down/DownLoad;->replaceOrgDbFile(Ljava/lang/String;)Z

    move-result v1

    .line 116
    .local v1, ret:Z
    invoke-static {v4}, Lcn/com/zte/nlt/utils/FileUtil;->delDir(Ljava/lang/String;)Z

    .line 117
    invoke-static {v3}, Lcn/com/zte/nlt/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUpgradePackgeInfo(Lcn/com/zte/nlt/down/ClientInfo;)Lcn/com/zte/nlt/down/UpdatePackageInfo;
    .locals 7
    .parameter "client"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getServerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UpgradeInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?Model=%s&Imei=%s&Ver=%s&DbVer=%s&Lang=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getDbVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcn/com/zte/nlt/down/ClientInfo;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcn/com/zte/nlt/down/HttpUtils;->httpConnect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/com/zte/nlt/down/DownLoad;->parserJSON(Ljava/lang/String;)Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v2

    return-object v2
.end method
