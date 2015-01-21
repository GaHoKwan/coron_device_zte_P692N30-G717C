.class Lcom/zte/zdm/application/b/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/dd;->a(Z)V

    const-string v0, "AndroidMmiController showDownloadCancelConfirmDialog: user click the YES button when confirm cancel!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->s:Lcom/zte/zdm/a/e;

    invoke-interface {v0}, Lcom/zte/zdm/a/e;->g()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/dh;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/d/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/d/a/c;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/a/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->c()V

    return-void
.end method
