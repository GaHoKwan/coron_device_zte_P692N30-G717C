.class public Lcom/nuance/dragon/toolkit/data/DataSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:S

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private d:Lcom/nuance/dragon/toolkit/data/DataSpec;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(SLjava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->b:Z

    const/16 v0, 0xe0

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->e:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/data/DataSpec;-><init>(SLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    goto :goto_0
.end method

.method private a(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;
    .locals 13

    const/4 v0, 0x0

    const/16 v12, 0x10

    const/16 v11, 0xe0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    iget-short v2, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    if-ne v1, v2, :cond_7

    iget-short v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    if-ne v1, v11, :cond_9

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->e:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->b:Z

    if-eqz v1, :cond_e

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    move-object v4, v0

    move-object v5, v0

    :goto_0
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/DataSpec;

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/data/DataSpec;->a(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_6

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v6, v1

    :goto_2
    invoke-virtual {v4, v6}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v6, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    move-object v6, v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to merge into \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    if-ne v1, v12, :cond_4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    if-ne v1, v12, :cond_4

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-object v1, v2

    check-cast v1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v9

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v9, :cond_0

    invoke-virtual {v1, v7}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->get(I)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v2

    invoke-virtual {v0, v7}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->get(I)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v10

    if-ne v10, v11, :cond_3

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v10

    if-ne v10, v11, :cond_3

    check-cast v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    check-cast v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v3, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->putAll(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :goto_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to merge sequence elements of \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' due to non-dictionary types"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    if-ne v1, v11, :cond_5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    if-ne v1, v11, :cond_5

    check-cast v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->putAll(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to merge multiple data with key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' due to different types"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_5
    return-object v0

    :cond_8
    move-object v0, v5

    goto :goto_5

    :cond_9
    iget-short v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    if-ne v1, v12, :cond_d

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->b:Z

    if-eqz v1, :cond_7

    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>()V

    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    invoke-direct {v3, v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->a(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    if-nez v3, :cond_b

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_6

    :cond_b
    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->add(Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_6

    :cond_c
    move-object v0, v2

    goto :goto_5

    :cond_d
    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->b:Z

    if-eqz v1, :cond_7

    move-object v0, p1

    goto :goto_5

    :cond_e
    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/DataSpec;
    .locals 6

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    const-string v1, "alias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/nuance/dragon/toolkit/data/DataSpec;-><init>(SLjava/lang/String;Z)V

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/DataSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->setSequenceContent(Lcom/nuance/dragon/toolkit/data/DataSpec;)V

    :cond_0
    return-object v2

    :cond_1
    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/data/DataSpec;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/DataSpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/dragon/toolkit/data/DataSpec;->addDictContent(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/DataSpec;)V

    goto :goto_0
.end method


# virtual methods
.method public addDictContent(Ljava/lang/String;SLjava/lang/String;)Lcom/nuance/dragon/toolkit/data/DataSpec;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Lcom/nuance/dragon/toolkit/data/DataSpec;-><init>(SLjava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->addDictContent(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/DataSpec;)V

    return-object v0
.end method

.method public addDictContent(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/DataSpec;)V
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDictContentToDiscard(Ljava/lang/String;S)Lcom/nuance/dragon/toolkit/data/DataSpec;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/nuance/dragon/toolkit/data/DataSpec;-><init>(SLjava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->addDictContent(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/DataSpec;)V

    return-object v0
.end method

.method public getType()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    return v0
.end method

.method public process(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;
    .locals 3

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/data/DataSpec;->a(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setSequenceContent(SLjava/lang/String;)Lcom/nuance/dragon/toolkit/data/DataSpec;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/dragon/toolkit/data/DataSpec;-><init>(SLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/data/DataSpec;->setSequenceContent(Lcom/nuance/dragon/toolkit/data/DataSpec;)V

    return-object v0
.end method

.method public setSequenceContent(Lcom/nuance/dragon/toolkit/data/DataSpec;)V
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "type"

    iget-short v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "alias"

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-string v0, "content"

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->d:Lcom/nuance/dragon/toolkit/data/DataSpec;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/DataSpec;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->a:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    new-instance v3, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/DataSpec;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v5}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/data/DataSpec;

    const-string v6, "data"

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/DataSpec;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "content"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method
