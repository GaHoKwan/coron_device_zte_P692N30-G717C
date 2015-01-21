.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private entry:Ljava/util/jar/JarVerifier$VerifierEntry;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V
    .locals 2
    .parameter "is"
    .parameter "ze"
    .parameter "e"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 70
    iput-object p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 71
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 72
    iput-object p3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 73
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v1, -0x1

    .line 77
    iget-boolean v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    .line 81
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 82
    .local v0, r:I
    if-eq v0, v1, :cond_2

    .line 83
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarVerifier$VerifierEntry;->write(I)V

    .line 84
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 88
    :goto_1
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 89
    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 90
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 86
    :cond_2
    iput-wide v5, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 94
    .end local v0           #r:I
    :cond_3
    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 95
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .parameter "buffer"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    .line 102
    iget-boolean v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_4

    .line 106
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 107
    .local v0, r:I
    if-eq v0, v2, :cond_3

    .line 108
    move v1, v0

    .line 109
    .local v1, size:I
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 110
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    .line 112
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    .line 113
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 117
    .end local v1           #size:I
    :goto_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 118
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 119
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 115
    :cond_3
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 123
    .end local v0           #r:I
    :cond_4
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 124
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v2

    .line 125
    goto :goto_0
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
