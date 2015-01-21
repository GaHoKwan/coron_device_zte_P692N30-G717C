.class public final Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nuance/dragon/toolkit/util/internal/g;

.field private final d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 7

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iput-boolean p6, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    return v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;
    .locals 8

    const/4 v4, 0x0

    const-string v0, "key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "trans"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "isrecognized"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "words"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v5

    :goto_1
    const-string v0, "dictresult"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v4

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    return-object v0

    :cond_2
    move-object v5, v4

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
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final getDictationResult()Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getExtra()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getWords()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/util/internal/g;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final isRecognized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    return v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "key"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "trans"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v1, :cond_0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "words"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->c:Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/util/List;)Z

    const-string v1, "isrecognized"

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    if-eqz v1, :cond_1

    const-string v1, "dictresult"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;->b:Ljava/lang/String;

    return-object v0
.end method
