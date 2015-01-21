.class public Lorg/apache/commons/compress/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final mt:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/b/c;->cy()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/b/d;->mt:Ljava/util/Set;

    return-void
.end method

.method private a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/d;Lorg/apache/commons/compress/archivers/c;)V
    .locals 0

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/d;->a(Lorg/apache/commons/compress/archivers/c;)V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/a/f;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/d;->c()V

    return-void
.end method

.method private a(Ljava/util/Set;Lorg/apache/commons/compress/archivers/c;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->I()Ljava/lang/String;

    move-result-object v0

    if-ne v4, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/apache/commons/compress/archivers/b;Lorg/apache/commons/compress/archivers/d;)Lorg/apache/commons/compress/b/b;
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Lorg/apache/commons/compress/b/b;

    invoke-direct {v3}, Lorg/apache/commons/compress/b/b;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lorg/apache/commons/compress/b/d;->mt:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v6

    if-ne v6, v10, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->K()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->H()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lorg/apache/commons/compress/b/d;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/d;Lorg/apache/commons/compress/archivers/c;)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/b/b;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v7

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v2, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3, v8}, Lorg/apache/commons/compress/b/b;->h(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/compress/b/d;->a(Ljava/util/Set;Lorg/apache/commons/compress/archivers/c;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/b/b;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, v5}, Lorg/apache/commons/compress/b/d;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/d;Lorg/apache/commons/compress/archivers/c;)V

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/b/b;->i(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/b;->q()Lorg/apache/commons/compress/archivers/c;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v9, 0x4

    if-ne v7, v9, :cond_1

    if-eqz v8, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v8}, Lorg/apache/commons/compress/b/b;->h(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/b/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->J()I

    move-result v2

    if-ne v2, v10, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->K()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/b/b;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->H()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, Lorg/apache/commons/compress/b/d;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/d;Lorg/apache/commons/compress/archivers/c;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/b/a;->G()Lorg/apache/commons/compress/archivers/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/b/b;->j(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/d;->finish()V

    return-object v3

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method
