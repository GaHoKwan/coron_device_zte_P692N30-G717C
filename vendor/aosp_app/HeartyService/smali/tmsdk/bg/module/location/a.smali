.class final Ltmsdk/bg/module/location/a;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private uH:Ltmsdk/bg/tcc/TelNumberLocator;

.field private uI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, municipalityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, muni:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v1           #muni:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public bO(Ljava/lang/String;)Z
    .locals 1
    .parameter "telNum"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/location/a;->uI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    const-class v1, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    .line 51
    .local v0, updatemanager:Ltmsdk/common/module/update/UpdateManager;
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/update/UpdateManager;->removeObserver(J)V

    .line 52
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    return-void
.end method

.method public getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "provinceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :goto_0
    return-object v0

    .line 167
    :cond_0
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ltmsdk/bg/tcc/TelNumberLocator;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 168
    .local v1, directCity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 172
    .end local v0           #cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    invoke-virtual {v3, p1}, Ltmsdk/bg/tcc/TelNumberLocator;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0       #cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 174
    .end local v0           #cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #directCity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerImpl.getCityNameList"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"

    .prologue
    .line 61
    const-string v7, ""

    .line 63
    .local v7, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v1, bufCountry:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v2, bufLocation:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v3, bufOperator:Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Ltmsdk/bg/tcc/TelNumberLocator;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 75
    .end local v1           #bufCountry:Ljava/lang/StringBuffer;
    .end local v2           #bufLocation:Ljava/lang/StringBuffer;
    .end local v3           #bufOperator:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v7

    .line 70
    .restart local v1       #bufCountry:Ljava/lang/StringBuffer;
    .restart local v2       #bufLocation:Ljava/lang/StringBuffer;
    .restart local v3       #bufOperator:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 71
    .local v6, e:Ljava/lang/Exception;
    const-string v7, ""

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 7
    .parameter "country"
    .parameter "location"
    .parameter "operator"
    .parameter "telNumString"

    .prologue
    .line 87
    if-nez p4, :cond_0

    const-string p4, ""

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ltmsdk/bg/tcc/TelNumberLocator;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v6

    .line 96
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "LocationManagerImpl.getLocation"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getProvinceNameList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    invoke-virtual {v3}, Ltmsdk/bg/tcc/TelNumberLocator;->getProvinceNameList()Ljava/util/ArrayList;

    move-result-object v2

    .line 120
    .local v2, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ltmsdk/bg/tcc/TelNumberLocator;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    .local v0, directCity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    invoke-direct {p0, v2, v0}, Ltmsdk/bg/module/location/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0           #directCity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 130
    .end local v2           #provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerImpl.getProvinceNameList"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 34
    iput-object p1, p0, Ltmsdk/bg/module/location/a;->mContext:Landroid/content/Context;

    .line 35
    iget-object v2, p0, Ltmsdk/bg/module/location/a;->mContext:Landroid/content/Context;

    const-string v3, "nldb.sdb"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v2, p0, Ltmsdk/bg/module/location/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltmsdk/bg/tcc/TelNumberLocator;->getDefault(Landroid/content/Context;)Ltmsdk/bg/tcc/TelNumberLocator;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltmsdk/bg/module/location/a;->uI:Ljava/util/ArrayList;

    .line 41
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Ltmsdk/bg/module/location/a;->uH:Ltmsdk/bg/tcc/TelNumberLocator;

    iget-object v3, p0, Ltmsdk/bg/module/location/a;->uI:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ltmsdk/bg/tcc/TelNumberLocator;->getYellowPages(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerImpl"

    const-string v3, "Load yellow page filter failed!!!!!!!!!!"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
