.class public final Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
.super Lcom/nuance/dragon/toolkit/data/Data;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;-><init>(S)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 6

    const-string v0, "o"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/data/Data;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

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
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    return-object v0
.end method

.method public final getBytes(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Bytes;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data;->a(Lcom/nuance/dragon/toolkit/data/Data;)S

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDictionary(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data;->a(Lcom/nuance/dragon/toolkit/data/Data;)S

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEntries()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getInt(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Integer;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data;->a(Lcom/nuance/dragon/toolkit/data/Data;)S

    move-result v1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSequence(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data;->a(Lcom/nuance/dragon/toolkit/data/Data;)S

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data;->a(Lcom/nuance/dragon/toolkit/data/Data;)S

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/data/Data;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final put(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    invoke-direct {v1, p2}, Lcom/nuance/dragon/toolkit/data/Data$Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V
    .locals 1

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-direct {v1, p2}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final put(Ljava/lang/String;[B)V
    .locals 2

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    invoke-direct {v1, p2}, Lcom/nuance/dragon/toolkit/data/Data$Bytes;-><init>([B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putAll(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected final putInJSON(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
