.class public Lcom/zte/privacy/u;
.super Lcom/zte/privacy/n;

# interfaces
.implements Lcom/zte/privacy/o;
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/privacy/n;-><init>(Ljava/io/DataInput;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/u;->da:Ljava/io/DataInput;

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/u;->da:Ljava/io/DataInput;

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/u;->da:Ljava/io/DataInput;

    check-cast v0, Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
