.class public final Lcom/nuance/dragon/toolkit/vocon/VoconResult;
.super Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

.field private b:Z

.field private c:Z

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:I

.field private g:I

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->UNKNOWN:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    iput v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    iput-wide p2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    const-string v1, "_resultType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    const-string v1, "_isSpeech"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    const-string v1, "_isInGrammar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    const-string v1, "_hypotheses"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_conf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v2

    move v0, v2

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "_items"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "_userID.lo32"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "_userID.lo32"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    const-string v1, "_interpretations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse VoCon results."

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :try_start_1
    const-string v0, "VoCon result type not supported."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_startRule"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    const-string v0, "seamless"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error setting recognized wake-up phrase"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final getChoiceCount()I
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChoiceList()Lorg/json/JSONArray;
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getConfidence()I
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInterpretationCount()I
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInterpretationList()Lorg/json/JSONArray;
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRecognizedWakeupPhrase()Ljava/lang/String;
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResultType()Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    return-object v0
.end method

.method public final getUserID()I
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWakeupEndTimestamp()J
    .locals 9

    const/4 v1, 0x0

    const-string v2, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "_items"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v8, v1

    move-wide v0, v2

    move v2, v8

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "_orthography"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wuw_X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    const-string v7, "_endTimeMs"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_2
    const-string v3, "Unable to parse wake-up end timestamp."

    invoke-static {p0, v3, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-wide v0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public final getWakeupStartTimestamp()J
    .locals 6

    const/4 v0, 0x0

    const-string v1, "ResultType"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-wide/16 v0, -0x1

    :try_start_0
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "_beginTimeMs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "Unable to parse wake-up start timestamp."

    invoke-static {p0, v3, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final hasGenericSpeech(I)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v4, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "_items"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v4, v2

    move v0, v2

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "terminal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "_orthography"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<...>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "_conf"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v6, "_items"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v3, v2

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "terminal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "_orthography"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "<...>"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "_conf"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-lez v7, :cond_3

    move v0, v1

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move v1, v2

    :goto_4
    const-string v2, "Unable to detect generic speech data"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public final hashCode()I
    .locals 7

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->f:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->h:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public final isOutOfGrammar()Z
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSeamlessWakeup()Z
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->j:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSpeech()Z
    .locals 3

    const-string v1, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->b:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "rawres"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->_rawResult:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const-string v2, "ResultType"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v2, ""

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->d:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "_items"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v2

    move v2, v1

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "terminal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_orthography"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v4, "_items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v3, v1

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_orthography"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    const-string v2, "Failed to parse top-entry."

    invoke-static {p0, v2, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_3
.end method
