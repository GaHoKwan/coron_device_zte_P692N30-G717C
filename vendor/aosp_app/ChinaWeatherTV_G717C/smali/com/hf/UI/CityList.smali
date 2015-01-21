.class public Lcom/hf/UI/CityList;
.super Ljava/util/ArrayList;
.source "CityList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/hf/model/CityModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private containsCity(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Lcom/hf/model/CityModel;

    .line 42
    .local v0, city:Lcom/hf/model/CityModel;
    invoke-virtual {p0}, Lcom/hf/UI/CityList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/CityModel;

    .line 43
    .local v1, item:Lcom/hf/model/CityModel;
    iget-object v3, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v4, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/hf/model/CityModel;)V
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 21
    const-string v0, "CityList"

    const-string v1, "CityList.add(index) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0, p2}, Lcom/hf/UI/CityList;->containsCity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/hf/model/CityModel;

    invoke-virtual {p0, p1, p2}, Lcom/hf/UI/CityList;->add(ILcom/hf/model/CityModel;)V

    return-void
.end method

.method public add(Lcom/hf/model/CityModel;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 33
    const-string v0, "CityList"

    const-string v1, "CityList.add()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0, p1}, Lcom/hf/UI/CityList;->containsCity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/hf/model/CityModel;

    invoke-virtual {p0, p1}, Lcom/hf/UI/CityList;->add(Lcom/hf/model/CityModel;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/hf/UI/CityList;->containsCity(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(I)Lcom/hf/model/CityModel;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/hf/UI/CityList;->size()I

    move-result v2

    .line 81
    .local v2, len:I
    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v3

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 86
    .local v0, city:Lcom/hf/model/CityModel;
    if-nez v0, :cond_2

    .line 87
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/model/CityModel;

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/hf/UI/CityList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/CityModel;

    .line 90
    .local v1, item:Lcom/hf/model/CityModel;
    iget-object v5, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v6, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/model/CityModel;

    goto :goto_0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/hf/UI/CityList;->remove(I)Lcom/hf/model/CityModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v3, "CityList"

    const-string v4, "CityList.remove()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/hf/model/CityModel;

    .line 65
    .local v0, city:Lcom/hf/model/CityModel;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/hf/UI/CityList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/CityModel;

    .line 69
    .local v1, item:Lcom/hf/model/CityModel;
    iget-object v4, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v5, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    invoke-super {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
