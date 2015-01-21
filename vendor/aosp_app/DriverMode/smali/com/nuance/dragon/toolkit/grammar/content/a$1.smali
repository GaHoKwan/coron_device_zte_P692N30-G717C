.class final Lcom/nuance/dragon/toolkit/grammar/content/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Lcom/nuance/dragon/toolkit/grammar/content/a;)La/a/m;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
