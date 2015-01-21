.class public Lcom/nuance/dragon/toolkit/grammar/Scenario;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/util/internal/g;

.field private final b:Lcom/nuance/dragon/toolkit/util/internal/g;

.field private final c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "elvisConstraints, voconContext and nvcAsrSpec"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    :goto_1
    iput-object p4, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    goto :goto_1
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/grammar/Scenario;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "cmd"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    const-string v2, "contexts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_2
    const-string v4, "constraints"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Must have a cmd or contexts or constraints key"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    invoke-direct {v3, v5, v1, v2, v0}, Lcom/nuance/dragon/toolkit/grammar/Scenario;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;)V

    return-object v3

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method


# virtual methods
.method public attachSettings(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->attachSettings(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :cond_0
    return-void
.end method

.method public attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "wordList"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->attachWordList(Lcom/nuance/dragon/toolkit/grammar/WordList;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    check-cast p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCloudRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->createRecogSpec()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElvisConstraints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredContactListId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->getContactListId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequiredWordListIds()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->getRequiredCustomWordListIds()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->getStructuredContentIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public getVoconContext()Lcom/nuance/dragon/toolkit/vocon/VoconContext;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    :cond_0
    return-object v0
.end method

.method public getVoconContexts()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    return-object v0
.end method

.method public getWordListCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->getGrammarCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Invalid NVC ASR Spec"

    goto :goto_0
.end method

.method public getWordListType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->getGrammarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Invalid NVC ASR Spec"

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "cmd"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/NvcAsrSpec;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    const-string v1, "contexts"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->b:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    const-string v1, "constraints"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Scenario;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->b(Ljava/lang/String;Ljava/util/List;)Z

    return-object v0
.end method
