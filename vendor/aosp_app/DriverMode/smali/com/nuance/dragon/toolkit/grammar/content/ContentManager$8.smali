.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;->onDone(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->p(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->q(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->q(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;->onDone(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    :cond_1
    return-void
.end method
