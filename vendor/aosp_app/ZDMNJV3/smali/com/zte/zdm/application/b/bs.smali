.class Lcom/zte/zdm/application/b/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/bs;->b:Lcom/zte/zdm/application/b/s;

    iput-object p2, p0, Lcom/zte/zdm/application/b/bs;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/bs;->b:Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/bs;->a:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/bs;->b:Lcom/zte/zdm/application/b/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/s;->d(Z)V

    return-void
.end method
