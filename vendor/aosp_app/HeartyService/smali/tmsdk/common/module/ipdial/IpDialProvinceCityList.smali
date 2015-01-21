.class public final Ltmsdk/common/module/ipdial/IpDialProvinceCityList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialProvinceCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->copyFrom(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V

    .line 21
    return-void
.end method


# virtual methods
.method public add(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V
    .locals 1
    .parameter "provinceCity"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->existed(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    return-void
.end method

.method public copyFrom(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialProvinceCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/ipdial/IpDialProvinceCity;>;"
    if-eqz p1, :cond_0

    .line 46
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    .line 48
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    new-instance v3, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-direct {v3, v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0           #c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public copyFrom(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object v2, p1, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    .line 35
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    new-instance v3, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-direct {v3, v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v0           #c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public existed(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)Z
    .locals 8
    .parameter "provinceCity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 98
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, pc:Ljava/lang/String;
    iget-object v6, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    .line 100
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 102
    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 103
    goto :goto_0

    .line 106
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, location:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 108
    goto :goto_0
.end method

.method public get(I)Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    .locals 2
    .parameter "index"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-direct {v1, v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, s:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget-object v3, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    .line 141
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    .end local v0           #c:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public remove(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialProvinceCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
