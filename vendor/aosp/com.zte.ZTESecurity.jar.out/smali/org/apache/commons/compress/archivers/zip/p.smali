.class final Lorg/apache/commons/compress/archivers/zip/p;
.super Ljava/lang/Object;


# instance fields
.field private bytesRead:J

.field private final entry:Lorg/apache/commons/compress/archivers/zip/E;

.field private il:J

.field private im:J

.field private io:Z

.field private ip:Z


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/archivers/zip/E;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->il:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->im:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->bytesRead:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->io:Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->entry:Lorg/apache/commons/compress/archivers/zip/E;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/C;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/p;-><init>(Lorg/apache/commons/compress/archivers/zip/E;)V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/p;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->bytesRead:J

    return-wide v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/p;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->ip:Z

    return v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->ip:Z

    return p1
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/p;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->il:J

    return-wide p1
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/p;)Lorg/apache/commons/compress/archivers/zip/E;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->entry:Lorg/apache/commons/compress/archivers/zip/E;

    return-object v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->io:Z

    return p1
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/p;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->im:J

    return-wide v0
.end method

.method static synthetic c(Lorg/apache/commons/compress/archivers/zip/p;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/p;->im:J

    return-wide p1
.end method

.method static synthetic d(Lorg/apache/commons/compress/archivers/zip/p;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->bytesRead:J

    return-wide v0
.end method

.method static synthetic e(Lorg/apache/commons/compress/archivers/zip/p;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->il:J

    return-wide v0
.end method

.method static synthetic f(Lorg/apache/commons/compress/archivers/zip/p;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/p;->io:Z

    return v0
.end method
