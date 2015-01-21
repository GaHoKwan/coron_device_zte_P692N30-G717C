.class Lcom/zte/zdm/application/b/ao;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/an;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/an;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ao;->a:Lcom/zte/zdm/application/b/an;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ao;->a:Lcom/zte/zdm/application/b/an;

    iget-object v0, v0, Lcom/zte/zdm/application/b/an;->a:Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->p()V

    return-void
.end method
