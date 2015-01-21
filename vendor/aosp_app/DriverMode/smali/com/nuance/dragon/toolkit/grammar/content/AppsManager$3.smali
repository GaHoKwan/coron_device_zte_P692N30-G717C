.class final Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;

.field private c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;Ljava/util/Set;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->b:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->c:Ljava/util/Iterator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$3;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-direct {v3, v0, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v3, v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
