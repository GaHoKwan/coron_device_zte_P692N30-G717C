.class public Lcom/zte/zdm/application/b/m;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/zte/zdm/application/b/m;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/m;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/zte/zdm/application/b/m;
    .locals 2

    const-class v1, Lcom/zte/zdm/application/b/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/b/m;->a:Lcom/zte/zdm/application/b/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/b/m;

    invoke-direct {v0}, Lcom/zte/zdm/application/b/m;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/b/m;->a:Lcom/zte/zdm/application/b/m;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/b/m;->a:Lcom/zte/zdm/application/b/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/ui/f;->a(Landroid/content/Context;)Lcom/zte/zdm/application/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/ui/f;->b()Lcom/zte/zdm/application/ui/g;

    move-result-object v0

    iget-boolean v2, v0, Lcom/zte/zdm/application/ui/g;->c:Z

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/m;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->c()I

    move-result v2

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->d()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/zte/zdm/a/d;->a(II)V

    invoke-virtual {v0, v5}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/k;->a(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/b/m;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->c()I

    move-result v2

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->d()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/zte/zdm/a/d;->a(II)V

    invoke-virtual {v0, v5}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/k;->a(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->c()I

    move-result v2

    invoke-virtual {v3}, Lcom/zte/zdm/a/d;->d()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/zte/zdm/a/d;->a(II)V

    invoke-virtual {v0, v5}, Lcom/zte/zdm/application/b/k;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/application/b/k;->a(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->G()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->b(I)V

    :cond_0
    return-void
.end method
