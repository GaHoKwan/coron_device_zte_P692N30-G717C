.class Lcom/zte/zdm/application/b/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/cd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cg;->a:Lcom/zte/zdm/application/b/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cg;->a:Lcom/zte/zdm/application/b/cd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->m(Lcom/zte/zdm/application/b/s;)V

    return-void
.end method
