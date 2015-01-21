.class public Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "normal"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "domain"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;
    .locals 5

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rebuildmode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    invoke-direct {v3, v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->addWord(Lcom/nuance/dragon/toolkit/grammar/Word;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public addWord(Lcom/nuance/dragon/toolkit/grammar/Word;)V
    .locals 1

    const-string v0, "word"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

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

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public copy()Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRebuildType()I
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

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
    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    goto :goto_0
.end method

.method public getWords(Z)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getRebuildType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot$WordIterator;-><init>(Ljava/util/List;Ljava/util/List;ZB)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasWordList()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

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

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
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

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "id"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "domain"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "rebuildmode"

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->b:Ljava/util/List;

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

    return-object v1
.end method
