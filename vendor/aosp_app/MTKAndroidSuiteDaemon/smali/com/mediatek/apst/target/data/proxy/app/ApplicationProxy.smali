.class public final Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "ApplicationProxy.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 95
    const-string v0, "ApplicationProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private getEntity(Landroid/content/pm/PackageInfo;II)Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .locals 11
    .parameter "pkg"
    .parameter "iconW"
    .parameter "iconH"

    .prologue
    const/4 v9, 0x0

    .line 139
    move v6, p2

    .line 140
    .local v6, destIconW:I
    move v5, p3

    .line 141
    .local v5, destIconH:I
    if-nez p1, :cond_0

    move-object v8, v9

    .line 199
    :goto_0
    return-object v8

    .line 145
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 146
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1

    move-object v8, v9

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    new-instance v8, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    invoke-direct {v8}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;-><init>()V

    .line 151
    .local v8, entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    iget-object v10, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setPackageName(Ljava/lang/String;)V

    .line 152
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setSdkVersion(I)V

    .line 153
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setUid(I)V

    .line 154
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    .line 155
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setType(I)V

    .line 159
    :goto_1
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setVersionName(Ljava/lang/String;)V

    .line 160
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setRequestedPermissions([Ljava/lang/String;)V

    .line 161
    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setDataDirectory(Ljava/lang/String;)V

    .line 162
    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setSourceDirectory(Ljava/lang/String;)V

    .line 164
    const-wide/16 v1, 0x0

    .line 165
    .local v1, apkSize:J
    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 171
    .end local v0           #apkFile:Ljava/io/File;
    :cond_2
    invoke-virtual {v8, v1, v2}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setApkSize(J)V

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, cs:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setLabel(Ljava/lang/String;)V

    .line 180
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/ApplicationInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_7

    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setDescription(Ljava/lang/String;)V

    .line 187
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 188
    .local v7, drbIcon:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 190
    if-gez v6, :cond_3

    .line 191
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 193
    :cond_3
    if-gez v5, :cond_4

    .line 194
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 196
    :cond_4
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-static {v7, v6, v5, v9, v10}, Lcom/mediatek/apst/target/util/GraphicUtils;->drawable2Bytes(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setIconBytes([B)V

    goto/16 :goto_0

    .line 157
    .end local v1           #apkSize:J
    .end local v4           #cs:Ljava/lang/CharSequence;
    .end local v7           #drbIcon:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setType(I)V

    goto :goto_1

    .line 178
    .restart local v1       #apkSize:J
    .restart local v4       #cs:Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    const-class v1, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    .line 121
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fastGetAllApplications(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;II)V
    .locals 15
    .parameter "consumer"
    .parameter "byteBuffer"
    .parameter "destIconW"
    .parameter "destIconH"

    .prologue
    .line 215
    move-object/from16 v3, p2

    .line 216
    .local v3, buffer:Ljava/nio/ByteBuffer;
    if-nez p1, :cond_0

    .line 217
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "Consumer is null."

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 222
    :cond_0
    if-nez v3, :cond_1

    .line 223
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "Byte buffer should not be null. Auto allocate 800000 bytes now"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const v12, 0xc3500

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 230
    :cond_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 232
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, itemCount:I
    const/4 v2, 0x0

    .line 235
    .local v2, blockNo:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getApplicationsCount()I

    move-result v11

    .line 236
    .local v11, totalNo:I
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 238
    .local v9, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0xc8

    if-le v12, v13, :cond_2

    .line 239
    const v12, 0xc3500

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    mul-int/2addr v12, v13

    div-int/lit16 v12, v12, 0xc8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 241
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 244
    .local v8, pkg:Landroid/content/pm/PackageInfo;
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v8, v0, v1}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getEntity(Landroid/content/pm/PackageInfo;II)Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    move-result-object v5

    .line 245
    .local v5, entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    if-eqz v5, :cond_3

    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 250
    invoke-virtual {v3}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 252
    :try_start_0
    invoke-virtual {v5, v3}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->writeRaw(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v4

    .line 254
    .local v4, e:Ljava/nio/BufferOverflowException;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "BufferOverflowException"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 258
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 260
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v12

    new-array v10, v12, [B

    .line 261
    .local v10, raw:[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 262
    add-int/2addr v2, v7

    .line 263
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2, v11}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 265
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 267
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 268
    const/4 v7, 0x0

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v4           #e:Ljava/nio/BufferOverflowException;
    .end local v5           #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .end local v8           #pkg:Landroid/content/pm/PackageInfo;
    .end local v10           #raw:[B
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 275
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v12

    new-array v10, v12, [B

    .line 276
    .restart local v10       #raw:[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 277
    add-int/2addr v2, v7

    .line 278
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2, v11}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 279
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method public fastGetAllApps2Backup(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;II)V
    .locals 15
    .parameter "consumer"
    .parameter "byteBuffer"
    .parameter "destIconW"
    .parameter "destIconH"

    .prologue
    .line 296
    move-object/from16 v3, p2

    .line 297
    .local v3, buffer:Ljava/nio/ByteBuffer;
    if-nez p1, :cond_0

    .line 298
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "Consumer is null."

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 303
    :cond_0
    if-nez v3, :cond_1

    .line 304
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "Byte buffer should not be null. Auto allocate 800000 bytes now"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    const v12, 0xc3500

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 311
    :cond_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 313
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 314
    const/4 v7, 0x0

    .line 315
    .local v7, itemCount:I
    const/4 v2, 0x0

    .line 316
    .local v2, blockNo:I
    const/4 v11, 0x0

    .line 317
    .local v11, totalNo:I
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 319
    .local v9, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 320
    .local v8, pkg:Landroid/content/pm/PackageInfo;
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v8, v0, v1}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getEntity(Landroid/content/pm/PackageInfo;II)Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    move-result-object v5

    .line 321
    .local v5, entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    if-eqz v5, :cond_2

    .line 324
    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->getType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 325
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 328
    .end local v5           #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .end local v8           #pkg:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 329
    .restart local v8       #pkg:Landroid/content/pm/PackageInfo;
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v8, v0, v1}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getEntity(Landroid/content/pm/PackageInfo;II)Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    move-result-object v5

    .line 330
    .restart local v5       #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->getType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 334
    add-int/lit8 v7, v7, 0x1

    .line 336
    invoke-virtual {v3}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 338
    :try_start_0
    invoke-virtual {v5, v3}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->writeRaw(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 339
    :catch_0
    move-exception v4

    .line 340
    .local v4, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {v3}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 341
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v12

    new-array v10, v12, [B

    .line 344
    .local v10, raw:[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 345
    add-int/2addr v2, v7

    .line 346
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2, v11}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 348
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 350
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 351
    const/4 v7, 0x0

    goto :goto_2

    .line 355
    .end local v4           #e:Ljava/nio/BufferOverflowException;
    .end local v5           #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .end local v8           #pkg:Landroid/content/pm/PackageInfo;
    .end local v10           #raw:[B
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 356
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 357
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v12

    new-array v10, v12, [B

    .line 358
    .restart local v10       #raw:[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 359
    add-int/2addr v2, v7

    .line 360
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v2, v11}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 361
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method public getApplicationsCount()I
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApplicationsForUid(I)Ljava/util/ArrayList;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/app/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v2, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/app/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, pkgNames:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 379
    .local v7, pkgName:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 381
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {p0, v6, v9, v10}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getEntity(Landroid/content/pm/PackageInfo;II)Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    move-result-object v3

    .line 382
    .local v3, entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    const/4 v6, 0x0

    .line 384
    if-nez v3, :cond_0

    .line 376
    .end local v3           #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .restart local v3       #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .restart local v6       #pkg:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    .end local v3           #entity:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 395
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_1
    return-object v2
.end method
