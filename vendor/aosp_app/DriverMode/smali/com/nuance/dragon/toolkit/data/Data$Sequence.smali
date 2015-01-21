.class public final Lcom/nuance/dragon/toolkit/data/Data$Sequence;
.super Lcom/nuance/dragon/toolkit/data/Data;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;-><init>(S)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;
    .locals 4

    const-string v0, "o"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/data/Data;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final add(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    invoke-direct {v1, p1}, Lcom/nuance/dragon/toolkit/data/Data$Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add(Lcom/nuance/dragon/toolkit/data/Data;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$String;

    invoke-direct {v1, p1}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add([B)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    invoke-direct {v1, p1}, Lcom/nuance/dragon/toolkit/data/Data$Bytes;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final get(I)Lcom/nuance/dragon/toolkit/data/Data;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    return-object v0
.end method

.method public final getBytes(I)Lcom/nuance/dragon/toolkit/data/Data$Bytes;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

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

.method public final getDictionary(I)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

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

.method public final getInt(I)Lcom/nuance/dragon/toolkit/data/Data$Integer;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

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

.method public final getSequence(I)Lcom/nuance/dragon/toolkit/data/Data$Sequence;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

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

.method public final getString(I)Lcom/nuance/dragon/toolkit/data/Data$String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

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

.method public final getValues()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/data/Data;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected final putInJSON(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
