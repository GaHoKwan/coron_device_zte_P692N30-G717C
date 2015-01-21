.class Lcom/zte/zdm/application/b/cr;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/zte/zdm/application/b/cq;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cq;[B)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cr;->b:Lcom/zte/zdm/application/b/cq;

    iput-object p2, p0, Lcom/zte/zdm/application/b/cr;->a:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->b()Lcom/zte/zdm/application/services/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cr;->a:[B

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/services/c;->a([B)V

    return-void
.end method
