.class final Ltmsdk/fg/module/qscanner/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ER:Ltmsdk/fg/module/qscanner/c;


# instance fields
.field private final EN:Ljava/lang/String;

.field private EO:I

.field private EP:Landroid/os/Bundle;

.field private EQ:Z

.field private mContext:Landroid/content/Context;

.field private mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "cache_4.3_03"

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/c;->EN:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/c;->EQ:Z

    .line 51
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/c;->hA()V

    .line 53
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/c;->hz()V

    .line 54
    return-void
.end method

.method private b(Ljava/lang/String;ILtmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 2
    .parameter "path"
    .parameter "apkType"
    .parameter "cacheInfo"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 198
    :cond_1
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 199
    .local v0, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    .line 200
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    .line 201
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    .line 202
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    .line 204
    iput-object p1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    .line 205
    iput p2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    .line 206
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    .line 207
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    .line 208
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    .line 209
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    .line 210
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 212
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 213
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 214
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    .line 215
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 216
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    .line 217
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 218
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    .line 220
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 221
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    .line 222
    iget-object v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    .line 223
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    .line 224
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    .line 225
    iget-boolean v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    iput-boolean v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    .line 226
    iget-boolean v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    iput-boolean v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    .line 227
    iget-boolean v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    iput-boolean v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    .line 228
    iget-boolean v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    iput-boolean v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    .line 229
    iget v1, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    goto :goto_0
.end method

.method private hA()V
    .locals 10

    .prologue
    .line 89
    const/4 v5, 0x0

    .line 90
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 91
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 93
    .local v6, parcel:Landroid/os/Parcel;
    :try_start_0
    iget-object v8, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    const-string v9, "qscan.cache"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 94
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    .line 95
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v7, -0x1

    .line 96
    .local v7, readLen:I
    const/16 v8, 0x400

    :try_start_1
    new-array v2, v8, [B

    .line 97
    .local v2, buf:[B
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 98
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    .end local v2           #buf:[B
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 113
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #readLen:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, e:Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v8, "QScanCacheManager"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz v5, :cond_0

    .line 117
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 122
    .end local v4           #e:Ljava/lang/Throwable;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 129
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 131
    const/4 v6, 0x0

    .line 134
    :cond_2
    :goto_4
    return-void

    .line 101
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v7       #readLen:I
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v3

    .line 102
    .local v3, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 103
    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 104
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    const-string v8, "cache_4.3_03"

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v8

    if-nez v8, :cond_7

    .line 115
    if-eqz v5, :cond_4

    .line 117
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 122
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 124
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 129
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 130
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 131
    const/4 v6, 0x0

    :cond_6
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 118
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    .line 119
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 125
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 108
    .end local v4           #e:Ljava/io/IOException;
    :cond_7
    :try_start_8
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Ltmsdk/fg/module/qscanner/c;->mVersion:I

    .line 109
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Ltmsdk/fg/module/qscanner/c;->EO:I

    .line 110
    iget-object v8, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 115
    if-eqz v5, :cond_8

    .line 117
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 122
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 124
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 129
    :cond_9
    :goto_8
    if-eqz v6, :cond_d

    .line 130
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 131
    const/4 v6, 0x0

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 118
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v4

    .line 119
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 125
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 118
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buf:[B
    .end local v3           #data:[B
    .end local v7           #readLen:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, e:Ljava/lang/Throwable;
    :catch_5
    move-exception v4

    .line 119
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 125
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 115
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_9
    if-eqz v5, :cond_a

    .line 117
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 122
    :cond_a
    :goto_a
    if-eqz v0, :cond_b

    .line 124
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 129
    :cond_b
    :goto_b
    if-eqz v6, :cond_c

    .line 130
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 131
    const/4 v6, 0x0

    :cond_c
    throw v8

    .line 118
    :catch_7
    move-exception v4

    .line 119
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 125
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 115
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #readLen:I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .line 112
    .end local v7           #readLen:I
    :catch_9
    move-exception v4

    goto/16 :goto_1

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buf:[B
    .restart local v3       #data:[B
    .restart local v7       #readLen:I
    :cond_d
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method private hB()V
    .locals 8

    .prologue
    .line 137
    iget-boolean v5, p0, Ltmsdk/fg/module/qscanner/c;->EQ:Z

    if-nez v5, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v3, 0x0

    .line 141
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 143
    .local v4, parcel:Landroid/os/Parcel;
    :try_start_0
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    const-string v6, "qscan.cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 145
    const-string v5, "cache_4.3_03"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v5, p0, Ltmsdk/fg/module/qscanner/c;->mVersion:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v5, p0, Ltmsdk/fg/module/qscanner/c;->EO:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v5, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 150
    .local v0, data:[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v2

    .line 151
    .local v2, encryptData:[B
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 157
    if-eqz v3, :cond_2

    .line 159
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 166
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #encryptData:[B
    :catch_1
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    if-eqz v3, :cond_3

    .line 159
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 166
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 154
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    if-eqz v3, :cond_4

    .line 159
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 164
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 166
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 157
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    .line 159
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 164
    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    .line 165
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 166
    const/4 v4, 0x0

    :cond_6
    throw v5

    .line 160
    :catch_5
    move-exception v1

    .line 161
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static declared-synchronized hx()Ltmsdk/fg/module/qscanner/c;
    .locals 2

    .prologue
    .line 57
    const-class v1, Ltmsdk/fg/module/qscanner/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ltmsdk/fg/module/qscanner/c;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/c;-><init>()V

    sput-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;

    .line 60
    :cond_0
    sget-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized hy()V
    .locals 2

    .prologue
    .line 64
    const-class v1, Ltmsdk/fg/module/qscanner/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/c;->hB()V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/fg/module/qscanner/c;->ER:Ltmsdk/fg/module/qscanner/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit v1

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hz()V
    .locals 5

    .prologue
    .line 72
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    const-string v3, "qv_base.amf"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, amfFile:Ljava/lang/String;
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/c;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Ltmsdk/fg/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;

    move-result-object v1

    .line 74
    .local v1, clientInfo:Ltmsdkobf/ck;
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Ltmsdkobf/ck;->j()I

    move-result v2

    iget v3, p0, Ltmsdk/fg/module/qscanner/c;->EO:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ltmsdkobf/ck;->getVersion()I

    move-result v2

    iget v3, p0, Ltmsdk/fg/module/qscanner/c;->mVersion:I

    if-eq v2, v3, :cond_1

    .line 76
    :cond_0
    invoke-virtual {v1}, Ltmsdkobf/ck;->j()I

    move-result v2

    iput v2, p0, Ltmsdk/fg/module/qscanner/c;->EO:I

    .line 77
    invoke-virtual {v1}, Ltmsdkobf/ck;->getVersion()I

    move-result v2

    iput v2, p0, Ltmsdk/fg/module/qscanner/c;->mVersion:I

    .line 78
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    .line 83
    :cond_1
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 84
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    .line 86
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JI)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 3
    .parameter "pkgName"
    .parameter "path"
    .parameter "size"
    .parameter "apkType"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 174
    .local v0, cacheInfo:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-direct {p0, p2, p5, v0}, Ltmsdk/fg/module/qscanner/c;->b(Ljava/lang/String;ILtmsdk/common/module/qscanner/QScanResultEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v1

    .line 176
    .end local v0           #cacheInfo:Ltmsdk/common/module/qscanner/QScanResultEntity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 2
    .parameter "pkgName"
    .parameter "size"
    .parameter "cache"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/c;->EQ:Z

    .line 191
    :cond_0
    return-void
.end method

.method public a(Ltmsdk/fg/module/qscanner/ApkKey;Ltmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 3
    .parameter "key"
    .parameter "cache"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/c;->EP:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/fg/module/qscanner/c;->EQ:Z

    .line 184
    :cond_0
    return-void
.end method
