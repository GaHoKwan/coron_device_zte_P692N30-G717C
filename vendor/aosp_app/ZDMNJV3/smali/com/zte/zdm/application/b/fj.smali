.class Lcom/zte/zdm/application/b/fj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fj;->c:Lcom/zte/zdm/application/b/dd;

    iput-object p2, p0, Lcom/zte/zdm/application/b/fj;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zte/zdm/application/b/fj;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/zte/zdm/application/b/fk;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/fk;-><init>(Lcom/zte/zdm/application/b/fj;)V

    new-instance v1, Lcom/zte/zdm/application/b/fl;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/b/fl;-><init>(Lcom/zte/zdm/application/b/fj;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x8c

    iput v3, v2, Landroid/os/Message;->arg1:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "POSITIVE_RUNABLE"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NEGATIVE_RUNABLE"

    iget-object v4, p0, Lcom/zte/zdm/application/b/fj;->b:Ljava/lang/Runnable;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NEUTRAL_RUNABLE"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fj;->c:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method
