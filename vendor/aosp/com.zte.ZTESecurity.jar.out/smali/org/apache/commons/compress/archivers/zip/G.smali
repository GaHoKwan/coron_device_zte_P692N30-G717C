.class final Lorg/apache/commons/compress/archivers/zip/G;
.super Ljava/lang/Object;


# instance fields
.field private final buf:[B

.field private nR:I

.field private nS:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->buf:[B

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/G;->nS:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/q;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/G;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/G;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    return p1
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/G;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->buf:[B

    return-object v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/G;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    return v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/G;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/G;->nS:I

    return p1
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/G;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nS:I

    return v0
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/G;I)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    return v0
.end method

.method static synthetic d(Lorg/apache/commons/compress/archivers/zip/G;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/G;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nS:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/G;->nR:I

    return-void
.end method
