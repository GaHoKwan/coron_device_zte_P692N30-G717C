.class public Lcom/zte/zdm/b/c/b/a;
.super Lcom/zte/zdm/b/c/c/e;


# instance fields
.field private z:[Lcom/zte/zdm/d/c/a;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/b/c/c/e;-><init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->l()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionContext cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    return-void
.end method

.method private A()Lcom/zte/zdm/d/c/l;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/l;->e()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-md5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/l;->g()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->v:Lcom/zte/zdm/d/c/ar;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/l;->a(Lcom/zte/zdm/d/c/ar;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->t:Ljava/lang/String;

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/l;->h()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->v:Lcom/zte/zdm/d/c/ar;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/l;->a(Lcom/zte/zdm/d/c/ar;)V

    goto :goto_0
.end method

.method private B()V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/a;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/c/b/a;->b(I)V

    new-instance v0, Lcom/zte/zdm/d/c/c;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    const/16 v4, 0x4c6

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/c;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I[Lcom/zte/zdm/d/c/ai;)V

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    aput-object v0, v1, v2

    goto :goto_0
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

    invoke-virtual {p0, v2}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/zte/zdm/d/c/bh;-><init>([Lcom/zte/zdm/d/c/a;Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method private a(Lcom/zte/zdm/d/c/a;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->b(Lcom/zte/zdm/d/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/zte/zdm/d/c/bd;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zte/zdm/d/c/bd;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/bd;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/zte/zdm/d/c/c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/zte/zdm/d/c/c;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/c;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/zte/zdm/d/c/b;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/zte/zdm/d/c/b;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/b;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/zte/zdm/d/c/f;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/zte/zdm/d/c/f;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/f;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/zte/zdm/d/c/r;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/zte/zdm/d/c/r;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/r;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/zte/zdm/d/c/w;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/zte/zdm/d/c/w;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/w;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/zte/zdm/d/c/ae;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/zte/zdm/d/c/ae;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/ae;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/zte/zdm/d/c/ag;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/zte/zdm/d/c/ag;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/ag;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/zte/zdm/d/c/at;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/zte/zdm/d/c/at;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/at;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/zte/zdm/d/c/aw;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/zte/zdm/d/c/aw;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/aw;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/zte/zdm/d/c/ay;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zte/zdm/d/c/ay;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/ay;)V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/d/c/ae;)V
    .locals 3

    const-string v0, "processExec"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/p;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ae;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->a(I)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ag;)V
    .locals 3

    const-string v0, "processGet"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/q;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ag;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/at;)V
    .locals 3

    const-string v0, "processReplace"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/r;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/at;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/aw;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ay;)V
    .locals 3

    const-string v0, "processSequence"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/s;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ay;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/b;)V
    .locals 3

    const-string v0, "processAdd"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/b;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/bd;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/c;)V
    .locals 1

    const-string v0, "processAlert"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->d(Lcom/zte/zdm/d/c/c;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->b(Lcom/zte/zdm/d/c/c;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->c(Lcom/zte/zdm/d/c/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4c6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/zte/zdm/d/c/f;)V
    .locals 3

    const-string v0, "processAtomic"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/m;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/f;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/r;)V
    .locals 3

    const-string v0, "processCopy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/n;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/r;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/w;)V
    .locals 3

    const-string v0, "processDelete"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/o;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/w;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/aj;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->E()Lcom/zte/zdm/b/c/c/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/zdm/b/c/c/c;->a(Lcom/zte/zdm/d/c/aj;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v6, v2

    :goto_0
    if-nez v6, :cond_0

    new-array v7, v0, [Lcom/zte/zdm/d/c/c;

    new-instance v0, Lcom/zte/zdm/d/c/c;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/c;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I[Lcom/zte/zdm/d/c/ai;)V

    aput-object v0, v7, v2

    invoke-virtual {p0, v7}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    :cond_0
    move v0, v6

    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {v1}, Lcom/zte/zdm/b/c/c/c;->a()Z

    move-result v6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd5 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/zte/zdm/d/c/bj;
    .locals 11

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v5, Lcom/zte/zdm/d/c/bm;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v6, Lcom/zte/zdm/d/c/bb;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/bj;

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->j()Lcom/zte/zdm/d/c/bo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->k()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->u()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    iget-object v4, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/bj;->k()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bj;-><init>(Lcom/zte/zdm/d/c/bo;Lcom/zte/zdm/d/c/bp;Lcom/zte/zdm/d/c/az;Ljava/lang/String;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Ljava/lang/String;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;)V

    return-object v0

    :cond_0
    new-instance v5, Lcom/zte/zdm/d/c/bm;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/d/c/c;)V
    .locals 1

    const-string v0, "processSessionAbortAlert"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->a(I)V

    return-void
.end method

.method private b(Lcom/zte/zdm/d/c/a;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/zte/zdm/d/c/aj;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->E()Lcom/zte/zdm/b/c/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast p1, Lcom/zte/zdm/d/c/aj;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/zte/zdm/d/c/c;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "processMoreDataAlert"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/zte/zdm/d/c/bd;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/c;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc8

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;I)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {p0, v6}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private d(Lcom/zte/zdm/d/c/c;)V
    .locals 3

    const-string v0, "processUiAlert"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/a/d;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zte/zdm/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/c;)V

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->a()Z

    invoke-interface {v0}, Lcom/zte/zdm/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->b([Lcom/zte/zdm/d/c/a;)V

    return-void
.end method

.method private y()Lcom/zte/zdm/d/c/bd;
    .locals 12

    const/4 v2, 0x1

    const/4 v11, 0x0

    new-array v5, v2, [Lcom/zte/zdm/d/c/bn;

    new-instance v0, Lcom/zte/zdm/d/c/bn;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v11

    new-array v6, v2, [Lcom/zte/zdm/d/c/bc;

    new-instance v0, Lcom/zte/zdm/d/c/bc;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bc;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v11

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/a;->A()Lcom/zte/zdm/d/c/l;

    move-result-object v8

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd4

    move v10, v0

    :goto_0
    new-instance v0, Lcom/zte/zdm/d/c/bd;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

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
    iget v0, p0, Lcom/zte/zdm/b/c/b/a;->w:I

    move v10, v0

    goto :goto_0
.end method

.method private z()Ljava/util/List;
    .locals 13

    const/4 v5, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/zte/zdm/d/c/a;

    instance-of v0, v4, Lcom/zte/zdm/d/c/bd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/bd;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/a;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Lcom/zte/zdm/d/c/u;

    iget v6, p0, Lcom/zte/zdm/b/c/b/a;->w:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/zte/zdm/d/c/u;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v10, v6, [Lcom/zte/zdm/d/c/ai;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bd;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v11
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/a;->y()Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/a;->z()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCommandList size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/c/b/a;->a(Ljava/util/ArrayList;)Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/b/a;->b(Ljava/lang/String;)Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/zte/zdm/d/c/bk;

    invoke-direct {v2, v1, v0}, Lcom/zte/zdm/d/c/bk;-><init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;)V
    :try_end_0
    .catch Lcom/zte/zdm/d/c/au; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/a;->y:Lcom/zte/zdm/b/g/d;

    invoke-virtual {v3}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/zdm/d/c/a;->a(Lcom/zte/zdm/d/c/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Unexpected error"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/bo;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/bp;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/az;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/bm;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/bb;)V

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->r:Lcom/zte/zdm/d/c/bh;

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

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Session end required"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->a(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b([Lcom/zte/zdm/d/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    const-class v1, Lcom/zte/zdm/d/c/a;

    invoke-static {v0, p1, v1}, Lcom/zte/zdm/b/g/a;->a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    return-void
.end method

.method public c()[Lcom/zte/zdm/d/c/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->z:[Lcom/zte/zdm/d/c/a;

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->r()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->s()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->t()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->f()V

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/b/g/d;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/a;->B()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/b/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "processActions: authenticate failed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "===============processActions start==============="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/a;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server response contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " commands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/zte/zdm/b/c/b/a;->a(Lcom/zte/zdm/d/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "===============processActions end  ==============="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
