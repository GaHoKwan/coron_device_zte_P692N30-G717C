.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
.super Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentences constituting the dictation result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "sentences"

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

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-direct {v1, v3, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v1
.end method

.method private a(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const-string v1, "utterance-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "utterance-length"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const-string v3, "utterance-length"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const-string v1, "processed-audio-frame-count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "processed-audio-frame-count"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const-string v3, "processed-audio-frame-count"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "InputAudioLength"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    const-string v2, "InputAudioLength"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method final a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    goto :goto_0
.end method

.method public final append(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newDR cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v8

    move-wide v2, v6

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getEndTime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    move-wide v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    invoke-virtual {p1, v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-object v1, v0

    :goto_2
    invoke-virtual {p0, v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;JJJ)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v0

    move v1, v0

    :goto_3
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0, v2, v3, v8}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JI)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->getExtraInformation()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(Ljava/util/Map;)V

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
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getAlternatives(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/Alternatives;
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Getting alternatives of at times ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p3, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getEndTime()J

    move-result-wide v4

    cmp-long v7, v4, v2

    if-lez v7, :cond_2

    move-wide v2, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, p1, v2

    if-ltz v0, :cond_4

    move-object v0, v6

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JJ)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/c;

    invoke-direct {v4, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/c;-><init>(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Got alternative ["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] for sentence at index "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/c;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got no alternative for sentence at index "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v6

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/d;

    invoke-direct {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/d;-><init>(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final getExtraInformation()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final merge(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;JJ)V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    cmp-long v0, p2, v3

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timings cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, p4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The timings are corrupted, the timingBegin is greater than the timingEnd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v8

    move-wide v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getEndTime()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    move-wide v1, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long v0, p4, v1

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timingEnd is greater than maximum time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v8

    move-wide v6, v3

    :goto_1
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getEndTime()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    move-wide v6, v2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move v9, v8

    :goto_2
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-virtual {v0, v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;JJJ)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {p1, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0, p2, p3, v8}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JI)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->getExtraInformation()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 5

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/util/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "sentences"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "extra"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
