.class final Lorg/apache/commons/compress/compressors/a/i;
.super Ljava/lang/Object;


# instance fields
.field final aF:[Z

.field final aH:[B

.field final aI:[B

.field nT:I

.field final rV:[B

.field final rW:[I

.field final rX:[B

.field final rY:[[B

.field final rZ:[[I

.field final sa:[I

.field final sb:[S

.field final sc:[[I

.field final sd:[B

.field final se:[Z

.field final sf:[I

.field final sg:[I

.field final sh:[I

.field final si:[B

.field final sj:[I

.field final sk:[C


# direct methods
.method constructor <init>(I)V
    .locals 6

    const/16 v5, 0x4652

    const/16 v4, 0x204

    const/16 v1, 0x100

    const/16 v3, 0x102

    const/4 v2, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->aF:[Z

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->rV:[B

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->rW:[I

    new-array v0, v5, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->aH:[B

    new-array v0, v5, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->aI:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->rX:[B

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->rY:[[B

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->rZ:[[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sa:[I

    new-array v0, v2, [S

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sb:[S

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sc:[[I

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sd:[B

    const/16 v0, 0x10

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->se:[Z

    const/16 v0, 0x104

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sf:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sg:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sh:[I

    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/i;->si:[B

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/a/i;->sj:[I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/i;->sk:[C

    return-void
.end method
