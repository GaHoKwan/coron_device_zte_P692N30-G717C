.class public Lcom/zte/zdm/mo/notification/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/b/b;
.implements Lcom/zte/zdm/b/e/e;


# instance fields
.field private a:Lcom/zte/zdm/mo/notification/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/zte/zdm/mo/notification/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const-string v0, "verify TreeProfile after notification serialize."

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->m()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "NiaObserver  notifyDmSessionCompleted"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->l()Z

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mo/notification/c;->e(I)Z

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0, p1}, Lcom/zte/zdm/mo/notification/c;->d(I)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->n()Z

    return-void
.end method

.method public n()Lcom/zte/zdm/d/a/b;
    .locals 1

    const-string v0, "into notifyCreateConnectionListener"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->o()Lcom/zte/zdm/d/a/b;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->r()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mo/notification/b;->a:Lcom/zte/zdm/mo/notification/c;

    invoke-interface {v0}, Lcom/zte/zdm/mo/notification/c;->s()V

    return-void
.end method
