.class Lcom/zte/zdm/application/b/as;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ar;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/as;->a:Lcom/zte/zdm/application/b/ar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/as;->a:Lcom/zte/zdm/application/b/ar;

    iget-object v0, v0, Lcom/zte/zdm/application/b/ar;->a:Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->p()V

    return-void
.end method
