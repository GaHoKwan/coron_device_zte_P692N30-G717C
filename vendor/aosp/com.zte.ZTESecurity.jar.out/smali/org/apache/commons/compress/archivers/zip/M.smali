.class final Lorg/apache/commons/compress/archivers/zip/M;
.super Ljava/lang/Object;


# instance fields
.field private bytesRead:J

.field private final entry:Lorg/apache/commons/compress/archivers/zip/E;

.field private rG:Z

.field private rH:Z

.field private rI:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/E;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->entry:Lorg/apache/commons/compress/archivers/zip/E;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/q;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/M;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/M;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->rI:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->rI:J

    return-wide v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/M;)Lorg/apache/commons/compress/archivers/zip/E;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->entry:Lorg/apache/commons/compress/archivers/zip/E;

    return-object v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/M;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/M;->rG:Z

    return p1
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/M;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->bytesRead:J

    return-wide v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/M;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->rG:Z

    return v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/M;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/M;->rH:Z

    return p1
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/M;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->rH:Z

    return v0
.end method

.method static synthetic d(Lorg/apache/commons/compress/archivers/zip/M;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->bytesRead:J

    return-wide v0
.end method

.method static synthetic e(Lorg/apache/commons/compress/archivers/zip/M;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/M;->rI:J

    return-wide v0
.end method
