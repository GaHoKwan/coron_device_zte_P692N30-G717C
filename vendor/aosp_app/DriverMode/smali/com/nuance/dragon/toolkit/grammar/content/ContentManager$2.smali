.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->d(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;->a()V

    return-void
.end method
