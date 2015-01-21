.class final Lorg/apache/commons/compress/archivers/zip/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final nP:C

.field public final nQ:B


# direct methods
.method constructor <init>(BC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/zip/F;->nQ:B

    iput-char p2, p0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/zip/F;)I
    .locals 2

    iget-char v0, p0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    iget-char v1, p1, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/F;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/F;->a(Lorg/apache/commons/compress/archivers/zip/F;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/F;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/F;

    iget-char v1, p0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    iget-char v2, p1, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/F;->nQ:B

    iget-byte v2, p1, Lorg/apache/commons/compress/archivers/zip/F;->nQ:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff

    iget-char v2, p0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/F;->nQ:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
