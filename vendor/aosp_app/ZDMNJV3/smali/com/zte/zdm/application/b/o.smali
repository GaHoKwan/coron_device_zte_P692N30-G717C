.class Lcom/zte/zdm/application/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/zte/zdm/application/b/n;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/n;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/o;->b:Lcom/zte/zdm/application/b/n;

    iput-object p2, p0, Lcom/zte/zdm/application/b/o;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/o;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/o;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->b(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/o;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v1}, Lcom/zte/zdm/application/b/n;->a(Lcom/zte/zdm/application/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/o;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->c(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/o;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->d(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
