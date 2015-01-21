.class Lcom/zte/zdm/application/mmi/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/as;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/as;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/as;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/d/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "is wifi only but wifi is not connect"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xaa

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/as;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/as;->b:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->c(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    goto :goto_0
.end method
