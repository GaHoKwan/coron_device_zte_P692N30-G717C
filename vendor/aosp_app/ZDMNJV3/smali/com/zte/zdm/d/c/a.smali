.class public abstract Lcom/zte/zdm/d/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/zte/zdm/d/c/m;

.field protected b:Ljava/lang/Boolean;

.field protected c:Lcom/zte/zdm/d/c/ap;

.field protected d:Lcom/zte/zdm/d/c/s;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/a;->a(Lcom/zte/zdm/d/c/m;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/m;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->a:Lcom/zte/zdm/d/c/m;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/a;->c:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/m;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmdID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/a;->a:Lcom/zte/zdm/d/c/m;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/a;->d:Lcom/zte/zdm/d/c/s;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public d()Lcom/zte/zdm/d/c/s;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->d:Lcom/zte/zdm/d/c/s;

    return-object v0
.end method

.method public e()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/a;->c:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
