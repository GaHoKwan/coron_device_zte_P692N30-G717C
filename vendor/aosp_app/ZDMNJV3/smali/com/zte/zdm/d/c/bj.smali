.class public Lcom/zte/zdm/d/c/bj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bo;

.field private b:Lcom/zte/zdm/d/c/bp;

.field private c:Lcom/zte/zdm/d/c/az;

.field private d:Ljava/lang/String;

.field private e:Lcom/zte/zdm/d/c/bm;

.field private f:Lcom/zte/zdm/d/c/bb;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Lcom/zte/zdm/d/c/s;

.field private j:Lcom/zte/zdm/d/c/ap;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bo;Lcom/zte/zdm/d/c/bp;Lcom/zte/zdm/d/c/az;Ljava/lang/String;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Ljava/lang/String;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/bj;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/bo;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/bp;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/az;)V

    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/bm;)V

    invoke-virtual {p0, p6}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/bb;)V

    if-eqz p8, :cond_0

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/zte/zdm/d/c/bj;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/zdm/d/c/bj;->i:Lcom/zte/zdm/d/c/s;

    iput-object p10, p0, Lcom/zte/zdm/d/c/bj;->j:Lcom/zte/zdm/d/c/ap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bo;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->a:Lcom/zte/zdm/d/c/bo;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->j:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/az;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->c:Lcom/zte/zdm/d/c/az;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->f:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->e:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bo;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "verDTD cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->a:Lcom/zte/zdm/d/c/bo;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bp;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "verProto cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->b:Lcom/zte/zdm/d/c/bp;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->i:Lcom/zte/zdm/d/c/s;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/bp;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->b:Lcom/zte/zdm/d/c/bp;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bj;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/zte/zdm/d/c/az;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->c:Lcom/zte/zdm/d/c/az;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->e:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public f()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->f:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->h:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public j()Lcom/zte/zdm/d/c/s;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->i:Lcom/zte/zdm/d/c/s;

    return-object v0
.end method

.method public k()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bj;->j:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method
