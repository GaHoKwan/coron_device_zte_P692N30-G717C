.class public Lcom/nuance/dragon/toolkit/elvis/WordSlot;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:Ljava/lang/String;

.field private d:I

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, ":GARBAGE:"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "0"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "1"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "2"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "3"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "4"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "5"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "6"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "7"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "8"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "9"

    invoke-direct {v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    goto :goto_0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;
    .locals 5

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slot_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "rebuild_mode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    invoke-direct {v3, v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;II)V

    const-string v0, "requires_wordlist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->setWordListRequired(Z)V

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "words"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/grammar/Word;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->addWord(Lcom/nuance/dragon/toolkit/grammar/Word;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method final a()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addWord(Lcom/nuance/dragon/toolkit/grammar/Word;)V
    .locals 1

    const-string v0, "word"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWords(Ljava/lang/Iterable;)V
    .locals 3

    const-string v0, "words"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public copy()Lcom/nuance/dragon/toolkit/elvis/WordSlot;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    iget v3, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;-><init>(Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRebuildType()I
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordList;->fullUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    return v0
.end method

.method public getWordListRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    return v0
.end method

.method public getWords(Z)Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getRebuildType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot$WordIterator;-><init>(Ljava/util/List;Ljava/util/List;ZB)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasWordList()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public isGeneric()Z
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWords(Ljava/lang/Iterable;)V
    .locals 3

    const-string v0, "words"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWordListRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "id"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "slot_type"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "rebuild_mode"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "requires_wordlist"

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/util/a/a;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "words"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method
