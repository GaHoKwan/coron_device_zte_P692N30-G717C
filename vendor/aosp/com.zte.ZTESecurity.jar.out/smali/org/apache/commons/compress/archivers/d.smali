.class public abstract Lorg/apache/commons/compress/archivers/d;
.super Ljava/io/OutputStream;


# static fields
.field static final dT:I = 0xff


# instance fields
.field private final kx:[B

.field private ky:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/d;->kx:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d;->ky:J

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/c;
.end method

.method public abstract a(Lorg/apache/commons/compress/archivers/c;)V
.end method

.method protected b(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d;->ky:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/d;->ky:J

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public d(Lorg/apache/commons/compress/archivers/c;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract finish()V
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d;->ky:J

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d;->ky:J

    long-to-int v0, v0

    return v0
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d;->kx:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d;->kx:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/d;->write([BII)V

    return-void
.end method

.method protected z(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/d;->b(J)V

    return-void
.end method
