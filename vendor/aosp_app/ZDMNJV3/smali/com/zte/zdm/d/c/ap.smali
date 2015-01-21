.class public final Lcom/zte/zdm/d/c/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/zte/zdm/d/c/e;

.field private e:Ljava/lang/String;

.field private f:Lcom/zte/zdm/d/c/ar;

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Long;

.field private j:Ljava/util/ArrayList;

.field private k:Lcom/zte/zdm/d/c/an;

.field private l:Lcom/zte/zdm/d/c/ao;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/d/c/ao;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p5}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/e;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p4}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p6}, Lcom/zte/zdm/d/c/ao;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p7}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/ar;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p8}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p9}, Lcom/zte/zdm/d/c/ao;->c(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p11}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/an;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    invoke-virtual {v0, p10}, Lcom/zte/zdm/d/c/ao;->a([Lcom/zte/zdm/d/c/ad;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/ao;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/ao;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ao;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/d/c/an;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/an;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ap;->l:Lcom/zte/zdm/d/c/ao;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ar;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/ar;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/e;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/e;)V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/ad;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ao;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/ao;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->c(Ljava/lang/Long;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ao;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/zte/zdm/d/c/e;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->e()Lcom/zte/zdm/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/zte/zdm/d/c/ar;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->g()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->h()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->i()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->j()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/zte/zdm/d/c/an;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->a()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ao;->k()Lcom/zte/zdm/d/c/an;

    move-result-object v0

    return-object v0
.end method
