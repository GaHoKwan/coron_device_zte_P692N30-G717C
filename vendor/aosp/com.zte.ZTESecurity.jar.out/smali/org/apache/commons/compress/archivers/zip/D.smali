.class Lorg/apache/commons/compress/archivers/zip/D;
.super Ljava/lang/Object;


# instance fields
.field private mA:Lorg/apache/commons/compress/archivers/zip/N;

.field private final mz:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/D;->mz:[C

    return-void
.end method


# virtual methods
.method public declared-synchronized cz()Lorg/apache/commons/compress/archivers/zip/N;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/D;->mA:Lorg/apache/commons/compress/archivers/zip/N;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/N;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/D;->mz:[C

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/N;-><init>([C)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/D;->mA:Lorg/apache/commons/compress/archivers/zip/N;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/D;->mA:Lorg/apache/commons/compress/archivers/zip/N;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
