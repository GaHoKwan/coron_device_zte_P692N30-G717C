.class public final Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final GATE_CONFIDENCE_UNAVAILABLE:I = -0x1


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    iput p1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    return-object v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 5

    const-string v0, "choices"

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

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    const-string v1, "prompt"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gate_confidence"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 7

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;B)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getChoice(I)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    return-object v0
.end method

.method public final getChoiceCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFirstChoice()Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    return-object v0
.end method

.method public final getGateConfidence()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    return v0
.end method

.method public final getPhrase(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getPhrase(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPhrases()Ljava/util/List;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getPhrases()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public final getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getScore()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/util/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "choices"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "prompt"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "gate_confidence"

    iget v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[no choices]"

    goto :goto_0
.end method
