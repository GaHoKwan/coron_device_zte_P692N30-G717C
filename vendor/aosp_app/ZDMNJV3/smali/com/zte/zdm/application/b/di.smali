.class Lcom/zte/zdm/application/b/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/dd;->a(Z)V

    const-string v0, "AndroidMmiController showDownloadCancelConfirmDialog: user click the NO button when confirm cancel!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->c(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v2}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/z;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/di;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    :cond_0
    return-void
.end method
