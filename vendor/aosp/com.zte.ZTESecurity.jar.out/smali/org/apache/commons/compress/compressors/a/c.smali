.class final Lorg/apache/commons/compress/compressors/a/c;
.super Ljava/lang/Object;


# instance fields
.field final aF:[Z

.field final aG:[B

.field final aH:[B

.field final aI:[B

.field final aJ:[I

.field final aK:[[I

.field final aL:[[I

.field final aM:[[I

.field final aN:[I

.field final aO:[I

.field final aP:[C

.field final aQ:[[C

.field final aR:[B

.field aS:[I

.field aT:[B


# direct methods
.method constructor <init>(I)V
    .locals 5

    const/16 v1, 0x4652

    const/16 v4, 0x102

    const/16 v3, 0x100

    const/4 v2, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aF:[Z

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aG:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aH:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aI:[B

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aJ:[I

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aK:[[I

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aL:[[I

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aM:[[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aN:[I

    const/16 v0, 0x101

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aO:[I

    new-array v0, v3, [C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aP:[C

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aQ:[[C

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aR:[B

    const v0, 0x186a0

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aT:[B

    return-void
.end method


# virtual methods
.method l(I)[I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/a/c;->aS:[I

    :cond_1
    return-object v0
.end method
