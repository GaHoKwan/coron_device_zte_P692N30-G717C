.class public Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
.super Ljava/lang/Object;
.source "RandomAccessFileOrArray.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field arrayIn:[B

.field arrayInPtr:J

.field back:B

.field filename:Ljava/lang/String;

.field isBack:Z

.field plainRandomAccess:Z

.field rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

.field private startOffset:J

.field trf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 224
    iget-object v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 226
    iget-wide v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 227
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 203
    invoke-static {p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    sget-boolean v1, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "filename"
    .parameter "forceRead"
    .parameter "plainRandomAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 77
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 91
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    .line 94
    const-string v4, "file:/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "jar:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "wsjar:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "wsjar:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vfszip:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 103
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 107
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    throw v4

    .line 111
    .end local v1           #is:Ljava/io/InputStream;
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 112
    .restart local v1       #is:Ljava/io/InputStream;
    if-nez v1, :cond_3

    .line 113
    new-instance v4, Ljava/io/IOException;

    const-string v5, "1.not.found.as.file.or.resource"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_3
    :try_start_3
    invoke-static {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    throw v4

    .line 123
    .end local v1           #is:Ljava/io/InputStream;
    :cond_4
    if-eqz p2, :cond_6

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, s:Ljava/io/InputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 127
    .end local v2           #s:Ljava/io/InputStream;
    .local v3, s:Ljava/io/InputStream;
    :try_start_7
    invoke-static {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 130
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3           #s:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    :catchall_2
    move-exception v4

    :goto_3
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_4
    throw v4

    .line 134
    .end local v2           #s:Ljava/io/InputStream;
    :cond_6
    iput-object p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->openFile(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1

    .line 119
    :catch_4
    move-exception v5

    goto :goto_2

    .line 130
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    :catch_5
    move-exception v5

    goto :goto_4

    .end local v2           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3           #s:Ljava/io/InputStream;
    .restart local v2       #s:Ljava/io/InputStream;
    goto :goto_3
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 77
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 193
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 195
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->InputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :goto_0
    return-void

    .line 198
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "arrayIn"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 220
    iput-object p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    .line 221
    return-void
.end method

.method public static InputStreamToArray(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 208
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 211
    .local v2, read:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 216
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 213
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static exceptionIsMapFailureException(Ljava/io/IOException;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Map failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->openForPlainRandomAccess(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->exceptionIsMapFailureException(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->openForPlainRandomAccess(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    throw v0
.end method

.method private openForPlainRandomAccess(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 172
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    .line 174
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 351
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 353
    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 361
    iput-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method

.method public getFilePointer()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 390
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 391
    .local v0, n:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v1, :cond_2

    .line 392
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    :goto_1
    int-to-long v3, v0

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    sub-long/2addr v1, v3

    .line 395
    :goto_2
    return-wide v1

    .line 390
    .end local v0           #n:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    .restart local v0       #n:I
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->getFilePointer()J

    move-result-wide v1

    goto :goto_1

    .line 395
    :cond_2
    iget-wide v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    sub-long/2addr v1, v3

    goto :goto_2
.end method

.method public getNioByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 692
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 696
    .local v0, channel:Ljava/nio/channels/FileChannel;
    :goto_0
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 698
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :goto_1
    return-object v1

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    goto :goto_0

    .line 698
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 675
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    return-wide v0
.end method

.method protected insureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 343
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 368
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    sub-long/2addr v0, v2

    .line 371
    :goto_1
    return-wide v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public pushBack(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 231
    iput-byte p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 233
    return-void
.end method

.method public reOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->openFile(Ljava/lang/String;)V

    .line 336
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 337
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 238
    iget-byte v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    and-int/lit16 v0, v0, 0xff

    .line 245
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    .line 243
    :cond_2
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 244
    const/4 v0, -0x1

    goto :goto_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iget-wide v1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    long-to-int v1, v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 250
    if-nez p3, :cond_0

    .line 275
    :goto_0
    return v2

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, n:I
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v4, :cond_2

    .line 254
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 255
    if-ne p3, v3, :cond_1

    .line 256
    iget-byte v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    aput-byte v2, p1, p2

    move v2, v3

    .line 257
    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x1

    .line 261
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, off:I
    iget-byte v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->back:B

    aput-byte v2, p1, p2

    .line 262
    add-int/lit8 p3, p3, -0x1

    move p2, v1

    .line 265
    .end local v1           #off:I
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v2, :cond_4

    .line 266
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_1

    .line 269
    :cond_4
    iget-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    iget-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v4, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 270
    const/4 v2, -0x1

    goto :goto_0

    .line 271
    :cond_5
    iget-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v4, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 272
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    array-length v2, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 273
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    iget-wide v3, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    long-to-int v3, v3

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    .line 275
    add-int v2, p3, v0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 400
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 401
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 402
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 407
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 408
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 409
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 495
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 496
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 497
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 498
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2
.end method

.method public final readCharLE()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 523
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 524
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 525
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 526
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleLE()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatLE()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 285
    return-void
.end method

.method public readFully([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, n:I
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v0

    .line 291
    .local v0, count:I
    if-gez v0, :cond_1

    .line 292
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 293
    :cond_1
    add-int/2addr v1, v0

    .line 294
    if-lt v1, p3, :cond_0

    .line 295
    return-void
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 531
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 532
    .local v1, ch2:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 533
    .local v2, ch3:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 534
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 535
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 536
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4
.end method

.method public final readIntLE()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 562
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 563
    .local v1, ch2:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 564
    .local v2, ch3:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 565
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 566
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 567
    :cond_0
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v4, input:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 639
    .local v0, c:I
    const/4 v3, 0x0

    .line 641
    .local v3, eol:Z
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 655
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    :sswitch_0
    const/4 v3, 0x1

    .line 646
    goto :goto_0

    .line 648
    :sswitch_1
    const/4 v3, 0x1

    .line 649
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v1

    .line 650
    .local v1, cur:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 651
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    goto :goto_0

    .line 660
    .end local v1           #cur:J
    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 661
    const/4 v5, 0x0

    .line 663
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 642
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readLongLE()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    .line 616
    .local v0, i1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v1

    .line 617
    .local v1, i2:I
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 421
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 422
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 423
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 424
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2
.end method

.method public final readShortLE()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 450
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 451
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 452
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 453
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 414
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 415
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 416
    :cond_0
    return v0
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v0, v8

    .line 592
    .local v0, ch1:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v2, v8

    .line 593
    .local v2, ch2:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v4, v8

    .line 594
    .local v4, ch3:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v6, v8

    .line 595
    .local v6, ch4:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 596
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 597
    :cond_0
    const/16 v8, 0x18

    shl-long v8, v0, v8

    const/16 v10, 0x10

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v6, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public final readUnsignedIntLE()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v0, v8

    .line 602
    .local v0, ch1:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v2, v8

    .line 603
    .local v2, ch2:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v4, v8

    .line 604
    .local v4, ch3:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    int-to-long v6, v8

    .line 605
    .local v6, ch4:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 606
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 607
    :cond_0
    const/16 v8, 0x18

    shl-long v8, v6, v8

    const/16 v10, 0x10

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v0, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 458
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 459
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 460
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 461
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2
.end method

.method public final readUnsignedShortLE()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 487
    .local v0, ch1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 488
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 489
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 490
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public seek(J)V
    .locals 2
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    add-long/2addr p1, v0

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 377
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayIn:[B

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->insureOpen()V

    .line 379
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->plainRandomAccess:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->trf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->rf:Lcom/itextpdf/text/pdf/MappedRandomAccessFile;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->seek(J)V

    goto :goto_0

    .line 385
    :cond_1
    iput-wide p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->arrayInPtr:J

    goto :goto_0
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 683
    iput-wide p1, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->startOffset:J

    .line 684
    return-void
.end method

.method public skip(J)J
    .locals 12
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    .line 298
    cmp-long v11, p1, v7

    if-gtz v11, :cond_0

    .line 325
    :goto_0
    return-wide v7

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, adj:I
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    if-eqz v7, :cond_2

    .line 303
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->isBack:Z

    .line 304
    cmp-long v7, p1, v9

    if-nez v7, :cond_1

    move-wide v7, v9

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    sub-long/2addr p1, v9

    .line 309
    const/4 v0, 0x1

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v5

    .line 317
    .local v5, pos:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    .line 318
    .local v1, len:J
    add-long v3, v5, p1

    .line 319
    .local v3, newpos:J
    cmp-long v7, v3, v1

    if-lez v7, :cond_3

    .line 320
    move-wide v3, v1

    .line 322
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 325
    sub-long v7, v3, v5

    int-to-long v9, v0

    add-long/2addr v7, v9

    goto :goto_0
.end method

.method public skipBytes(I)I
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
