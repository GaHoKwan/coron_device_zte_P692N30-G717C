.class public final Lcom/nuance/dragon/toolkit/data/Data$Integer;
.super Lcom/nuance/dragon/toolkit/data/Data;


# instance fields
.field public final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;-><init>(S)V

    iput p1, p0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Integer;
    .locals 2

    const-string v0, "o"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Integer;-><init>(I)V

    return-object v0
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
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/data/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

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
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    iget v2, p0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/data/Data;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final putInJSON(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "value"

    iget v1, p0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
