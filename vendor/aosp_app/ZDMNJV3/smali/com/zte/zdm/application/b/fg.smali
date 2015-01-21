.class Lcom/zte/zdm/application/b/fg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fg;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "no action on click"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/zte/zdm/application/b/fg;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fg;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
