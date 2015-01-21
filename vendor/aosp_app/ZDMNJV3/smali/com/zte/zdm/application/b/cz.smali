.class Lcom/zte/zdm/application/b/cz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/os/PowerManager$WakeLock;

.field final synthetic c:Lcom/zte/zdm/application/b/cy;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cy;Landroid/app/AlertDialog;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    iput-object p2, p0, Lcom/zte/zdm/application/b/cz;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/zte/zdm/application/b/cz;->b:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "start dismiss timer!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->a(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->c()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->b(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->c(Lcom/zte/zdm/application/b/cy;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "looper quit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->c(Lcom/zte/zdm/application/b/cy;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/cz;->c:Lcom/zte/zdm/application/b/cy;

    iget-object v1, p0, Lcom/zte/zdm/application/b/cz;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cy;->a(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
