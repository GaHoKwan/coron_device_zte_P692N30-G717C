.class public final Lcom/nuance/dragon/toolkit/data/Data$String;
.super Lcom/nuance/dragon/toolkit/data/Data;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc1

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;-><init>(S)V

    const-string v0, "value"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$String;
    .locals 2

    const-string v0, "o"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$String;-><init>(Ljava/lang/String;)V

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
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/data/Data;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected final putInJSON(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "value"

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    return-object v0
.end method
