.class Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listSysGarbageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lcom/zte/heartyservice/speedup/SysGarbageFile;",
        ">;"
    }
.end annotation


# instance fields
.field mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 1
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 875
    new-instance v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-direct {v0}, Lcom/zte/heartyservice/speedup/SysGarbageFile;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method

.method private getAllFiles(Ljava/io/File;)V
    .locals 7
    .parameter "root"

    .prologue
    .line 879
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 884
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    .line 886
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 888
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 890
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->getAllFiles(Ljava/io/File;)V

    .line 886
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 894
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 896
    iget-object v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v5, v1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addAppLogFile(Ljava/io/File;)V

    .line 898
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 900
    :cond_5
    iget-object v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v5, v1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addTmpSysFile(Ljava/io/File;)V

    goto :goto_2

    .line 906
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_6
    iget-object v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v5, p1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addBlankFile(Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/zte/heartyservice/speedup/SysGarbageFile;
    .locals 1
    .parameter "params"

    .prologue
    .line 914
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 915
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->getAllFiles(Ljava/io/File;)V

    .line 916
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->getAllFiles(Ljava/io/File;)V

    .line 917
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 873
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->doInBackground([Ljava/lang/Boolean;)Lcom/zte/heartyservice/speedup/SysGarbageFile;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 924
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 925
    return-void
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/speedup/SysGarbageFile;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 929
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSysGarbageFile(Lcom/zte/heartyservice/speedup/SysGarbageFile;)V

    .line 930
    invoke-virtual {p1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->showAll()V

    .line 931
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 873
    check-cast p1, Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->onPostExecute(Lcom/zte/heartyservice/speedup/SysGarbageFile;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 935
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 936
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 942
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 873
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
