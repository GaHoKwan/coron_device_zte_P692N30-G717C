.class public Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field public final langCode:Ljava/lang/String;

.field public final langDescr:Ljava/lang/String;

.field public final score:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->score:I

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;
    .locals 4

    const-string v0, "langCode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "langDescr"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    invoke-direct {v3, v0, v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
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
    check-cast p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->score:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->score:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->score:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "langCode"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "langDescr"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->langDescr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "score"

    iget v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLResult$Language;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
