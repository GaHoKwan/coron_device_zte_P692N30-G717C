.class Lorg/apache/commons/compress/archivers/zip/N;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/e;


# instance fields
.field private final mz:[C

.field private final sl:Ljava/util/List;


# direct methods
.method public constructor <init>([C)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->mz:[C

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->mz:[C

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0x7f

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/N;->mz:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/F;

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/N;->mz:[C

    aget-char v4, v4, v0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/compress/archivers/zip/F;-><init>(BC)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->sl:Ljava/util/List;

    return-void
.end method

.method private b(C)Lorg/apache/commons/compress/archivers/zip/F;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->sl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-le v1, v3, :cond_3

    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    add-int v2, v3, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->sl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/F;

    iget-char v5, v0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-char v0, v0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    if-ge v0, p1, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->sl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    move-object v0, v4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->sl:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/F;

    iget-char v1, v0, Lorg/apache/commons/compress/archivers/zip/F;->nP:C

    if-eq v1, p1, :cond_0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a(B)C
    .locals 2

    if-ltz p1, :cond_0

    int-to-char v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/N;->mz:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public a(C)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/N;->b(C)Lorg/apache/commons/compress/archivers/zip/F;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)Ljava/lang/String;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/N;->a(B)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public b(Ljava/nio/ByteBuffer;C)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    int-to-byte v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/N;->b(C)Lorg/apache/commons/compress/archivers/zip/F;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-byte v1, v1, Lorg/apache/commons/compress/archivers/zip/F;->nQ:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/B;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/N;->b(Ljava/nio/ByteBuffer;C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/B;->a(Ljava/nio/ByteBuffer;C)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/N;->a(C)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
