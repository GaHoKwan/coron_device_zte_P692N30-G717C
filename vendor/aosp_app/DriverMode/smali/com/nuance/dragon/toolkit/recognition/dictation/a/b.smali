.class final Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoices;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

.field private c:J

.field private d:J

.field private e:Z

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;IJJJ)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->e:Z

    iput-wide p7, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->f:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

    iput-wide p3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->c:J

    iput-wide p5, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->e:Z

    :cond_2
    return-void
.end method

.method public final a(ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->e:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;

    invoke-virtual {v0, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->e:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final choose(I)V
    .locals 6

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index provided is not within range."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->c:J

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->d:J

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(JJLjava/util/ArrayList;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The DictationEditBuffer has been modified since this AlterChoices object was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChoiceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toStringArray()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->getChoiceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
