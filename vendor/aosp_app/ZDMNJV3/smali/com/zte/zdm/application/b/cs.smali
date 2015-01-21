.class Lcom/zte/zdm/application/b/cs;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/cq;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cs;->a:Lcom/zte/zdm/application/b/cq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/c;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->g()V

    goto :goto_0
.end method
