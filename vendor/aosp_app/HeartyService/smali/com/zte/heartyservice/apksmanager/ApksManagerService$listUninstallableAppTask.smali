.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listUninstallableAppTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;
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
        "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private inDataImage:Z

.field private progress:Ljava/lang/String;

.field private storageSpace:Ljava/lang/Long;

.field private systemAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

.field private uninstallableAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private wait:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->uninstallableAppInfo:Ljava/util/List;

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->systemAppInfo:Ljava/util/List;

    .line 741
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    .line 742
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 15
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    .line 765
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x2000

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 768
    .local v7, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v6, 0x0

    .line 769
    .local v6, now:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 770
    .local v10, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 771
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 772
    .local v8, pinfo:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 774
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 777
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_3

    :cond_0
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v12}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$3600()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-boolean v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    if-eqz v11, :cond_3

    .line 780
    new-instance v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    invoke-direct {v5}, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;-><init>()V

    .line 781
    .local v5, localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    .line 782
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->versionName:Ljava/lang/String;

    .line 783
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Object;

    .line 784
    .local v1, args:[Ljava/lang/Object;
    const/4 v11, 0x0

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v12, v1, v11

    .line 785
    const/4 v11, 0x1

    new-instance v12, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    aput-object v12, v1, v11

    .line 786
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    .line 788
    iget-object v12, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 790
    :try_start_1
    const-string v11, "android.content.pm.PackageManager"

    iget-object v13, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "getPackageSizeInfo"

    invoke-static {v11, v13, v14, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 796
    .local v9, retObject:Ljava/lang/Object;
    :try_start_2
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 806
    .end local v9           #retObject:Ljava/lang/Object;
    :goto_1
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    :try_start_4
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    .line 808
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    .line 809
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 810
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    .line 812
    :cond_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 813
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->uninstallableAppInfo:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 853
    .end local v1           #args:[Ljava/lang/Object;
    .end local v5           #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 770
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 797
    .restart local v1       #args:[Ljava/lang/Object;
    .restart local v5       #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .restart local v9       #retObject:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 798
    .local v3, ex:Ljava/lang/InterruptedException;
    const/4 v11, 0x0

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 859
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #args:[Ljava/lang/Object;
    .end local v3           #ex:Ljava/lang/InterruptedException;
    .end local v5           #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v8           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v9           #retObject:Ljava/lang/Object;
    :goto_3
    return-object v11

    .line 799
    .restart local v0       #ainfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #args:[Ljava/lang/Object;
    .restart local v5       #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .restart local v8       #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #retObject:Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 800
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v11, v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    .line 801
    const-string v11, "<==>tsj"

    const-string v13, "wait.wait() timeout"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 803
    .end local v2           #e:Ljava/lang/Exception;
    .end local v9           #retObject:Ljava/lang/Object;
    :catch_2
    move-exception v11

    goto :goto_1

    .line 806
    :catchall_0
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v11
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    .line 850
    .end local v1           #args:[Ljava/lang/Object;
    .end local v5           #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :catch_3
    move-exception v2

    .line 851
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 814
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_9
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    if-nez v11, :cond_2

    .line 815
    new-instance v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    invoke-direct {v5}, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;-><init>()V

    .line 816
    .restart local v5       #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    .line 817
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->versionName:Ljava/lang/String;

    .line 818
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Object;

    .line 819
    .restart local v1       #args:[Ljava/lang/Object;
    const/4 v11, 0x0

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v12, v1, v11

    .line 820
    const/4 v11, 0x1

    new-instance v12, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    aput-object v12, v1, v11

    .line 821
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    .line 823
    iget-object v12, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    monitor-enter v12
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 825
    :try_start_a
    const-string v11, "android.content.pm.PackageManager"

    iget-object v13, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "getPackageSizeInfo"

    invoke-static {v11, v13, v14, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v9

    .line 831
    .restart local v9       #retObject:Ljava/lang/Object;
    :try_start_b
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 841
    .end local v9           #retObject:Ljava/lang/Object;
    :goto_4
    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 842
    :try_start_d
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    .line 843
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    .line 844
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 845
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    .line 847
    :cond_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->progress:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 848
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->systemAppInfo:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_2

    .line 832
    .restart local v9       #retObject:Ljava/lang/Object;
    :catch_4
    move-exception v3

    .line 833
    .restart local v3       #ex:Ljava/lang/InterruptedException;
    const/4 v11, 0x0

    :try_start_e
    monitor-exit v12

    goto/16 :goto_3

    .line 841
    .end local v3           #ex:Ljava/lang/InterruptedException;
    .end local v9           #retObject:Ljava/lang/Object;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v11
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_3

    .line 834
    .restart local v9       #retObject:Ljava/lang/Object;
    :catch_5
    move-exception v2

    .line 835
    .local v2, e:Ljava/lang/Exception;
    :try_start_10
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v11, v13}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    .line 836
    const-string v11, "<==>tsj"

    const-string v13, "wait.wait() timeout"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_4

    .line 838
    .end local v2           #e:Ljava/lang/Exception;
    .end local v9           #retObject:Ljava/lang/Object;
    :catch_6
    move-exception v11

    goto :goto_4

    .line 856
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #args:[Ljava/lang/Object;
    .end local v5           #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v8           #pinfo:Landroid/content/pm/PackageInfo;
    :cond_5
    iget-boolean v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    if-eqz v11, :cond_6

    .line 857
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->uninstallableAppInfo:Ljava/util/List;

    goto/16 :goto_3

    .line 859
    :cond_6
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->systemAppInfo:Ljava/util/List;

    goto/16 :goto_3
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 863
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 864
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 737
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 869
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 871
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    iget-boolean v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->inDataImage:Z

    invoke-interface {v3, p1, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->UpdateUninstallableAppList(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 877
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 878
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 879
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 737
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 882
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 883
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 884
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 887
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "listUninstallableAppTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 893
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 894
    return-void
.end method
