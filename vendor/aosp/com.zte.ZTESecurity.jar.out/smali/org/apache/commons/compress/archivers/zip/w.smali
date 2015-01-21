.class public Lorg/apache/commons/compress/archivers/zip/w;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/h;


# instance fields
.field private kB:Lorg/apache/commons/compress/archivers/zip/O;

.field private kC:[B

.field private kD:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/w;->q([B)V

    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/zip/O;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/w;->kB:Lorg/apache/commons/compress/archivers/zip/O;

    return-void
.end method

.method public b([BII)V
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/w;->r([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/w;->kC:[B

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/w;->q([B)V

    :cond_0
    return-void
.end method

.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kB:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public f()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/w;->kC:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    return-object v0
.end method

.method public g()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kD:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/w;->kD:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/w;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    goto :goto_0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kC:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kD:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kD:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/w;->h()[B

    move-result-object v0

    goto :goto_0
.end method

.method public q([B)V
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kC:[B

    return-void
.end method

.method public r([B)V
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/w;->kD:[B

    return-void
.end method
