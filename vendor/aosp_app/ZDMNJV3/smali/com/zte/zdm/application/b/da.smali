.class Lcom/zte/zdm/application/b/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/PowerManager$WakeLock;

.field final synthetic b:Lcom/zte/zdm/application/b/cy;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cy;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/da;->b:Lcom/zte/zdm/application/b/cy;

    iput-object p2, p0, Lcom/zte/zdm/application/b/da;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "click positive button!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/da;->b:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->d(Lcom/zte/zdm/application/b/cy;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/da;->b:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->e(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/da;->b:Lcom/zte/zdm/application/b/cy;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cy;->f(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/da;->b:Lcom/zte/zdm/application/b/cy;

    iget-object v1, p0, Lcom/zte/zdm/application/b/da;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/cy;->a(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
