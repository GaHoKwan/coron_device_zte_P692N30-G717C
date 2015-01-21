.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

.field final synthetic b:Lcom/nuance/dragon/toolkit/util/internal/c;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;Lcom/nuance/dragon/toolkit/util/internal/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->b:Lcom/nuance/dragon/toolkit/util/internal/c;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->a:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    invoke-interface {v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)I

    move-result v3

    if-ge v1, v3, :cond_0

    move v3, v4

    :goto_1
    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->b:Lcom/nuance/dragon/toolkit/util/internal/c;

    if-nez v3, :cond_1

    move v5, v4

    :goto_2
    invoke-virtual {v7, v0, v5}, Lcom/nuance/dragon/toolkit/util/internal/c;->a(Ljava/lang/Object;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4$1;

    invoke-direct {v1, p0, v6}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method
