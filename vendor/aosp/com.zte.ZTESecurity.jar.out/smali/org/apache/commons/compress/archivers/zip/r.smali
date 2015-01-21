.class public final Lorg/apache/commons/compress/archivers/zip/r;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/h;


# static fields
.field private static final j:Lorg/apache/commons/compress/archivers/zip/O;


# instance fields
.field private jr:[B

.field private js:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    const v1, 0xacc1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b([BII)V
    .locals 2

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/r;->a([BII)V

    :cond_0
    return-void
.end method

.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public f()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public g()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    goto :goto_0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->jr:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r;->h()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r;->js:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/x;->s([B)[B

    move-result-object v0

    goto :goto_0
.end method
