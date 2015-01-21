.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/a;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->a:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->a:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->a:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
