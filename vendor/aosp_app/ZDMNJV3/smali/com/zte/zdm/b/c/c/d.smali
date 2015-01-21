.class public final Lcom/zte/zdm/b/c/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/aw;

.field private b:J

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/zte/zdm/d/c/a;JZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/zte/zdm/d/c/aw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command isn\'t a Results Command then it isn\'t splittable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/zte/zdm/d/c/aw;

    iput-object p1, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    iput-wide p2, p0, Lcom/zte/zdm/b/c/c/d;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    iput-boolean p4, p0, Lcom/zte/zdm/b/c/c/d;->e:Z

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ai;)I
    .locals 5

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "b64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/g/b;->b([B)[B

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    :goto_0
    iget-wide v1, p0, Lcom/zte/zdm/b/c/c/d;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/zte/zdm/b/c/c/d;->b:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dimension of the data is greater of the maxObjSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(Lcom/zte/zdm/d/c/ai;I)I
    .locals 4

    iget-boolean v0, p0, Lcom/zte/zdm/b/c/c/d;->e:Z

    if-eqz v0, :cond_0

    int-to-long v0, p2

    invoke-static {p1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p2

    invoke-static {p1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/ai;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/d/c/ai;II)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    int-to-long v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/Long;)V

    :goto_0
    iget v0, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    sub-int v0, v2, v0

    if-le v0, p3, :cond_1

    move v0, p3

    :goto_1
    new-array v3, v0, [B

    iget v4, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    invoke-static {v1, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/zte/zdm/d/c/n;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    iget v0, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    iput v5, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ai;->a(Ljava/lang/Boolean;)V

    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/zte/zdm/b/c/c/d;->a(Lcom/zte/zdm/d/c/ai;I)I

    move-result v0

    sub-int v0, p3, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zte/zdm/b/c/c/d;->d:I

    sub-int v0, v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ai;->a(Ljava/lang/Boolean;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;[Lcom/zte/zdm/d/c/ai;)Lcom/zte/zdm/d/c/aw;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/zte/zdm/d/c/aw;

    new-instance v1, Lcom/zte/zdm/d/c/m;

    invoke-direct {v1, p1}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/aw;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/aw;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/aw;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v5}, Lcom/zte/zdm/d/c/aw;->i()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v6

    :goto_0
    iget-object v7, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v7}, Lcom/zte/zdm/d/c/aw;->i()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/d/c/aw;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V

    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v5}, Lcom/zte/zdm/d/c/aw;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/zdm/d/c/bn;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v6}, Lcom/zte/zdm/d/c/aw;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/zdm/d/c/bc;

    goto :goto_1
.end method

.method private a(J)[Lcom/zte/zdm/d/c/ai;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    long-to-int v0, p1

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "splitChunk: all items ware sent...."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zte/zdm/d/c/ai;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/c/d;->a(Lcom/zte/zdm/d/c/ai;)I

    move-result v3

    if-le v3, v1, :cond_2

    invoke-direct {p0, v0, v3, v1}, Lcom/zte/zdm/b/c/c/d;->a(Lcom/zte/zdm/d/c/ai;II)I

    move-result v1

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/b/c/c/d;->a(Lcom/zte/zdm/d/c/ai;I)I

    move-result v1

    goto :goto_1
.end method

.method private b(J)I
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/aw;->a([Lcom/zte/zdm/d/c/ai;)V

    iget-boolean v0, p0, Lcom/zte/zdm/b/c/c/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/aw;)J

    move-result-wide v0

    move-wide v1, v0

    :goto_0
    iget-object v4, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zte/zdm/d/c/ai;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v4, v0}, Lcom/zte/zdm/d/c/aw;->a([Lcom/zte/zdm/d/c/ai;)V

    sub-long v0, p1, v1

    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/aw;)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lcom/zte/zdm/d/c/aw;
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/zte/zdm/b/c/c/d;->b(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/b/c/c/d;->a(J)[Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/c/c/d;->a(Ljava/lang/String;[Lcom/zte/zdm/d/c/ai;)Lcom/zte/zdm/d/c/aw;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/zte/zdm/b/c/c/d;->c:I

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/d;->a:Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
