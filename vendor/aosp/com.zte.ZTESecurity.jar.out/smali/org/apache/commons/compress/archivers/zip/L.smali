.class Lorg/apache/commons/compress/archivers/zip/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic ch:Lorg/apache/commons/compress/archivers/zip/k;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/k;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/L;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/E;)I
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/L;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/k;->c(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/d;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/L;->ch:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/k;->c(Lorg/apache/commons/compress/archivers/zip/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/d;

    if-nez v0, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d;->b(Lorg/apache/commons/compress/archivers/zip/d;)J

    move-result-wide v5

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/d;->b(Lorg/apache/commons/compress/archivers/zip/d;)J

    move-result-wide v0

    sub-long v0, v5, v0

    cmp-long v5, v0, v7

    if-nez v5, :cond_3

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    cmp-long v0, v0, v7

    if-gez v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/E;

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/E;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/L;->a(Lorg/apache/commons/compress/archivers/zip/E;Lorg/apache/commons/compress/archivers/zip/E;)I

    move-result v0

    return v0
.end method
