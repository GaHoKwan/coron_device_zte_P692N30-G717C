.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 6
    .parameter "packageName"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 653
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3000(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/Integer;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3000(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3002(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 657
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3102(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3100(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3102(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3100(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3200(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;[Ljava/lang/Object;)V

    .line 666
    return-void

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->access$3102(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
