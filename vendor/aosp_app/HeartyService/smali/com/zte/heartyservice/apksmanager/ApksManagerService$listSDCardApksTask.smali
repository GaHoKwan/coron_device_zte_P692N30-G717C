.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listSDCardApksTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final APK_SURFACE:Ljava/lang/String;

.field private final SDCARD_ROOT:Ljava/lang/String;

.field private localSDCardApksInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
            ">;"
        }
    .end annotation
.end field

.field private search_depth:I

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->localSDCardApksInfoList:Ljava/util/List;

    .line 1028
    const-string v0, "/mnt/sdcard/"

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->SDCARD_ROOT:Ljava/lang/String;

    .line 1029
    const-string v0, "apk"

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->APK_SURFACE:Ljava/lang/String;

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->search_depth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method

.method private findAllApkFiles(Ljava/io/File;)V
    .locals 11
    .parameter "root"

    .prologue
    const/4 v10, 0x1

    .line 1051
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1053
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1054
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 1060
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->isCancelled()Z

    move-result v8

    if-ne v8, v10, :cond_1

    .line 1096
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void

    .line 1064
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1066
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->findAllApkFiles(Ljava/io/File;)V

    .line 1054
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1070
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, temp:Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, temp_array:[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v10, :cond_2

    .line 1080
    if-eqz v6, :cond_4

    .line 1081
    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->publishProgress([Ljava/lang/Object;)V

    .line 1084
    :cond_4
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    const-string v9, "apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1085
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->getApkInfo(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;

    move-result-object v4

    .line 1086
    .local v4, item:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    if-eqz v4, :cond_2

    .line 1089
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->storageSpace:J

    .line 1090
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->apkPath:Ljava/lang/String;

    .line 1092
    iget-object v8, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->localSDCardApksInfoList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getApkInfo(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    .locals 4
    .parameter "path"

    .prologue
    .line 1099
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1101
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 1102
    new-instance v1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;

    invoke-direct {v1}, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;-><init>()V

    .line 1103
    .local v1, localInfo:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->packageName:Ljava/lang/String;

    .line 1104
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->version:Ljava/lang/String;

    .line 1105
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->versionCode:I

    .line 1109
    .end local v1           #localInfo:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1025
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, vSDCard:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->findAllApkFiles(Ljava/io/File;)V

    .line 1040
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v1

    .line 1042
    .local v1, vSDCard2:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 1043
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->findAllApkFiles(Ljava/io/File;)V

    .line 1047
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->localSDCardApksInfoList:Ljava/util/List;

    return-object v2
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1113
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1114
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1025
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, localSDCardApksInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1119
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1121
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->UpdateSDCardApksList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v1

    .line 1124
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1128
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    .line 1129
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1025
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 1132
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 1133
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1134
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1136
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "listSDCardApksTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v1

    .line 1139
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 1142
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1144
    return-void
.end method
