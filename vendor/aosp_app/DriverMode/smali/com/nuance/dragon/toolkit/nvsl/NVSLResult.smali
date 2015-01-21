.class public final Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:C

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;
    .locals 5

    const-string v0, "voiceid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "gender"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v2, v2

    const-string v3, "genderconf"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, v3}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(CI)V

    const-string v0, "languages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a(Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method final a(CI)V
    .locals 0

    iput-char p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    iput p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

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
    check-cast p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-char v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    iget-char v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getGenderChar()C
    .locals 1

    iget-char v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    return v0
.end method

.method public final getGenderConfidence()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    return v0
.end method

.method public final getLanguages()Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getVoiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getVoiceIdScore()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-char v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "voiceid"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "score"

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "genderconf"

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "gender"

    iget-char v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->d:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "languages"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method
