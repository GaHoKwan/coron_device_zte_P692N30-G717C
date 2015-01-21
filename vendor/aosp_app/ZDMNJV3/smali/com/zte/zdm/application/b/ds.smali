.class Lcom/zte/zdm/application/b/ds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/b/ds;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v1, v1, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
