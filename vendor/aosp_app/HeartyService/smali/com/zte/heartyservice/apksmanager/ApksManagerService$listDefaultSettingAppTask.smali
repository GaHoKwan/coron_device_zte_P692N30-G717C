.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listDefaultSettingAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private defaultSettingAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->defaultSettingAppInfo:Ljava/util/List;

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 946
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 952
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 954
    .local v6, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v5, 0x0

    .line 955
    .local v5, now:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 957
    .local v9, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 958
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 959
    .local v7, pinfo:Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v3, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v8, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v3, v8, v11}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 965
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 966
    new-instance v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;

    invoke-direct {v4}, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;-><init>()V

    .line 967
    .local v4, localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    .line 968
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v10, v4, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->versionName:Ljava/lang/String;

    .line 969
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->defaultSettingAppInfo:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v4           #localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 973
    const/4 v0, 0x0

    .line 975
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 976
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_1
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 982
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;

    .line 984
    :cond_1
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->progress:Ljava/lang/String;

    goto :goto_1

    .line 987
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v7           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v8           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->defaultSettingAppInfo:Ljava/util/List;

    return-object v10
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 991
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 992
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 946
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, defaultSettingAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 997
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 999
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->UpdateDefaultSettingAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v1

    .line 1002
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1005
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1006
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 1007
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 946
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 1010
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 1011
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1012
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1014
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "listDefaultSettingAppTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v1

    .line 1017
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1021
    return-void
.end method
