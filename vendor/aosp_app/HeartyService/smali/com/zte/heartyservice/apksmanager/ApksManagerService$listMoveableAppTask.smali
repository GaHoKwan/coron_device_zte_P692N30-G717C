.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listMoveableAppTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private moveableAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private storageSpace:Ljava/lang/Long;

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

.field private wait:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->moveableAppInfo:Ljava/util/List;

    .line 255
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->storageSpace:Ljava/lang/Long;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->storageSpace:Ljava/lang/Long;

    return-object p1
.end method

.method private isUninstallApp(I)Z
    .locals 3
    .parameter "flag"

    .prologue
    .line 277
    :try_start_0
    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string v2, "FLAG_UNINSTALL_APP"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 279
    .local v0, FLAG_UNINSTALL_APP:I
    and-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x1

    .line 285
    .end local v0           #FLAG_UNINSTALL_APP:I
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v1

    .line 285
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 23
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    const-string v19, "<==>tsj"

    const-string v20, "listMoveableAppTask doInBackground"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x2000

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    .line 293
    .local v14, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v13, 0x0

    .line 294
    .local v13, now:I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    .line 295
    .local v18, size:I
    const/16 v16, 0x0

    .line 296
    .local v16, progress:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_9

    .line 297
    const/4 v11, 0x1

    .line 298
    .local v11, moveDisable:Z
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 300
    .local v15, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 296
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 304
    :cond_0
    const/4 v3, 0x0

    .line 306
    .local v3, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 309
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    const/high16 v20, 0x4

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    .line 310
    const/4 v11, 0x0

    .line 352
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    if-eqz v3, :cond_2

    .line 353
    new-instance v10, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;

    invoke-direct {v10}, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;-><init>()V

    .line 354
    .local v10, localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->packageName:Ljava/lang/String;

    .line 355
    const/4 v12, 0x0

    .line 356
    .local v12, moveFlags:I
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x4

    and-int v19, v19, v20

    if-eqz v19, :cond_8

    .line 357
    const-string v19, "android.content.pm.PackageManager"

    const-string v20, "MOVE_INTERNAL"

    invoke-static/range {v19 .. v20}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 365
    :goto_3
    iput v12, v10, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->moveFlags:I

    .line 366
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->versionName:Ljava/lang/String;

    .line 368
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/Object;

    .line 369
    .local v4, args:[Ljava/lang/Object;
    const/16 v19, 0x0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v4, v19

    .line 370
    const/16 v19, 0x1

    new-instance v20, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    aput-object v20, v4, v19

    .line 371
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->storageSpace:Ljava/lang/Long;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 375
    :try_start_1
    const-string v19, "android.content.pm.PackageManager"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "getPackageSizeInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v4}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v17

    .line 379
    .local v17, retObject:Ljava/lang/Object;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    .end local v17           #retObject:Ljava/lang/Object;
    :goto_4
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->storageSpace:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v10, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->storageSpace:J

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->moveableAppInfo:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v4           #args:[Ljava/lang/Object;
    .end local v10           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .end local v12           #moveFlags:I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 397
    if-eqz v3, :cond_3

    .line 398
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 400
    :cond_3
    if-nez v16, :cond_4

    .line 401
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 406
    :cond_4
    :goto_5
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 311
    :cond_5
    :try_start_5
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->isUninstallApp(I)Z

    move-result v19

    if-nez v19, :cond_1

    .line 312
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const-string v20, "FLAG_FORWARD_LOCK"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v20

    and-int v19, v19, v20

    if-nez v19, :cond_1

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_1

    if-eqz v15, :cond_1

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "/system/vendor/preload"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 317
    const-string v19, "installLocation"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v19

    const-string v20, "INSTALL_LOCATION_PREFER_EXTERNAL"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const-string v19, "installLocation"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v19

    const-string v20, "INSTALL_LOCATION_AUTO"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 325
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 326
    :cond_7
    const-string v19, "installLocation"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v19

    const-string v20, "INSTALL_LOCATION_UNSPECIFIED"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 330
    invoke-static {}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_IPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v8

    .line 334
    .local v8, ipm:Landroid/content/pm/IPackageManager;
    :try_start_6
    invoke-interface {v8}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v9

    .line 335
    .local v9, loc:I
    const-string v19, "com.android.internal.content.PackageHelper"

    const-string v20, "APP_INSTALL_EXTERNAL"

    invoke-static/range {v19 .. v20}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v19

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    .line 339
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 361
    .end local v8           #ipm:Landroid/content/pm/IPackageManager;
    .end local v9           #loc:I
    .restart local v10       #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .restart local v12       #moveFlags:I
    :cond_8
    const-string v19, "android.content.pm.PackageManager"

    const-string v20, "MOVE_EXTERNAL_MEDIA"

    invoke-static/range {v19 .. v20}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_3

    .line 380
    .restart local v4       #args:[Ljava/lang/Object;
    .restart local v17       #retObject:Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 381
    .local v6, ex:Ljava/lang/InterruptedException;
    const/16 v19, 0x0

    :try_start_7
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 409
    .end local v3           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #args:[Ljava/lang/Object;
    .end local v6           #ex:Ljava/lang/InterruptedException;
    .end local v10           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .end local v11           #moveDisable:Z
    .end local v12           #moveFlags:I
    .end local v15           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v17           #retObject:Ljava/lang/Object;
    :goto_6
    return-object v19

    .line 382
    .restart local v3       #ainfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #args:[Ljava/lang/Object;
    .restart local v10       #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .restart local v11       #moveDisable:Z
    .restart local v12       #moveFlags:I
    .restart local v15       #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v17       #retObject:Ljava/lang/Object;
    :catch_1
    move-exception v5

    .line 383
    .local v5, e:Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    .line 384
    const-string v19, "<==>tsj"

    const-string v21, "wait.wait() timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 386
    .end local v5           #e:Ljava/lang/Exception;
    .end local v17           #retObject:Ljava/lang/Object;
    :catch_2
    move-exception v19

    goto/16 :goto_4

    .line 389
    :catchall_0
    move-exception v19

    :try_start_9
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v19

    .line 403
    .end local v4           #args:[Ljava/lang/Object;
    .end local v10           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .end local v12           #moveFlags:I
    :catch_3
    move-exception v5

    .line 404
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 409
    .end local v3           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #moveDisable:Z
    .end local v15           #pinfo:Landroid/content/pm/PackageInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->moveableAppInfo:Ljava/util/List;

    move-object/from16 v19, v0

    goto :goto_6

    .line 348
    .restart local v3       #ainfo:Landroid/content/pm/ApplicationInfo;
    .restart local v11       #moveDisable:Z
    .restart local v15       #pinfo:Landroid/content/pm/PackageInfo;
    :catch_4
    move-exception v19

    goto/16 :goto_2

    .line 341
    .restart local v8       #ipm:Landroid/content/pm/IPackageManager;
    :catch_5
    move-exception v19

    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 413
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 414
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, moveableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 418
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 420
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->UpdateMoveableAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 427
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 428
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 432
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 435
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 436
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 437
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 439
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "listMoveableAppTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 446
    return-void
.end method
