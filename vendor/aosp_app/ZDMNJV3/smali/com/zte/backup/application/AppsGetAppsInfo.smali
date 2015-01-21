.class public Lcom/zte/backup/application/AppsGetAppsInfo;
.super Ljava/lang/Object;
.source "AppsGetAppsInfo.java"


# instance fields
.field private name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private res:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/backup/application/BackupAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 26
    .parameter "context"
    .parameter "bNeedDataSize"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/backup/application/AppsGetAppsInfo;->res:Ljava/util/ArrayList;

    .line 17
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/backup/application/AppsGetAppsInfo;->name:Ljava/util/List;

    .line 20
    const/4 v15, 0x0

    .line 21
    .local v15, localPackageManager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    .line 22
    .local v13, localList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v9, 0x0

    .line 24
    .local v9, i:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 25
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 26
    if-eqz v13, :cond_0

    .line 27
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    .line 29
    :cond_0
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    if-lt v11, v9, :cond_1

    .line 86
    return-void

    .line 30
    :cond_1
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 31
    .local v14, localPackageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 35
    .local v12, k:I
    and-int/lit8 v22, v12, 0x1

    if-nez v22, :cond_3

    and-int/lit8 v22, v12, 0x8

    if-nez v22, :cond_3

    and-int/lit8 v22, v12, 0x10

    if-nez v22, :cond_3

    and-int/lit16 v0, v12, 0x100

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 38
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 39
    .local v17, publicSourceDir:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    .line 40
    .local v5, apklen:I
    const-string v22, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 41
    .local v10, indexOfLastSlash:I
    add-int/lit8 v22, v10, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, apkString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/backup/application/AppsGetAppsInfo;->name:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v16, Lcom/zte/backup/application/BackupAppInfo;

    invoke-direct/range {v16 .. v16}, Lcom/zte/backup/application/BackupAppInfo;-><init>()V

    .line 45
    .local v16, newInfo:Lcom/zte/backup/application/BackupAppInfo;
    invoke-virtual/range {v16 .. v17}, Lcom/zte/backup/application/BackupAppInfo;->setApkResourceDir(Ljava/lang/String;)V

    .line 46
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setAppname(Ljava/lang/String;)V

    .line 47
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setDataDir(Ljava/lang/String;)V

    .line 48
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setPackageName(Ljava/lang/String;)V

    .line 49
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/zte/backup/application/BackupAppInfo;->setApkName(Ljava/lang/String;)V

    .line 50
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setUid(I)V

    .line 51
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 52
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setVisionCode(I)V

    .line 53
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v6, v0

    .line 64
    .local v6, appSize:J
    const/4 v8, 0x0

    .line 66
    .local v8, dataSize:F
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->isBSocket6939IsListen()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 67
    invoke-virtual/range {v16 .. v16}, Lcom/zte/backup/application/BackupAppInfo;->getDataDir()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ZTE"

    const-string v24, "GetSize"

    .line 68
    const-string v25, "3"

    .line 67
    invoke-static/range {v22 .. v25}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 69
    .local v20, socketCommand:Ljava/lang/String;
    new-instance v18, Lcom/zte/backup/service/RootRestoreClient;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .local v18, rcGetSize:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual/range {v18 .. v18}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v22

    move/from16 v0, v22

    int-to-float v8, v0

    .line 73
    .end local v18           #rcGetSize:Lcom/zte/backup/service/RootRestoreClient;
    .end local v20           #socketCommand:Ljava/lang/String;
    :cond_2
    long-to-float v0, v6

    move/from16 v22, v0

    add-float v3, v8, v22

    .line 74
    .local v3, allSize:F
    float-to-double v0, v3

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/zte/backup/application/BackupAppInfo;->setSize(D)V

    .line 75
    const/high16 v22, 0x4980

    div-float v19, v3, v22

    .line 76
    .local v19, size:F
    const/high16 v22, 0x42c8

    mul-float v22, v22, v19

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 77
    .local v21, temp:I
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4059

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->setAppSize(F)V

    .line 79
    invoke-virtual/range {v16 .. v16}, Lcom/zte/backup/application/BackupAppInfo;->prettyPrint()V

    .line 81
    invoke-virtual/range {v16 .. v16}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.zte.backup.cdsj"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "org.zx.AuthComp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/backup/application/AppsGetAppsInfo;->res:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v3           #allSize:F
    .end local v4           #apkString:Ljava/lang/String;
    .end local v5           #apklen:I
    .end local v6           #appSize:J
    .end local v8           #dataSize:F
    .end local v10           #indexOfLastSlash:I
    .end local v16           #newInfo:Lcom/zte/backup/application/BackupAppInfo;
    .end local v17           #publicSourceDir:Ljava/lang/String;
    .end local v19           #size:F
    .end local v21           #temp:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppsDetailInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/backup/application/BackupAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zte/backup/application/AppsGetAppsInfo;->res:Ljava/util/ArrayList;

    return-object v0
.end method
