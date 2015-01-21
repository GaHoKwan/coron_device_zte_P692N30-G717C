.class public final Lcom/zte/zdm/d/c/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bc;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/zte/zdm/d/c/p;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/zte/zdm/d/c/p;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/zte/zdm/d/c/t;

.field private i:Lcom/zte/zdm/d/c/bi;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/v;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/v;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bc;Ljava/lang/String;JLcom/zte/zdm/d/c/p;[Lcom/zte/zdm/d/c/p;Lcom/zte/zdm/d/c/p;[Lcom/zte/zdm/d/c/p;Lcom/zte/zdm/d/c/t;Lcom/zte/zdm/d/c/bi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/v;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/v;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/v;->a(Lcom/zte/zdm/d/c/bc;)V

    invoke-virtual {p0, p3, p4}, Lcom/zte/zdm/d/c/v;->a(J)V

    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/v;->a(Lcom/zte/zdm/d/c/p;)V

    invoke-virtual {p0, p6}, Lcom/zte/zdm/d/c/v;->a([Lcom/zte/zdm/d/c/p;)V

    invoke-virtual {p0, p7}, Lcom/zte/zdm/d/c/v;->b(Lcom/zte/zdm/d/c/p;)V

    invoke-virtual {p0, p8}, Lcom/zte/zdm/d/c/v;->b([Lcom/zte/zdm/d/c/p;)V

    invoke-virtual {p0, p10}, Lcom/zte/zdm/d/c/v;->a(Lcom/zte/zdm/d/c/bi;)V

    iput-object p2, p0, Lcom/zte/zdm/d/c/v;->b:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/zdm/d/c/v;->h:Lcom/zte/zdm/d/c/t;

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bc;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->a:Lcom/zte/zdm/d/c/bc;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal maxGUIDSize value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/zte/zdm/d/c/v;->c:J

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bc;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourceRef cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->a:Lcom/zte/zdm/d/c/bc;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bi;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syncCap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->i:Lcom/zte/zdm/d/c/bi;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/p;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rxPref cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->d:Lcom/zte/zdm/d/c/p;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/t;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->h:Lcom/zte/zdm/d/c/t;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->b:Ljava/lang/String;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/p;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rx cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/zte/zdm/d/c/p;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "txPref cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/v;->f:Lcom/zte/zdm/d/c/p;

    return-void
.end method

.method public b([Lcom/zte/zdm/d/c/p;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tx cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/d/c/v;->c:J

    return-wide v0
.end method

.method public d()Lcom/zte/zdm/d/c/p;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->d:Lcom/zte/zdm/d/c/p;

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Lcom/zte/zdm/d/c/p;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->f:Lcom/zte/zdm/d/c/p;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/d/c/t;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->h:Lcom/zte/zdm/d/c/t;

    return-object v0
.end method

.method public i()Lcom/zte/zdm/d/c/bi;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/v;->i:Lcom/zte/zdm/d/c/bi;

    return-object v0
.end method
