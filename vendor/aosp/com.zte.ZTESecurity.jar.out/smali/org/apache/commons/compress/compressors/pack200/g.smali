.class abstract Lorg/apache/commons/compress/compressors/pack200/g;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private input:Ljava/io/InputStream;

.field private final lO:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/pack200/g;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->lO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method H()Ljava/io/InputStream;
    .locals 2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/g;->lO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/g;->av()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract av()Ljava/io/InputStream;
.end method

.method stop()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/g;->close()V

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/g;->lO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/g;->input:Ljava/io/InputStream;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
