.class public Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field public final fullPhrase:Ljava/lang/String;

.field public final isGenericSpeech:Z

.field public final phraseId:I

.field public final spokenForm:Ljava/lang/String;

.field public final surfaceForm:Ljava/lang/String;

.field public final wordIds:[I

.field public final wordSlot:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p3, 0x0

    :cond_1
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    iput p6, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->phraseId:I

    iput-boolean p7, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "slot"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "surface"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spoken"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phrase"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "generic"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v5, "phraseid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v5, "wordids"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    :goto_0
    array-length v9, v5

    if-ge v0, v9, :cond_1

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    aput v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v0, [I

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->phraseId:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->phraseId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->phraseId:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "slot"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "surface"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "spoken"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "phrase"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "generic"

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "phraseid"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->phraseId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "wordids"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-eqz v0, :cond_0

    const-string v0, "[?]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    goto :goto_0
.end method
