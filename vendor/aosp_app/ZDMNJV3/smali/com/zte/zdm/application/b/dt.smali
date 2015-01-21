.class Lcom/zte/zdm/application/b/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dt;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/dt;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->D()V

    return-void
.end method
