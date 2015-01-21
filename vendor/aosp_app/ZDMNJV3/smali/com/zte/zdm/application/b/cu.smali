.class Lcom/zte/zdm/application/b/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/zte/zdm/application/b/ct;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ct;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cu;->b:Lcom/zte/zdm/application/b/ct;

    iput-object p2, p0, Lcom/zte/zdm/application/b/cu;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/cu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cu;->b:Lcom/zte/zdm/application/b/ct;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ct;->a(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cu;->b:Lcom/zte/zdm/application/b/ct;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ct;->c(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cu;->b:Lcom/zte/zdm/application/b/ct;

    invoke-static {v1}, Lcom/zte/zdm/application/b/ct;->b(Lcom/zte/zdm/application/b/ct;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cu;->b:Lcom/zte/zdm/application/b/ct;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ct;->d(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
