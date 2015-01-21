.class public Lcom/zte/zdm/b/c/b/b;
.super Lcom/zte/zdm/b/c/c/e;


# instance fields
.field private z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/b/c/c/e;-><init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/b;->z:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->l()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lcom/zte/zdm/d/c/bh;
    .locals 3

    new-instance v1, Lcom/zte/zdm/d/c/bh;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/zte/zdm/b/c/b/b;->c(I)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/zte/zdm/d/c/bh;-><init>([Lcom/zte/zdm/d/c/a;Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/b;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)Lcom/zte/zdm/d/c/bj;
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v5, Lcom/zte/zdm/d/c/bm;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v6, Lcom/zte/zdm/d/c/bb;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/bj;

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->j()Lcom/zte/zdm/d/c/bo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->k()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->u()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    iget-object v4, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/bj;->k()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bj;-><init>(Lcom/zte/zdm/d/c/bo;Lcom/zte/zdm/d/c/bp;Lcom/zte/zdm/d/c/az;Ljava/lang/String;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Ljava/lang/String;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;)V

    return-object v0

    :cond_0
    new-instance v5, Lcom/zte/zdm/d/c/bm;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Lcom/zte/zdm/d/c/bd;
    .locals 12

    const/4 v2, 0x1

    const/4 v11, 0x0

    new-array v5, v2, [Lcom/zte/zdm/d/c/bn;

    new-instance v0, Lcom/zte/zdm/d/c/bn;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v11

    new-array v6, v2, [Lcom/zte/zdm/d/c/bc;

    new-instance v0, Lcom/zte/zdm/d/c/bc;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bc;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v11

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/b;->f()Lcom/zte/zdm/d/c/l;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd4

    move v10, v0

    :goto_0
    new-instance v0, Lcom/zte/zdm/d/c/bd;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "SyncHdr"

    const/4 v7, 0x0

    new-instance v9, Lcom/zte/zdm/d/c/u;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/zte/zdm/d/c/u;-><init>(Ljava/lang/String;)V

    new-array v10, v11, [Lcom/zte/zdm/d/c/ai;

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bd;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/zte/zdm/b/c/b/b;->w:I

    move v10, v0

    goto :goto_0
.end method

.method private f()Lcom/zte/zdm/d/c/l;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/l;->e()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-md5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/l;->g()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->v:Lcom/zte/zdm/d/c/ar;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/l;->a(Lcom/zte/zdm/d/c/ar;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/l;->h()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->v:Lcom/zte/zdm/d/c/ar;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/l;->a(Lcom/zte/zdm/d/c/ar;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/b;->d()Lcom/zte/zdm/d/c/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->c()Lcom/zte/zdm/mos/b/b/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/mos/b/b/a;)Lcom/zte/zdm/d/c/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->i()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/b;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v5}, Lcom/zte/zdm/b/e/b;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/b/b;->a(Ljava/util/ArrayList;)Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/b;->b(Ljava/lang/String;)Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    new-instance v2, Lcom/zte/zdm/d/c/bk;

    invoke-direct {v2, v1, v0}, Lcom/zte/zdm/d/c/bk;-><init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4b0

    invoke-static {v1, v2, v3, v4}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I)Lcom/zte/zdm/d/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bo;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bp;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/az;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bm;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bb;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/a;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/zte/zdm/b/c/b/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->z:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/zte/zdm/d/c/a;I)I
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/zte/zdm/b/c/b/b;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    const-class v2, Lcom/zte/zdm/d/c/c;

    invoke-static {v0, v2}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    const/16 v4, 0x4c7

    if-ne v0, v4, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Session end required"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/b;->a(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->r()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/b;->a(Lcom/zte/zdm/b/g/d;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/b;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/b;->a(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->s()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/b;->t()V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/b;->b(I)V

    goto :goto_0
.end method
