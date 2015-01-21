.class Lcom/zte/zdm/application/mmi/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/by;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zte/zdm/application/mmi/by;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "is wifi only but wifi is not connect"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xaa

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->b(Lcom/zte/zdm/application/mmi/UIProjectActivity;)Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/by;->c:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "running_activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    goto :goto_0
.end method
