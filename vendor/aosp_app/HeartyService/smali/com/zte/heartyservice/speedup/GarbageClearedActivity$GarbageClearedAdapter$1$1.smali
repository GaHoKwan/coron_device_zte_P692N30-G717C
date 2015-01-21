.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;
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
    .line 735
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iput-object p2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 738
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 740
    const-string v3, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    iget-object v3, v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->val$sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_1
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
