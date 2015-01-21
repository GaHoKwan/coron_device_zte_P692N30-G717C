.class final Lcom/nuance/dragon/toolkit/grammar/content/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/a;

.field private final b:Ljava/util/List;

.field private final c:La/a/m;

.field private d:La/a/m;

.field private final e:Ljava/util/Iterator;

.field private final f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->a:Lcom/nuance/dragon/toolkit/grammar/content/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->c:La/a/m;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->g:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->e:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->f:I

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->i:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->i:Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->a:Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->c:La/a/m;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    :goto_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->getChecksum()I

    move-result v3

    invoke-static {v1, p0, v2, v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/util/List;La/a/m;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final acceptChanges()V
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final discardChanges()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->a(Z)V

    return-void
.end method

.method public final getChecksum()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->h:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->f:I

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->g:I

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->h:I

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/Word;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->h:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    invoke-virtual {v1, v0}, La/a/m;->a(Ljava/lang/Object;)La/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    invoke-virtual {v2, v1}, La/a/m;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    invoke-virtual {v2, v1}, La/a/m;->b(Ljava/lang/Object;)La/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->d:La/a/m;

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->h:I

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/Word;->hashCode()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;->h:I

    goto :goto_0
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
