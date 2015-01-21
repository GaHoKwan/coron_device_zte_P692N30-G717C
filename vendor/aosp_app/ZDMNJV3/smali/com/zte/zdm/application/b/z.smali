.class Lcom/zte/zdm/application/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "AndroidMmiController showDownloadCancelConfirmDialog: user click the NO button when confirm cancel!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v2}, Lcom/zte/zdm/application/b/s;->d(Lcom/zte/zdm/application/b/s;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(Lcom/zte/zdm/a/j;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/b;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->e(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->p()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    iget-object v1, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->f(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/z;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v2}, Lcom/zte/zdm/application/b/s;->g(Lcom/zte/zdm/application/b/s;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/b/s;->a(II)V

    return-void
.end method
