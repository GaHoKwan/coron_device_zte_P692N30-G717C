.class public Lcom/mediatek/ja3m/ResourceDataSource;
.super Ljava/lang/Object;
.source "ResourceDataSource.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ResourceDataSource"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/mediatek/ja3m/ResourceDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ja3m/ResourceDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "resources"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    .line 76
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 182
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 197
    const/4 v1, 0x1

    .line 201
    .local v1, flag:Z
    iget-object v4, p0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 203
    .local v2, id:I
    if-nez v2, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 216
    :goto_0
    return v1

    .line 206
    :cond_0
    const/4 v3, 0x0

    .line 208
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 212
    invoke-direct {p0, v3}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, v3}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v3}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method public get(Ljava/lang/String;)[B
    .locals 16
    .parameter "name"

    .prologue
    .line 86
    const/4 v4, 0x0

    .line 90
    .local v4, data:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 92
    .local v7, id:I
    if-lez v7, :cond_8

    .line 93
    const/4 v8, 0x0

    .line 94
    .local v8, inputStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 96
    .local v9, outputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 98
    const/4 v2, -0x1

    .line 99
    .local v2, byteCount:I
    const/4 v3, 0x0

    .line 102
    .local v3, bytesRead:I
    const/4 v5, 0x0

    .line 104
    .local v5, desc:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ja3m/ResourceDataSource;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    long-to-int v2, v12

    .line 109
    if-eqz v5, :cond_0

    .line 110
    :try_start_2
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 115
    :cond_0
    :goto_0
    int-to-long v12, v2

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 116
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource estimation start: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 126
    const/4 v11, 0x0

    .line 127
    .local v11, totalBytesRead:I
    if-lez v2, :cond_4

    .line 128
    new-array v1, v2, [B

    .line 129
    .local v1, buffer:[B
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    .end local v9           #outputStream:Ljava/io/ByteArrayOutputStream;
    .local v10, outputStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v8, v1, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 133
    if-lez v3, :cond_2

    .line 134
    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 135
    add-int/2addr v11, v3

    .line 137
    :cond_2
    const/4 v12, -0x1

    if-ne v3, v12, :cond_1

    .line 139
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    move-object v9, v10

    .line 147
    .end local v1           #buffer:[B
    .end local v10           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_4
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource of estimated size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Bytes read: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 169
    .end local v11           #totalBytesRead:I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    .end local v2           #byteCount:I
    .end local v3           #bytesRead:I
    .end local v5           #desc:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #inputStream:Ljava/io/InputStream;
    .end local v9           #outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_3
    return-object v4

    .line 106
    .restart local v2       #byteCount:I
    .restart local v3       #bytesRead:I
    .restart local v5       #desc:Landroid/content/res/AssetFileDescriptor;
    .restart local v8       #inputStream:Ljava/io/InputStream;
    .restart local v9       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    .line 107
    .local v6, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v5, :cond_0

    .line 110
    :try_start_6
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 163
    .end local v2           #byteCount:I
    .end local v3           #bytesRead:I
    .end local v5           #desc:Landroid/content/res/AssetFileDescriptor;
    .end local v6           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v6

    .line 164
    .local v6, ex:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource loading failed due to IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 109
    .end local v6           #ex:Ljava/io/IOException;
    .restart local v2       #byteCount:I
    .restart local v3       #bytesRead:I
    .restart local v5       #desc:Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_3

    .line 110
    :try_start_8
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 166
    .end local v2           #byteCount:I
    .end local v3           #bytesRead:I
    .end local v5           #desc:Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v6

    .line 167
    .local v6, ex:Landroid/content/res/Resources$NotFoundException;
    :goto_5
    :try_start_9
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource of incorrect type to stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 142
    .end local v6           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #byteCount:I
    .restart local v3       #bytesRead:I
    .restart local v5       #desc:Landroid/content/res/AssetFileDescriptor;
    .restart local v11       #totalBytesRead:I
    :cond_4
    :try_start_a
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource estimated size is 0; cannot read: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 169
    .end local v2           #byteCount:I
    .end local v3           #bytesRead:I
    .end local v5           #desc:Landroid/content/res/AssetFileDescriptor;
    .end local v11           #totalBytesRead:I
    :catchall_1
    move-exception v12

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/ja3m/ResourceDataSource;->closeQuietly(Ljava/io/Closeable;)V

    throw v12

    .line 151
    .restart local v2       #byteCount:I
    .restart local v3       #bytesRead:I
    .restart local v5       #desc:Landroid/content/res/AssetFileDescriptor;
    :cond_5
    :try_start_b
    new-array v4, v2, [B

    .line 152
    const/4 v12, 0x0

    invoke-virtual {v8, v4, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 156
    sget-boolean v12, Lcom/mediatek/ja3m/ResourceDataSource;->$assertionsDisabled:Z

    if-nez v12, :cond_6

    if-eq v3, v2, :cond_6

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 157
    :cond_6
    sget-boolean v12, Lcom/mediatek/ja3m/ResourceDataSource;->$assertionsDisabled:Z

    if-nez v12, :cond_7

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 159
    :cond_7
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource of known size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Bytes read: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 173
    .end local v2           #byteCount:I
    .end local v3           #bytesRead:I
    .end local v5           #desc:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #inputStream:Ljava/io/InputStream;
    .end local v9           #outputStream:Ljava/io/ByteArrayOutputStream;
    :cond_8
    const-string v12, "ResourceDataSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resource not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 169
    .restart local v1       #buffer:[B
    .restart local v2       #byteCount:I
    .restart local v3       #bytesRead:I
    .restart local v5       #desc:Landroid/content/res/AssetFileDescriptor;
    .restart local v8       #inputStream:Ljava/io/InputStream;
    .restart local v10       #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #totalBytesRead:I
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 166
    .end local v9           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v6

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 163
    .end local v9           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v6

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method
