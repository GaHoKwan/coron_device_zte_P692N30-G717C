.class public Lorg/apache/commons/compress/archivers/b/c;
.super Lorg/apache/commons/compress/archivers/zip/H;


# instance fields
.field private jD:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/b/c;->jD:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/c;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/b/c;->jD:Z

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/J;->dr()Lorg/apache/commons/compress/archivers/zip/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/E;->b(Lorg/apache/commons/compress/archivers/zip/h;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/b/c;->jD:Z

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/H;->a(Lorg/apache/commons/compress/archivers/c;)V

    return-void
.end method
