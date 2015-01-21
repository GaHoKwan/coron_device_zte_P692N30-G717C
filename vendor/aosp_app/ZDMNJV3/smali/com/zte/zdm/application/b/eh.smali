.class Lcom/zte/zdm/application/b/eh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/eh;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/d/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/eh;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->q()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/eh;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->p()V

    goto :goto_0
.end method
