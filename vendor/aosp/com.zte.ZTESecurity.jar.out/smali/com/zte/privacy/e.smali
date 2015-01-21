.class public Lcom/zte/privacy/e;
.super Lcom/zte/privacy/n;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/i;

    invoke-direct {v0, p1}, Lcom/zte/ZTESecurity/i;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/privacy/n;-><init>(Ljava/io/DataInput;Z)V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/zte/privacy/e;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/zte/privacy/e;->c(Ljava/io/InputStream;)Lcom/zte/privacy/e;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No valid apk"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/InputStream;)Lcom/zte/privacy/e;
    .locals 2

    new-instance v0, Lcom/zte/privacy/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/e;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method public static c(Ljava/io/InputStream;)Lcom/zte/privacy/e;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classes.dex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/privacy/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/privacy/e;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not valid apk"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No valid apk"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/e;->da:Ljava/io/DataInput;

    check-cast v0, Lcom/zte/ZTESecurity/i;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/i;->close()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/e;->da:Ljava/io/DataInput;

    check-cast v0, Lcom/zte/ZTESecurity/i;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/i;->getFilePointer()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public h(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/e;->da:Ljava/io/DataInput;

    check-cast v0, Lcom/zte/ZTESecurity/i;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/zte/ZTESecurity/i;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
