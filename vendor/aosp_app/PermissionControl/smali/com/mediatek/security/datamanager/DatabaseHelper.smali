.class public Lcom/mediatek/security/datamanager/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mPermKeyCache:Ljava/util/HashMap;
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

.field private mPkgKeyCache:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    const-string v0, "permission_control.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPkgKeyCache:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPermKeyCache:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    invoke-direct {p0}, Lcom/mediatek/security/datamanager/DatabaseHelper;->loadDataFromDB()V

    .line 63
    return-void
.end method

.method private initPermissionDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 116
    const/4 v9, 0x0

    .line 118
    .local v9, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v10, "INSERT OR IGNORE INTO permission_settings(packages_name,permission_name,permissions_status) VALUES(?,?,?);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 121
    iget-object v10, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v11, "mobile"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/mom/IMobileManager;

    .line 122
    .local v3, mms:Lcom/mediatek/common/mom/IMobileManager;
    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileManager;->getInstalledPackages()Ljava/util/List;

    move-result-object v4

    .line 123
    .local v4, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_2

    .line 124
    const-string v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "packageInfoList size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 127
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Lcom/mediatek/common/mom/IMobileManager;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 128
    .local v8, permissionList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/mediatek/security/service/PermControlUtils;->getPermRecordListByPkg(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 130
    .local v7, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v7, :cond_0

    .line 131
    const-string v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "permRecordList size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/mom/PermissionRecord;

    .line 134
    .local v6, permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v10, v6, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {v10}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, permCode:Ljava/lang/String;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v9, v10, v5, v11}, Lcom/mediatek/security/datamanager/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #mms:Lcom/mediatek/common/mom/IMobileManager;
    .end local v4           #packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #permCode:Ljava/lang/String;
    .end local v6           #permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    .end local v7           #permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v8           #permissionList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_1

    .line 143
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v10

    .line 142
    .restart local v3       #mms:Lcom/mediatek/common/mom/IMobileManager;
    .restart local v4       #packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    if-eqz v9, :cond_3

    .line 143
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 146
    :cond_3
    return-void
.end method

.method private loadDataFromDB()V
    .locals 10

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 68
    .local v5, permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    const/4 v3, 0x0

    .line 70
    .local v3, permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_0
    const-string v8, "permission_settings"

    invoke-virtual {p0, v8}, Lcom/mediatek/security/datamanager/DatabaseHelper;->getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    move-object v4, v3

    .end local v3           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .local v4, permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object v6, v5

    .line 72
    .end local v5           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .local v6, permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    const-string v8, "packages_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, packageName:Ljava/lang/String;
    const-string v8, "permission_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, permName:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionName(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v8, "permissions_status"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, status:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    .end local v6           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v5       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_2
    new-instance v8, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v1, v2, v9}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_1
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 87
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .end local v4           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v3       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_3
    new-instance v8, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v1, v2, v9}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    move-object v4, v3

    .end local v3           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v4       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object v6, v5

    .line 94
    .end local v5           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v6       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    goto :goto_0

    .line 82
    :cond_0
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    .end local v6           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v5       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_5
    new-instance v8, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v1, v2, v9}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPkgKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #permName:Ljava/lang/String;
    .end local v4           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v7           #status:Ljava/lang/String;
    .restart local v3       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :goto_3
    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v8

    .line 90
    .end local v3           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v2       #permName:Ljava/lang/String;
    .restart local v4       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v7       #status:Ljava/lang/String;
    :cond_2
    :try_start_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    .end local v4           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v3       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_7
    new-instance v8, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v1, v2, v9}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v8, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPermKeyCache:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 97
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #permName:Ljava/lang/String;
    .end local v7           #status:Ljava/lang/String;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v3           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v5           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v4       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v6       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_3
    move-object v3, v4

    .end local v4           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v3       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object v5, v6

    .end local v6           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v5       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_5
    return-void

    .line 97
    .end local v3           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .end local v5           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v4       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v6       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v3       #permRecordListByPerm:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object v5, v6

    .end local v6           #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    .restart local v5       #permRecordListByPkg:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    goto :goto_3
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 150
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 153
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/common/mom/PermissionRecord;)J
    .locals 7
    .parameter "permRecord"

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "packages_name"

    iget-object v5, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v4, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, permCode:Ljava/lang/String;
    const-string v4, "permission_name"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "permissions_status"

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "permission_settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 186
    .local v2, row:J
    return-wide v2
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 195
    const-string v0, "packages_name = ?"

    .line 196
    .local v0, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 197
    .local v1, whereValue:[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "permission_settings"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tableName"

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 170
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getmPermKeyCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPermKeyCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public getmPkgKeyCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mPkgKeyCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 105
    const-string v0, "CREATE TABLE IF NOT EXISTS permission_settings (_id INTEGER primary key autoincrement, packages_name text, permission_name text, permissions_status text)"

    .line 110
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/mediatek/security/datamanager/DatabaseHelper;->initPermissionDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 161
    return-void
.end method

.method public updatePermStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pkgName"
    .parameter "permName"
    .parameter "status"

    .prologue
    .line 207
    const-string v2, "packages_name= ? AND permission_name= ?"

    .line 209
    .local v2, where:Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, permCode:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 211
    .local v3, whereValue:[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "permissions_status"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/mediatek/security/datamanager/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "permission_settings"

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    return-void
.end method
