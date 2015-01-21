.class public final Lorg/apache/commons/compress/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final mt:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    return-void
.end method

.method private a(Lorg/apache/commons/compress/b/a;)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v0

    if-ne v3, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->H()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Lorg/apache/commons/compress/b/a;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v0

    if-eq v5, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v0

    if-ne v6, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->I()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v3

    if-ne v5, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v3

    if-ne v6, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public O(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/b/a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/b/c;->b(Lorg/apache/commons/compress/b/a;)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/b/a;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/b/a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/b/c;->b(Lorg/apache/commons/compress/b/a;)V

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/b/c;->a(Lorg/apache/commons/compress/archivers/c;Ljava/io/InputStream;Z)V

    return-void
.end method

.method public a(Lorg/apache/commons/compress/archivers/c;Ljava/io/InputStream;Z)V
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/b/a;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/b/a;-><init>(Lorg/apache/commons/compress/archivers/c;Ljava/io/InputStream;Z)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/b/c;->a(Lorg/apache/commons/compress/b/a;)V

    return-void
.end method

.method cy()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/commons/compress/b/c;->mt:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
