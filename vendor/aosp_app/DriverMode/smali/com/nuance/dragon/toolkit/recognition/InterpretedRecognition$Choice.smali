.class public final Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/List;

.field private final e:I

.field private final f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final g:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->isRecognized()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->g:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;
    .locals 7

    const-string v0, "trans"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "score"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "phrases"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v5

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-object v0
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
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->g:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->g:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final getExtra()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public final getPhrase(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    return-object v0
.end method

.method public final getPhrases()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getRecognitionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final isAllRecognized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->g:Z

    return v0
.end method

.method public final matches(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final resolveUnrecognizedPhrases(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Z)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->isAllRecognized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->getKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->matches(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v7}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getPhrase(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-object v1, v3

    :goto_2
    if-nez v1, :cond_3

    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to resolve unrecognized phrases in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :cond_2
    iget-object v7, v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v7, :cond_6

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v5, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->putAll(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    const-string v1, " "

    invoke-static {v4, v1}, Lcom/nuance/dragon/toolkit/util/internal/h;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_6
    move-object v1, v3

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "trans"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "type"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "score"

    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v0, :cond_0

    const-string v0, "extra"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->f:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    :cond_0
    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/util/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "phrases"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->a:Ljava/lang/String;

    return-object v0
.end method
