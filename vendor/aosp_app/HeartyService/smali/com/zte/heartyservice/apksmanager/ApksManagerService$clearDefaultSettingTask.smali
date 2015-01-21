.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clearDefaultSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    const/4 v10, 0x0

    .line 902
    aget-object v3, p1, v10

    .line 904
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    const/4 v5, 0x0

    .line 905
    .local v5, now:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 906
    .local v6, size:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;

    .line 907
    .local v4, localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    const/4 v0, 0x0

    .line 909
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 910
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_1
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 916
    iget-object v7, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;

    .line 918
    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->publishProgress([Ljava/lang/Object;)V

    .line 920
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 921
    add-int/lit8 v5, v5, 0x1

    .line 922
    goto :goto_0

    .line 911
    :catch_0
    move-exception v1

    .line 912
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->progress:Ljava/lang/String;

    goto :goto_1

    .line 924
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 898
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 928
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 929
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 932
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->cancel(Z)Z

    .line 934
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 937
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 939
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 898
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 898
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 942
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 943
    return-void
.end method
