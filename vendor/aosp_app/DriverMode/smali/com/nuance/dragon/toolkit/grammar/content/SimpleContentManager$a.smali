.class final Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->b:I

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->b:I

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/SimpleContentManager$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
