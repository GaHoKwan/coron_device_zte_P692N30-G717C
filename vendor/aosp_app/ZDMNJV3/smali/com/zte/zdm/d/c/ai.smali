.class public Lcom/zte/zdm/d/c/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bm;

.field private b:Lcom/zte/zdm/d/c/bb;

.field private c:Lcom/zte/zdm/d/c/ap;

.field private d:Lcom/zte/zdm/d/c/n;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->a:Lcom/zte/zdm/d/c/bm;

    iput-object p2, p0, Lcom/zte/zdm/d/c/ai;->b:Lcom/zte/zdm/d/c/bb;

    iput-object p3, p0, Lcom/zte/zdm/d/c/ai;->c:Lcom/zte/zdm/d/c/ap;

    iput-object p4, p0, Lcom/zte/zdm/d/c/ai;->d:Lcom/zte/zdm/d/c/n;

    if-eqz p5, :cond_0

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/ai;->e:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->a:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->c:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->b:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->a:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->d:Lcom/zte/zdm/d/c/n;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/ai;->e:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public b()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->b:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method

.method public c()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->c:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public e()Lcom/zte/zdm/d/c/n;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->d:Lcom/zte/zdm/d/c/n;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->e:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ai;->a:Lcom/zte/zdm/d/c/bm;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
