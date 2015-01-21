.class public Lcom/mediatek/security/datamanager/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;
    }
.end annotation


# static fields
.field private static sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

.field private static sPermKeyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPkgKeyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    invoke-static {p0, p1}, Lcom/mediatek/security/datamanager/DatabaseManager;->getPermRecordListForNewPkg(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, newPkgPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/mediatek/security/datamanager/DatabaseManager;->delete(Ljava/lang/String;)V

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/PermissionRecord;

    .line 125
    .local v2, permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Pkg_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    invoke-static {v2, v3, v4}, Lcom/mediatek/security/datamanager/DatabaseManager;->addIntoCache(Lcom/mediatek/common/mom/PermissionRecord;Ljava/util/Map;Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;)V

    .line 126
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Perm_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    invoke-static {v2, v3, v4}, Lcom/mediatek/security/datamanager/DatabaseManager;->addIntoCache(Lcom/mediatek/common/mom/PermissionRecord;Ljava/util/Map;Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;)V

    .line 127
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/mediatek/security/datamanager/DatabaseHelper;->add(Lcom/mediatek/common/mom/PermissionRecord;)J

    goto :goto_0

    .line 130
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_0
    return-object v1
.end method

.method private static addIntoCache(Lcom/mediatek/common/mom/PermissionRecord;Ljava/util/Map;Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;)V
    .locals 3
    .parameter "permRecord"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;",
            "Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    invoke-static {p0, p2}, Lcom/mediatek/security/datamanager/DatabaseManager;->getKeyValue(Lcom/mediatek/common/mom/PermissionRecord;Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, key:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, newPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p0}, Lcom/mediatek/security/datamanager/DatabaseManager;->deletePermKeyCache(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    invoke-virtual {v0, p0}, Lcom/mediatek/security/datamanager/DatabaseHelper;->delete(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method private static deletePermKeyCache(Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 189
    sget-object v7, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 190
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, key:Ljava/lang/String;
    sget-object v7, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 193
    .local v6, recordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const/4 v4, 0x0

    .line 194
    .local v4, pos:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/mom/PermissionRecord;

    .line 195
    .local v5, record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v7, v5, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #pos:I
    .end local v5           #record:Lcom/mediatek/common/mom/PermissionRecord;
    .end local v6           #recordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_2
    return-void
.end method

.method public static getAllPermRecordList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    sget-object v4, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 62
    .local v1, entry:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .restart local v3       #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    :cond_1
    return-object v3
.end method

.method private static getKeyValue(Lcom/mediatek/common/mom/PermissionRecord;Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;)Ljava/lang/String;
    .locals 2
    .parameter "permRecord"
    .parameter "type"

    .prologue
    .line 215
    sget-object v1, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Pkg_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    if-ne p1, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 220
    .local v0, key:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 218
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 78
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    return-object v2
.end method

.method public static getPermRecordListByPermName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "permName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v1, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, permissionRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPermRecordListByPkgName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v1, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    .local v0, permissionRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPermRecordListForNewPkg(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    invoke-static {p0, p1}, Lcom/mediatek/security/service/PermControlUtils;->getPermRecordListByPkg(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-nez v3, :cond_1

    .line 142
    const-string v5, "DatabaseManager"

    const-string v6, "permRecordList = null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v3, 0x0

    .line 160
    .end local v3           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_0
    return-object v3

    .line 145
    .restart local v3       #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_1
    sget-object v5, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    sget-object v5, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 147
    .local v2, origList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v1, map1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/mom/PermissionRecord;

    .line 150
    .local v4, record:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-virtual {v4}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 151
    iget-object v5, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    .end local v4           #record:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/mom/PermissionRecord;

    .line 155
    .restart local v4       #record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v5, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 156
    iget-object v5, v4, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    goto :goto_1
.end method

.method public static initPermControlData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "DatabaseManager"

    const-string v1, "PermControlService constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "DatabaseManager"

    const-string v1, "new DatabaseHelper"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/mediatek/security/datamanager/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/security/datamanager/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    .line 36
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    invoke-virtual {v0}, Lcom/mediatek/security/datamanager/DatabaseHelper;->getmPkgKeyCache()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    invoke-virtual {v0}, Lcom/mediatek/security/datamanager/DatabaseHelper;->getmPermKeyCache()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Lcom/mediatek/security/datamanager/DatabaseManager;->printCache()V

    .line 40
    :cond_0
    return-void
.end method

.method public static modify(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4
    .parameter "permRecord"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/mediatek/security/datamanager/DatabaseManager;->modifyCache(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 210
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager;->sDataBaseHelper:Lcom/mediatek/security/datamanager/DatabaseHelper;

    iget-object v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/security/datamanager/DatabaseHelper;->updatePermStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method private static modifyCache(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 6
    .parameter "permRecord"

    .prologue
    .line 224
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 225
    .local v1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/PermissionRecord;

    .line 227
    .local v2, record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v3, v2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    goto :goto_0

    .line 232
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #record:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_1
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something not right need to check mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    check-cast v1, Ljava/util/List;

    .line 235
    .restart local v1       #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v1, :cond_4

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/PermissionRecord;

    .line 237
    .restart local v2       #record:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v3, v2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    goto :goto_1

    .line 242
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #record:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_4
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something not right need to check mPermissionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_5
    return-void
.end method

.method private static printCache()V
    .locals 6

    .prologue
    .line 43
    const-string v3, "DatabaseManager"

    const-string v4, "****************Pkg Cache****************"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 45
    .local v1, entry:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    const-string v4, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " value = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    :cond_0
    const-string v3, "DatabaseManager"

    const-string v4, "****************Permission Cache****************"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v3, Lcom/mediatek/security/datamanager/DatabaseManager;->sPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    const-string v4, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " value = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;>;"
    :cond_1
    return-void
.end method
