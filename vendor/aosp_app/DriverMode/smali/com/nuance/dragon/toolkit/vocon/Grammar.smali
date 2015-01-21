.class public Lcom/nuance/dragon/toolkit/vocon/Grammar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "contexts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "dynmslot"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3, v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->createGrammar(Ljava/util/List;Ljava/util/List;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Error is DynamicSlot or VoconContext list.  Unable to create grammar."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public static createGrammar(Ljava/util/List;Ljava/util/List;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 7

    const/4 v1, 0x0

    const-string v2, "contexts"

    const-string v3, "not null or empty"

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->copy()Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate VoconContext ID in slots: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->copy()Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate DynamicSlot ID in slots: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->copy()Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Lcom/nuance/dragon/toolkit/vocon/VoconContext;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->copy()Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->copy()Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "normal"

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "wordList"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    invoke-direct {v0, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;)V

    const/4 v0, 0x1

    return v0
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method final b(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;->copy()Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getContextByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    return-object v0
.end method

.method public getContexts()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDynamicSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    return-object v0
.end method

.method public getDynamicSlots()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/DynamicSlot;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRequiredWordListIds()Ljava/util/Set;
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/Grammar;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "contexts"

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    const-string v1, "dynmslot"

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getDynamicSlots()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    return-object v0
.end method
