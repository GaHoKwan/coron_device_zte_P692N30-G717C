.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->getSize()I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;

    invoke-direct {v1, p0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
