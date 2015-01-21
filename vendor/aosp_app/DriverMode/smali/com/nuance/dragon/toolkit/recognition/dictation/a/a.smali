.class final Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoice;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v5

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v5

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-eq v5, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v1

    sget-object v3, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v1, v3, :cond_6

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->hasNoSpaceAfterDirective()Z

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceBeforeDirective()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    const-string v4, " "

    sget-object v5, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v3, v4, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceAfterDirective()Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    move v1, v4

    goto :goto_1
.end method

.method public final editorItemAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method
