.class public Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field private final b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field private final c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;->combine(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    goto :goto_0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "local"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v0, "remote"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v0, "slots_to_update"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v1

    :goto_2
    if-nez v6, :cond_2

    move-object v2, v1

    :goto_3
    if-nez v5, :cond_3

    move-object v0, v1

    :goto_4
    new-instance v1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;-><init>(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Ljava/util/List;)V

    return-object v1

    :cond_1
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_3
    invoke-static {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v4, v1

    goto :goto_1
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
    check-cast p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getEventualRemoteError()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalResult()Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object v0
.end method

.method public getRawLocalResult()Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawRemoteResults()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteResult()Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object v0
.end method

.method public getResult()Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object v0
.end method

.method public getSlotsToUpdate()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "result"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->a:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    if-eqz v0, :cond_1

    const-string v0, "remote"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->b:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionResult;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "slots_to_update"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method
