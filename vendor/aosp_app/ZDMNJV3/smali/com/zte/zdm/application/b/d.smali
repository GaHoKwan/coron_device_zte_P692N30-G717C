.class Lcom/zte/zdm/application/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/zte/zdm/application/b/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/c;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/d;->b:Lcom/zte/zdm/application/b/c;

    iput-object p2, p0, Lcom/zte/zdm/application/b/d;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/d;->b:Lcom/zte/zdm/application/b/c;

    invoke-static {v0}, Lcom/zte/zdm/application/b/c;->a(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/d;->b:Lcom/zte/zdm/application/b/c;

    invoke-static {v0}, Lcom/zte/zdm/application/b/c;->b(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
