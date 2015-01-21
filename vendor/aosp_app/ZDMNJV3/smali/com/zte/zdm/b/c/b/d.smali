.class public Lcom/zte/zdm/b/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/c/a;


# instance fields
.field a:Lcom/zte/zdm/b/e/b;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->b()V

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->a()Ljava/lang/String;

    return-void
.end method

.method private b()Lcom/zte/zdm/d/c/bj;
    .locals 11

    new-instance v0, Lcom/zte/zdm/d/c/bj;

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->c()Lcom/zte/zdm/d/c/bo;

    move-result-object v1

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->d()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->e()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->g()Lcom/zte/zdm/d/c/bm;

    move-result-object v5

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->h()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->i()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->j()Z

    move-result v8

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->k()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->l()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bj;-><init>(Lcom/zte/zdm/d/c/bo;Lcom/zte/zdm/d/c/bp;Lcom/zte/zdm/d/c/az;Ljava/lang/String;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Ljava/lang/String;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;)V

    return-object v0
.end method

.method private c()Lcom/zte/zdm/d/c/bo;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    const-string v1, "1.2"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private d()Lcom/zte/zdm/d/c/bp;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "DM/1.2"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private e()Lcom/zte/zdm/d/c/az;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "prepareSessionID sessionId is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "1000"

    :cond_0
    new-instance v1, Lcom/zte/zdm/d/c/az;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/az;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/zte/zdm/d/c/bm;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/bm;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private h()Lcom/zte/zdm/d/c/bb;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/bb;

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->c()Lcom/zte/zdm/mos/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private k()Lcom/zte/zdm/d/c/s;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[authType:data]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(username:password)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "syncml:auth-basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/zte/zdm/d/c/s;

    new-instance v3, Lcom/zte/zdm/d/c/g;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lcom/zte/zdm/d/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v3}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2, v1}, Lcom/zte/zdm/b/e/b;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v3, "syncml:auth-md5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->d()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/b/d/d;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-virtual {v3, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v0, Lcom/zte/zdm/d/c/s;

    new-instance v4, Lcom/zte/zdm/d/c/g;

    invoke-direct {v4, v3, v2}, Lcom/zte/zdm/d/c/g;-><init>(Lcom/zte/zdm/d/c/ap;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    goto :goto_0
.end method

.method private l()Lcom/zte/zdm/d/c/ap;
    .locals 3

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/Long;)V

    const-wide/32 v1, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->c(Ljava/lang/Long;)V

    return-object v0
.end method

.method private m()Lcom/zte/zdm/d/c/bh;
    .locals 3

    new-instance v0, Lcom/zte/zdm/d/c/bh;

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->n()[Lcom/zte/zdm/d/c/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/d/c/bh;-><init>([Lcom/zte/zdm/d/c/a;Z)V

    return-object v0
.end method

.method private n()[Lcom/zte/zdm/d/c/a;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->o()[Lcom/zte/zdm/d/c/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->p()[Lcom/zte/zdm/d/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method private o()[Lcom/zte/zdm/d/c/a;
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x4b1

    invoke-static {v2, v5, v3, v4}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I)Lcom/zte/zdm/d/c/c;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/b;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v5}, Lcom/zte/zdm/b/e/b;->p()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v6}, Lcom/zte/zdm/b/e/b;->s()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v7}, Lcom/zte/zdm/b/e/b;->r()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/c;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->c()Lcom/zte/zdm/mos/b/b/a;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/mos/b/b/a;)Lcom/zte/zdm/d/c/at;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private p()[Lcom/zte/zdm/d/c/a;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->e()Lcom/zte/zdm/b/g/d;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x4b0

    invoke-static {v2, v5, v3, v4}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I)Lcom/zte/zdm/d/c/c;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/zte/zdm/b/g/d;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/zdm/b/c/b/d;->a:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->c()Lcom/zte/zdm/mos/b/b/a;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/mos/b/b/a;)Lcom/zte/zdm/d/c/at;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bk;
    .locals 3

    new-instance v0, Lcom/zte/zdm/d/c/bk;

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->b()Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    invoke-direct {p0}, Lcom/zte/zdm/b/c/b/d;->m()Lcom/zte/zdm/d/c/bh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/d/c/bk;-><init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;)V

    return-object v0
.end method
