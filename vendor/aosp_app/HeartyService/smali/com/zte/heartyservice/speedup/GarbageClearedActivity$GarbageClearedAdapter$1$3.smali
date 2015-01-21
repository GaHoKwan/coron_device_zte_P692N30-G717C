.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;
.super Ljava/lang/Thread;
.source "GarbageClearedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

.field final synthetic val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;Lcom/zte/heartyservice/speedup/SysGarbageFile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iput-object p2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 803
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 805
    const-string v2, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    iget-object v2, v1, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 809
    return-void
.end method
