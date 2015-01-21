.class Lcom/zte/zdm/application/b/fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/fj;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/fj;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fk;->a:Lcom/zte/zdm/application/b/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/fk;->a:Lcom/zte/zdm/application/b/fj;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fj;->c:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->v()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fk;->a:Lcom/zte/zdm/application/b/fj;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fj;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
