.class public final Ltmsdk/common/utils/ZipChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Es:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Ltmsdk/common/utils/ZipChecker;->Es:[B

    .line 21
    return-void
.end method

.method private a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 3
    .parameter "zip"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 69
    :cond_0
    const/4 v1, -0x1

    iget-object v2, p0, Ltmsdk/common/utils/ZipChecker;->Es:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v1, v2, :cond_0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 75
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v1
.end method

.method private cX(Ljava/lang/String;)V
    .locals 12
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v8, 0x0

    .line 36
    .local v8, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 37
    .local v4, fileSize:J
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v9, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 39
    .local v2, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 40
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 41
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    .line 45
    .local v0, compressedSize:J
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .line 46
    .local v6, size:J
    const-wide/16 v10, -0x1

    cmp-long v10, v0, v10

    if-ltz v10, :cond_1

    cmp-long v10, v0, v4

    if-gtz v10, :cond_1

    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-ltz v10, :cond_1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    cmp-long v10, v6, v10

    if-lez v10, :cond_3

    .line 48
    :cond_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Invalid entry size!"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v0           #compressedSize:J
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #size:J
    :catchall_0
    move-exception v10

    move-object v8, v9

    .end local v4           #fileSize:J
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :goto_0
    if-eqz v8, :cond_2

    .line 60
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    :cond_2
    throw v10

    .line 50
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #compressedSize:J
    .restart local v2       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #fileSize:J
    .restart local v6       #size:J
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AndroidManifest.xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 51
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_5

    .line 52
    :cond_4
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Invalid AndroidManifest!"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 54
    :cond_5
    invoke-direct {p0, v9, v3}, Ltmsdk/common/utils/ZipChecker;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    if-eqz v9, :cond_6

    .line 60
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 63
    .end local v0           #compressedSize:J
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #size:J
    :cond_6
    :goto_1
    return-void

    .line 59
    :cond_7
    if-eqz v9, :cond_6

    .line 60
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_1

    .line 59
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4           #fileSize:J
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v10

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized check(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ltmsdk/common/utils/ZipChecker;->cX(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 v1, 0x1

    .line 29
    :goto_0
    monitor-exit p0

    return v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ZipChecker"

    const-string v2, "check"

    invoke-static {v1, v2, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v1, 0x0

    goto :goto_0

    .line 25
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
