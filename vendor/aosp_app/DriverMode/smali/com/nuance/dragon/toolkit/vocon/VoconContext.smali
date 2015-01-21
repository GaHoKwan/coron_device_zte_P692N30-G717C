.class public Lcom/nuance/dragon/toolkit/vocon/VoconContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;
    .locals 5

    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "slotids"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->createVoconContext(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Unable to create VoconContext."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static createVoconContext(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;
    .locals 3

    const-string v0, "fileName"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "slotIds"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public addSlotId(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/nuance/dragon/toolkit/vocon/VoconContext;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

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
    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSlotIds()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTableQueries()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1

    const-string v0, "params"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 1

    const-string v0, "rules"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->c:Ljava/util/List;

    return-void
.end method

.method public setTableQueries(Ljava/util/List;)V
    .locals 4

    const-string v0, "queries"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VoconContext"

    const-string v1, "fuzzy-match (.zcf) context"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    const-string v3, ".zcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->d:Ljava/util/List;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "filename"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "slotids"

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getSlotIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->b(Ljava/lang/String;Ljava/util/List;)Z

    return-object v0
.end method
