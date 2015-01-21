.class Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
.super Ljava/lang/Object;
.source "FileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileManagerActivityInfo"
.end annotation


# instance fields
.field private mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

.field private mFilterType:I

.field private mTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    .line 80
    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFilterType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/filemanager/service/FileManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    return-object v0
.end method

.method getFilterType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFilterType:I

    return v0
.end method

.method getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    return-object v0
.end method

.method public setFileInfoManager(Lcom/mediatek/filemanager/FileInfoManager;)V
    .locals 0
    .parameter "fileInfoManager"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    .line 89
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mFilterType:I

    .line 93
    return-void
.end method

.method public setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->mTask:Lcom/mediatek/filemanager/service/BaseAsyncTask;

    .line 85
    return-void
.end method
