.class public abstract Lcom/android/mms/model/FileAttachmentModel;
.super Lcom/android/mms/model/Model;
.source "FileAttachmentModel.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Mms/file_attach"

.field public static final UNKNOWN_TYPE:Ljava/lang/String; = "unknown_type"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mData:[B

.field protected mFileName:Ljava/lang/String;

.field protected mSize:I

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/model/FileAttachmentModel;->initModelFromUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 101
    invoke-direct {p0}, Lcom/android/mms/model/FileAttachmentModel;->initAttachmentSize()V

    .line 102
    invoke-virtual {p0}, Lcom/android/mms/model/FileAttachmentModel;->checkContentRestriction()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "fileName"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    .line 111
    invoke-direct {p0}, Lcom/android/mms/model/FileAttachmentModel;->initAttachmentSize()V

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/model/FileAttachmentModel;->checkContentRestriction()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "context"
    .parameter "contentType"
    .parameter "fileName"
    .parameter "data"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 117
    if-nez p4, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    .line 124
    array-length v0, p4

    iput v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/model/FileAttachmentModel;->checkContentRestriction()V

    .line 126
    return-void
.end method

.method private initAttachmentSize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v5, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 477
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 480
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 481
    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_2

    .line 483
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 484
    .local v3, f:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v3           #f:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 492
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :cond_1
    return-void

    .line 486
    :cond_2
    :goto_0
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 487
    iget v5, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 492
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v5, "Mms/file_attach"

    const-string v6, "initAttachmentSize, file is not found??"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileAttachmentModel#initAttachmentSize() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 498
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 499
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Mms/file_attach"

    const-string v6, "initAttachmentSize, other exceptions"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileAttachmentModel#initAttachmentSize() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 459
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/FileAttachmentModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 464
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 469
    :goto_0
    iput-object v8, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 473
    return-void

    .line 466
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 467
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 432
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 433
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 440
    .end local v0           #extension:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const-string v2, "unknown_type"

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 444
    .end local v1           #index:I
    :cond_1
    return-void
.end method

.method private initModelFromUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 413
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/mms/model/FileAttachmentModel;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 420
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 429
    :cond_1
    return-void

    .line 416
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/mms/model/FileAttachmentModel;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v1           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/file_attach"

    const-string v3, "IllegalArgumentException caught while opening or reading stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of vcard is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isAnyAttachment(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 312
    const-string v0, "application/smil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string v0, "Mms/file_attach"

    const-string v1, "is isAnyAttachment type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtmType(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 3
    .parameter "part"

    .prologue
    .line 334
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 335
    .local v0, type:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "Mms/file_attach"

    const-string v2, "is HTML type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v1, 0x1

    .line 339
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOtherAttachment(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 3
    .parameter "part"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 302
    .local v1, type:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/model/FileAttachmentModel;->isAnyAttachment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const/4 v2, 0x1

    .line 305
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 5
    .parameter "part"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 383
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 385
    .local v0, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v0, :cond_4

    .line 386
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 387
    const-string v3, "Mms/file_attach"

    const-string v4, "FileAttachmentModel SupportAttachmentEnhance"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCard(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isOtherAttachment(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 393
    :cond_1
    :goto_0
    return v1

    .line 390
    :cond_2
    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCard(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    .line 393
    :cond_4
    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCard(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static isSupportedFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "contentType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 359
    .local v0, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v0, :cond_5

    .line 360
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v3

    if-ne v3, v2, :cond_3

    .line 361
    const-string v3, "Mms/file_attach"

    const-string v4, "FileAttachmentModel SupportAttachmentEnhance"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v3, "text/x-vCard"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/x-vCalendar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "application/octet-stream"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/android/mms/model/FileAttachmentModel;->isAnyAttachment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 371
    :cond_3
    const-string v3, "text/x-vCard"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "text/x-vCalendar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 375
    :cond_5
    const-string v3, "text/x-vCard"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "text/x-vCalendar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public static isTxtType(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 3
    .parameter "part"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 324
    .local v0, type:Ljava/lang/String;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "Mms/file_attach"

    const-string v2, "is TEXT type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 9
    .parameter "part"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, filename:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 248
    .local v5, type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 249
    .local v1, cl:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 250
    .local v4, name:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 251
    .local v0, ci:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 253
    .local v3, fn:[B
    if-eqz v1, :cond_3

    .line 254
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 255
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCalendar"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, ".vcs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v6, v7

    .line 274
    :cond_2
    :goto_0
    return v6

    .line 258
    :cond_3
    if-eqz v4, :cond_6

    .line 259
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 260
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCalendar"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_4
    const-string v8, ".vcs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_5
    move v6, v7

    goto :goto_0

    .line 263
    :cond_6
    if-eqz v0, :cond_9

    .line 264
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 265
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCalendar"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_7
    const-string v8, ".vcs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_8
    move v6, v7

    goto :goto_0

    .line 268
    :cond_9
    if-eqz v3, :cond_2

    .line 269
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 270
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCalendar"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_a
    const-string v8, ".vcs"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_b
    move v6, v7

    goto :goto_0
.end method

.method public static isVCard(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 9
    .parameter "part"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, filename:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 214
    .local v5, type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 215
    .local v1, cl:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 216
    .local v4, name:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 217
    .local v0, ci:[B
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 219
    .local v3, fn:[B
    if-eqz v1, :cond_3

    .line 220
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 221
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, ".vcf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v6, v7

    .line 240
    :cond_2
    :goto_0
    return v6

    .line 224
    :cond_3
    if-eqz v4, :cond_6

    .line 225
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 226
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_4
    const-string v8, ".vcf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_5
    move v6, v7

    goto :goto_0

    .line 229
    :cond_6
    if-eqz v0, :cond_9

    .line 230
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 231
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_7
    const-string v8, ".vcf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_8
    move v6, v7

    goto :goto_0

    .line 234
    :cond_9
    if-eqz v3, :cond_2

    .line 235
    new-instance v2, Ljava/lang/String;

    .end local v2           #filename:Ljava/lang/String;
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 236
    .restart local v2       #filename:Ljava/lang/String;
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "application/oct-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "application/octet-stream"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_a
    const-string v8, ".vcf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_b
    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 182
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 184
    .local v1, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const-string v2, "Mms/file_attach"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In add slideshow attach mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v1, :cond_1

    .line 188
    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/mms/model/ContentRestriction;->checkFileAttachmentContentType(Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/mms/model/ContentRestriction;->checkFileAttachmentContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAttachSize()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 145
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    .end local v0           #data:[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSupportFormat()Z
    .locals 3

    .prologue
    .line 286
    const-string v0, "Mms/file_attach"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFormat() mContentType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFile()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnknownAttachment()Z
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown_type"

    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVCalendar()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".vcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    const-string v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isVCard()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    const-string v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mData:[B

    .line 163
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileAttachmentModel [mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
