.class Lcom/zte/zdm/application/b/ee;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ed;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ed;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ee;->a:Lcom/zte/zdm/application/b/ed;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/ee;->a:Lcom/zte/zdm/application/b/ed;

    iget-object v0, v0, Lcom/zte/zdm/application/b/ed;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->p()V

    return-void
.end method
