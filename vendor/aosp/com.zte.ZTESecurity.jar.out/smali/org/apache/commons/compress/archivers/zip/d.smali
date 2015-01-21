.class final Lorg/apache/commons/compress/archivers/zip/d;
.super Ljava/lang/Object;


# instance fields
.field private cC:J

.field private cD:J


# direct methods
.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/d;->cC:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/d;->cD:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/K;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/d;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/d;->cD:J

    return-wide v0
.end method

.method static synthetic a(Lorg/apache/commons/compress/archivers/zip/d;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/d;->cC:J

    return-wide p1
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/d;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/d;->cC:J

    return-wide v0
.end method

.method static synthetic b(Lorg/apache/commons/compress/archivers/zip/d;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/d;->cD:J

    return-wide p1
.end method
