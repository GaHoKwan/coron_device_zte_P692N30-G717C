.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->a:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
