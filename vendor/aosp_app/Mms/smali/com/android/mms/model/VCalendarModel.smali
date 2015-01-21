.class public Lcom/android/mms/model/VCalendarModel;
.super Lcom/android/mms/model/FileAttachmentModel;
.source "VCalendarModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCalendarModel"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/model/FileAttachmentModel;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "text/x-vCalendar"

    iput-object v0, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    .line 80
    invoke-direct {p0}, Lcom/android/mms/model/VCalendarModel;->initFromUri()V

    .line 81
    invoke-direct {p0}, Lcom/android/mms/model/VCalendarModel;->initAttachmentSize()V

    .line 82
    invoke-virtual {p0}, Lcom/android/mms/model/FileAttachmentModel;->checkContentRestriction()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/model/FileAttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    return-void
.end method

.method private initAttachmentSize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 126
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    if-eqz v7, :cond_1

    .line 132
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_1
    iget v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    if-lez v2, :cond_4

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 131
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 132
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, e:Ljava/lang/Exception;
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCalendar#initAttachmentSize() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v10, 0x0

    .line 144
    .local v10, input:Ljava/io/InputStream;
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 145
    instance-of v2, v10, Ljava/io/FileInputStream;

    if-eqz v2, :cond_6

    .line 147
    move-object v0, v10

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    .line 148
    .local v9, f:Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    .end local v9           #f:Ljava/io/FileInputStream;
    :cond_5
    if-eqz v10, :cond_2

    .line 156
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 159
    :catch_1
    move-exception v8

    .line 160
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v2, "VCalendarModel"

    const-string v3, "initAttachmentSize, file is not found??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCalendar#initAttachmentSize() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_1
    const/4 v2, -0x1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 151
    iget v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 155
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_7

    .line 156
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 162
    :catch_2
    move-exception v8

    .line 163
    .local v8, e:Ljava/io/IOException;
    const-string v2, "VCalendarModel"

    const-string v3, "initAttachmentSize, other exceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCalendar#initAttachmentSize() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initFromFile()V
    .locals 5

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 114
    .end local v0           #extension:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "unknown_type"

    iput-object v2, p0, Lcom/android/mms/model/FileAttachmentModel;->mContentType:Ljava/lang/String;

    .line 118
    .end local v1           #index:I
    :cond_1
    return-void
.end method

.method private initFromUri()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/FileAttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/mms/model/VCalendarModel;->initFromFile()V

    .line 96
    :cond_0
    const-string v3, "yyyyMMdd_hhmmss"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, timestamp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".vcs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/FileAttachmentModel;->mFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 99
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #timestamp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "VCalendarModel"

    const-string v4, "IllegalArgumentException caught while opening or reading stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Type of vcard is unknown."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
