.class final enum Lcom/zte/zdm/b/f/a/l;
.super Lcom/zte/zdm/b/f/a/f;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/b/f/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/a/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/d/f;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->l()Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/f/a/l;->k:Lcom/zte/zdm/d/d/b;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->l()Lcom/zte/zdm/b/f/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/d/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/b/f/d/b;

    sget-object v1, Lcom/zte/zdm/b/f/a/l;->k:Lcom/zte/zdm/d/d/b;

    invoke-virtual {v1, p2}, Lcom/zte/zdm/d/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    return-void
.end method
