.class public final Lcom/zte/zdm/d/c/ao;
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

    invoke-direct/range {v0 .. v11}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p11}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/zte/zdm/d/c/e;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Ljava/lang/Long;Ljava/lang/Long;[Lcom/zte/zdm/d/c/ad;Lcom/zte/zdm/d/c/an;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/d/c/ao;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/d/c/ao;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/d/c/ao;->d:Lcom/zte/zdm/d/c/e;

    iput-object p4, p0, Lcom/zte/zdm/d/c/ao;->i:Ljava/lang/Long;

    iput-object p6, p0, Lcom/zte/zdm/d/c/ao;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/zdm/d/c/ao;->f:Lcom/zte/zdm/d/c/ar;

    iput-object p8, p0, Lcom/zte/zdm/d/c/ao;->g:Ljava/lang/Long;

    iput-object p9, p0, Lcom/zte/zdm/d/c/ao;->h:Ljava/lang/Long;

    iput-object p11, p0, Lcom/zte/zdm/d/c/ao;->k:Lcom/zte/zdm/d/c/an;

    invoke-virtual {p0, p10}, Lcom/zte/zdm/d/c/ao;->a([Lcom/zte/zdm/d/c/ad;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/an;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->k:Lcom/zte/zdm/d/c/an;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ar;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->f:Lcom/zte/zdm/d/c/ar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextNonce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->d:Lcom/zte/zdm/d/c/e;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->i:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/ad;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->g:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->h:Ljava/lang/Long;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ao;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/zte/zdm/d/c/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->d:Lcom/zte/zdm/d/c/e;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/zte/zdm/d/c/ar;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextNonce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/c/ao;->f:Lcom/zte/zdm/d/c/ar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->f:Lcom/zte/zdm/d/c/ar;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Lcom/zte/zdm/d/c/an;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ao;->k:Lcom/zte/zdm/d/c/an;

    return-object v0
.end method
