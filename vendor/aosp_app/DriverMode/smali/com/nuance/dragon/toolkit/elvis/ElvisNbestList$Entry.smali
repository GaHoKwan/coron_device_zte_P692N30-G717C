.class public Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;
    .locals 4

    const-string v0, "constraint"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-direct {v2, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;-><init>(Ljava/lang/String;I)V

    const-string v0, "words"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    :cond_0
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
    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    iget-boolean v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    return v0
.end method

.method public getWords()Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hasGenericSpeech()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->d:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "constraint"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "score"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "words"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
