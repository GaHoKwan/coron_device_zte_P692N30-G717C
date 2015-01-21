.class public Llibcore/net/url/FileURLConnection;
.super Ljava/net/URLConnection;
.source "FileURLConnection.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private isDir:Z

.field private length:I

.field private permission:Ljava/io/FilePermission;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Llibcore/net/url/FileURLConnection;->length:I

    .line 59
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    invoke-static {v0}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;
    .locals 8
    .parameter "f"

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, fileList:[Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v3, out:Ljava/io/PrintStream;
    const-string v4, "<title>Directory Listing</title>\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    const-string v4, "<base href=\"file:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/\"><h1>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h1>\n<hr>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 161
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v4
.end method


# virtual methods
.method public connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iput-boolean v5, p0, Llibcore/net/url/FileURLConnection;->isDir:Z

    .line 79
    invoke-direct {p0, v0}, Llibcore/net/url/FileURLConnection;->getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    .line 86
    :goto_0
    iput-boolean v5, p0, Ljava/net/URLConnection;->connected:Z

    .line 87
    return-void

    .line 82
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 84
    .local v1, lengthAsLong:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    long-to-int v3, v1

    :goto_1
    iput v3, p0, Llibcore/net/url/FileURLConnection;->length:I

    goto :goto_0

    :cond_1
    const v3, 0x7fffffff

    goto :goto_1
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 99
    :try_start_0
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    iget v0, p0, Llibcore/net/url/FileURLConnection;->length:I

    return v0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    iget-boolean v2, p0, Llibcore/net/url/FileURLConnection;->isDir:Z

    if-eqz v2, :cond_2

    .line 124
    const-string v1, "text/plain"

    .line 140
    :cond_1
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    const-string v1, "content/unknown"

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 132
    :try_start_1
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v2}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 136
    :goto_1
    if-nez v1, :cond_1

    .line 140
    const-string v1, "content/unknown"

    goto :goto_0

    .line 133
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V

    .line 183
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 198
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    if-nez v1, :cond_1

    .line 199
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 200
    .local v0, path:Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_0

    .line 201
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    new-instance v1, Ljava/io/FilePermission;

    const-string v2, "read"

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    .line 205
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    return-object v1
.end method
