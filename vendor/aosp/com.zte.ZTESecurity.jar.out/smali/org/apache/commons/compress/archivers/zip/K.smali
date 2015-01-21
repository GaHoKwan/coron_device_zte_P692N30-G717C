.class Lorg/apache/commons/compress/archivers/zip/K;
.super Ljava/util/zip/InflaterInputStream;


# instance fields
.field final synthetic ch:Lorg/apache/commons/compress/archivers/zip/k;

.field final synthetic qD:Ljava/util/zip/Inflater;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/k;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/K;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/K;->qD:Ljava/util/zip/Inflater;

    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/K;->qD:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method
