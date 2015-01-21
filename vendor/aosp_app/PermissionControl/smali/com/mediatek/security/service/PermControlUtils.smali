.class public Lcom/mediatek/security/service/PermControlUtils;
.super Ljava/lang/Object;
.source "PermControlUtils.java"


# static fields
.field private static final PERM_CODE:[I

.field private static final PERM_ICON:[I

.field private static final PERM_NAME:[Ljava/lang/String;

.field private static sPermControlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_CODE:[I

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sub-permission.MAKE_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sub-permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sub-permission.SEND_MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sub-permission.RECORD_MIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub-permission.QUERY_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub-permission.QUERY_MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub-permission.QUERY_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub-permission.QUERY_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub-permission.ACCESS_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub-permission.OPEN_CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub-permission.CHANGE_NETWORK_STATE_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub-permission.CHANGE_WIFI_STATE_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub-permission.CHANGE_BT_STATE_ON"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_NAME:[Ljava/lang/String;

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_ICON:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 103
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePermission(Lcom/mediatek/common/mom/PermissionRecord;Landroid/content/Context;)V
    .locals 2
    .parameter "permRecord"
    .parameter "context"

    .prologue
    .line 265
    const-string v1, "mobile"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/IMobileManager;

    .line 266
    .local v0, moMService:Lcom/mediatek/common/mom/IMobileManager;
    invoke-interface {v0, p0}, Lcom/mediatek/common/mom/IMobileManager;->setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 267
    invoke-static {p0}, Lcom/mediatek/security/datamanager/DatabaseManager;->modify(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 268
    return-void
.end method

.method public static enablePermissionControl(ZLandroid/content/Context;)V
    .locals 5
    .parameter "state"
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "permission_control_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 278
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 279
    .local v1, notifyManager:Landroid/app/NotificationManager;
    const/16 v2, 0x4b0

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 281
    .end local v1           #notifyManager:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "permission_control_state"

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    const-string v2, "mobile"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/IMobileManager;

    .line 283
    .local v0, moMService:Lcom/mediatek/common/mom/IMobileManager;
    invoke-interface {v0, p0}, Lcom/mediatek/common/mom/IMobileManager;->enablePermissionController(Z)V

    .line 284
    return-void

    .line 281
    .end local v0           #moMService:Lcom/mediatek/common/mom/IMobileManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 251
    .local v3, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 252
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pkgManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PmUtils"

    const-string v5, "get icon is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, appName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 213
    .local v3, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 214
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 215
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pkgManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getControlPermArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_NAME:[Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "permName"

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, msgArray:[Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v2

    .line 360
    .local v2, permIndex:I
    aget-object v0, v1, v2

    .line 361
    .local v0, msg:Ljava/lang/String;
    return-object v0
.end method

.method public static getPermRecordListByPkg(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
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
    .line 296
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    const-string v6, "PmUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPermRecordListByPkg() pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-nez p1, :cond_1

    .line 298
    const-string v6, "PmUtils"

    const-string v7, "permList null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v1, 0x0

    .line 318
    :cond_0
    return-object v1

    .line 301
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/Permission;

    .line 303
    .local v2, permission:Lcom/mediatek/common/mom/Permission;
    iget-object v4, v2, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 305
    .local v4, subPermList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    if-nez v4, :cond_3

    .line 306
    sget-object v6, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    iget-object v7, v2, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    new-instance v3, Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v6, v2, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v3, p0, v6, v7}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    .local v3, record:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v3           #record:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_3
    invoke-static {p0, v4}, Lcom/mediatek/security/service/PermControlUtils;->getSubPermRecordList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 313
    .local v5, subPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    if-eqz v5, :cond_2

    .line 314
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getPermissionIcon(Ljava/lang/String;)I
    .locals 3
    .parameter "permName"

    .prologue
    .line 155
    sget-object v1, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 156
    .local v0, code:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/mediatek/security/service/PermControlUtils;->PERM_ICON:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPermissionIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "permName"

    .prologue
    .line 165
    sget-object v1, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    .local v0, code:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getPermissionLabel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "permName"
    .parameter "permLabelArray"

    .prologue
    .line 145
    sget-object v1, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    .local v0, code:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, p1, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPermissionName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 175
    if-ltz p0, :cond_0

    sget-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_NAME:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private static getSubPermRecordList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 322
    .local p1, subPermList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    const/4 v3, 0x0

    .line 323
    .local v3, subPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/Permission;

    .line 324
    .local v2, subPerm:Lcom/mediatek/common/mom/Permission;
    sget-object v4, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    if-nez v3, :cond_1

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #subPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v3       #subPermRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :cond_1
    new-instance v1, Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v4, v2, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v1, p0, v4, v5}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    .local v1, record:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v1           #record:Lcom/mediatek/common/mom/PermissionRecord;
    .end local v2           #subPerm:Lcom/mediatek/common/mom/Permission;
    :cond_2
    return-object v3
.end method

.method public static initUtil(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 120
    sget-object v6, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 121
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, i:I
    sget-object v0, Lcom/mediatek/security/service/PermControlUtils;->PERM_NAME:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 124
    .local v4, key:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/security/service/PermControlUtils;->sPermControlMap:Ljava/util/Map;

    sget-object v7, Lcom/mediatek/security/service/PermControlUtils;->PERM_CODE:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 127
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method public static isInHouseEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "permission_control_attached"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, state:I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 228
    const/4 v1, 0x1

    .line 230
    .local v1, isPkgInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 231
    .local v2, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v2           #pkgManager:Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    const-string v3, "PmUtils"

    const-string v4, "Package is not installed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showDenyToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "pkgName"
    .parameter "permissionName"

    .prologue
    const/4 v5, 0x1

    .line 343
    invoke-static {p0, p1}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, label:Ljava/lang/String;
    const-string v2, "PmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDenyToast() pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v0, :cond_0

    .line 346
    const v2, 0x7f070009

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, p2}, Lcom/mediatek/security/service/PermControlUtils;->getMessageBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 349
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method
