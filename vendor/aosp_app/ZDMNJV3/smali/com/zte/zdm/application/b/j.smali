.class Lcom/zte/zdm/application/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/zte/zdm/application/b/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/h;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/j;->b:Lcom/zte/zdm/application/b/h;

    iput-object p2, p0, Lcom/zte/zdm/application/b/j;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/j;->b:Lcom/zte/zdm/application/b/h;

    invoke-static {v0}, Lcom/zte/zdm/application/b/h;->c(Lcom/zte/zdm/application/b/h;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/j;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/j;->b:Lcom/zte/zdm/application/b/h;

    invoke-static {v0}, Lcom/zte/zdm/application/b/h;->d(Lcom/zte/zdm/application/b/h;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/j;->b:Lcom/zte/zdm/application/b/h;

    invoke-static {v0}, Lcom/zte/zdm/application/b/h;->e(Lcom/zte/zdm/application/b/h;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    :cond_0
    return-void
.end method
