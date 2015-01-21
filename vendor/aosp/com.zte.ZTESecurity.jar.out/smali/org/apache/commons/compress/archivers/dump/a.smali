.class Lorg/apache/commons/compress/archivers/dump/a;
.super Ljava/lang/Object;


# instance fields
.field private W:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

.field private X:I

.field private Y:I

.field private Z:[B

.field private count:I

.field private volume:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->Z:[B

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/dump/a;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->count:I

    return v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/dump/a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->volume:I

    return p1
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/dump/a;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->W:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object p1
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/dump/a;)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/a;->Y:I

    return v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/dump/a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->X:I

    return p1
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/dump/a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->count:I

    return p1
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/dump/a;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->Z:[B

    return-object v0
.end method

.method static synthetic d(Lorg/apache/commons/compress/archivers/dump/a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->Y:I

    return p1
.end method


# virtual methods
.method f(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/a;->X:I

    return-void
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->Z:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->count:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->volume:I

    return v0
.end method

.method public t()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->W:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->X:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/a;->Y:I

    return v0
.end method
