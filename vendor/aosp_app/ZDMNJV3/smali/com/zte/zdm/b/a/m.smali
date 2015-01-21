.class public Lcom/zte/zdm/b/a/m;
.super Lcom/zte/zdm/b/a/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/zte/zdm/d/c/f;

.field private f:Ljava/util/List;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/f;)V
    .locals 1

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/m;->h:Z

    iput-object p1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/m;->e:Lcom/zte/zdm/d/c/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/m;->f:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/m;->g:I

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

.method private a(Lcom/zte/zdm/d/c/a;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/zdm/d/c/bn;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;I)Lcom/zte/zdm/d/c/bd;

    move-result-object v1

    instance-of v0, p1, Lcom/zte/zdm/d/c/aj;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zte/zdm/d/c/aj;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/zte/zdm/d/c/bn;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zte/zdm/d/c/bn;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bn;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/bd;->a([Lcom/zte/zdm/d/c/bn;)V

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/b/a/m;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/b/a/a;
    .locals 3

    instance-of v0, p1, Lcom/zte/zdm/d/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/b;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/zte/zdm/d/c/c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zte/zdm/b/a/d;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/c;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zte/zdm/d/c/r;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zte/zdm/b/a/n;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/r;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/r;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/zte/zdm/d/c/w;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zte/zdm/b/a/o;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/w;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/w;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/zte/zdm/d/c/ae;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/zte/zdm/b/a/p;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/ae;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ae;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/zte/zdm/d/c/at;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/zte/zdm/b/a/r;

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/zte/zdm/d/c/at;

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/at;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/zte/zdm/d/c/a;)I
    .locals 4

    const/16 v1, 0x1f4

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    check-cast v0, Lcom/zte/zdm/d/c/bd;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 13

    const/16 v12, 0xd7

    const/16 v11, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "zcc_atomoic performactionOperation"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->e:Lcom/zte/zdm/d/c/f;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/f;->g()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->a:Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->g()V

    move v5, v2

    move v4, v2

    :goto_0
    if-ge v5, v7, :cond_0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/m;->b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/b/a/a;

    move-result-object v8

    if-nez v8, :cond_2

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/zte/zdm/b/a/m;->g:I

    :cond_0
    iget v0, p0, Lcom/zte/zdm/b/a/m;->g:I

    if-eq v0, v11, :cond_1

    iget-boolean v0, p0, Lcom/zte/zdm/b/a/m;->h:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->a:Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->f()V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->a:Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->e()V

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->a:Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->h()V

    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->a:Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->c()V

    return v3

    :cond_2
    if-nez v4, :cond_6

    invoke-virtual {v8}, Lcom/zte/zdm/b/a/a;->a()Z

    :cond_3
    if-nez v5, :cond_7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/zdm/d/c/c;

    if-eqz v0, :cond_7

    iget v0, v8, Lcom/zte/zdm/b/a/a;->c:I

    if-eq v0, v11, :cond_7

    iput-boolean v2, p0, Lcom/zte/zdm/b/a/m;->h:Z

    move v0, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/zte/zdm/b/a/m;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "resultCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/zte/zdm/b/a/m;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v8, Lcom/zte/zdm/b/a/a;->c:I

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_4

    iget v1, v8, Lcom/zte/zdm/b/a/a;->c:I

    if-ne v1, v12, :cond_5

    :cond_4
    const/16 v1, 0x1fb

    iput v1, p0, Lcom/zte/zdm/b/a/m;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusCode1:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v8, Lcom/zte/zdm/b/a/a;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resultCode1:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/zte/zdm/b/a/m;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->f:Ljava/util/List;

    invoke-virtual {v8}, Lcom/zte/zdm/b/a/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/m;->a(Lcom/zte/zdm/d/c/a;)Ljava/util/ArrayList;

    move-result-object v9

    move v1, v2

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v12, v10}, Lcom/zte/zdm/b/a/a;->a(Ljava/lang/String;ILjava/util/List;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    move v0, v4

    goto/16 :goto_1
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/zte/zdm/b/a/m;->g:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/b/a/m;->h:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/m;->h:Z

    invoke-virtual {p0}, Lcom/zte/zdm/b/a/m;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a/m;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "cx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postCommandResultsToResponse resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/b/a/m;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/zte/zdm/b/a/m;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/b/a/m;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/b/a/m;->e:Lcom/zte/zdm/d/c/f;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/a;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/m;->c(Lcom/zte/zdm/d/c/a;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/zte/zdm/b/a/m;->a(Lcom/zte/zdm/d/c/a;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/m;->c()Z

    move-result v0

    invoke-direct {p0}, Lcom/zte/zdm/b/a/m;->d()V

    return v0
.end method
