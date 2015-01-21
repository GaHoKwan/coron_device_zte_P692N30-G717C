.class Lcom/zte/zdm/application/b/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v4, 0x1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->w()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->h(Lcom/zte/zdm/application/b/dd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->g(Lcom/zte/zdm/application/b/dd;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "no_space"

    invoke-virtual {v1, v2, v4}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->u()Lcom/zte/zdm/a/e;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/b/dd;->T()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->i(Lcom/zte/zdm/application/b/dd;)V

    const-string v0, "Memory Insufficient)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    new-instance v0, Lcom/zte/zdm/application/b/fv;

    iget-object v1, p0, Lcom/zte/zdm/application/b/es;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {}, Lcom/zte/zdm/application/b/dd;->T()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/application/b/et;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/b/et;-><init>(Lcom/zte/zdm/application/b/es;)V

    new-instance v4, Lcom/zte/zdm/application/b/eu;

    invoke-direct {v4, p0}, Lcom/zte/zdm/application/b/eu;-><init>(Lcom/zte/zdm/application/b/es;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/zte/zdm/application/b/dd;->U()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/zte/zdm/application/b/fv;-><init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
