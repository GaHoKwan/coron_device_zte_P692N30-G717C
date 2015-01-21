.class public Lcom/zte/zdm/b/a/s;
.super Lcom/zte/zdm/b/a/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/zte/zdm/d/c/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ay;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    iput-object p1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/s;->e:Lcom/zte/zdm/d/c/ay;

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/a;)Ljava/util/ArrayList;
    .locals 1

    instance-of v0, p1, Lcom/zte/zdm/d/c/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zte/zdm/d/c/b;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/b;->k()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/zte/zdm/d/c/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zte/zdm/d/c/c;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zte/zdm/d/c/r;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zte/zdm/d/c/r;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/r;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/zte/zdm/d/c/w;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/zte/zdm/d/c/w;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/w;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/zte/zdm/d/c/ae;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/zte/zdm/d/c/ae;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ae;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/zte/zdm/d/c/ag;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/zte/zdm/d/c/ag;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ag;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/zte/zdm/d/c/at;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/zte/zdm/d/c/at;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/at;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/b/a/a;
    .locals 3

    instance-of v0, p1, Lcom/zte/zdm/d/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/b;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/zte/zdm/d/c/c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zte/zdm/b/a/d;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/c;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zte/zdm/d/c/r;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zte/zdm/b/a/n;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/r;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/r;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/zte/zdm/d/c/w;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zte/zdm/b/a/o;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/w;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/w;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/zte/zdm/d/c/ae;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/zte/zdm/b/a/p;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/ae;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ae;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/zte/zdm/d/c/ag;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/zte/zdm/b/a/q;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/ag;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ag;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/zte/zdm/d/c/at;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/zte/zdm/b/a/r;

    iget-object v1, p0, Lcom/zte/zdm/b/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/s;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/at;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/at;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 14

    const/4 v13, 0x0

    const/16 v3, 0xd7

    const/16 v8, 0xc8

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/a/s;->e:Lcom/zte/zdm/d/c/ay;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ay;->g()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v7, v2

    move v6, v2

    move v4, v8

    :goto_0
    if-ge v7, v10, :cond_1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/s;->b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/b/a/a;

    move-result-object v11

    invoke-static {v11}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    if-nez v6, :cond_0

    invoke-virtual {v11}, Lcom/zte/zdm/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/zte/zdm/b/a/s;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v11}, Lcom/zte/zdm/b/a/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v7, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/zdm/d/c/c;

    if-eqz v1, :cond_2

    iget v1, v11, Lcom/zte/zdm/b/a/a;->c:I

    if-eq v1, v8, :cond_2

    move v1, v5

    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v1

    move v4, v0

    goto :goto_0

    :cond_0
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/s;->a(Lcom/zte/zdm/d/c/a;)Ljava/util/ArrayList;

    move-result-object v12

    move v1, v2

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v3, v13}, Lcom/zte/zdm/b/a/a;->a(Ljava/lang/String;ILjava/util/List;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v13, v4}, Lcom/zte/zdm/b/a/s;->a(Ljava/lang/String;I)V

    return v5

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/s;->c()Z

    move-result v0

    return v0
.end method
