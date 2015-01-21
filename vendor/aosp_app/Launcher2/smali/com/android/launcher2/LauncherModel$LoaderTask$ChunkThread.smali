.class public Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChunkThread"
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mStart:I

.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Landroid/content/pm/PackageManager;Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter "packageManager"
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2089
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    iput p4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mStart:I

    .line 2091
    iput p5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mEnd:I

    .line 2092
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2093
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mApps:Ljava/util/List;

    .line 2094
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2097
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChunkThread: start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mStart:I

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mEnd:I

    if-ge v0, v3, :cond_0

    .line 2101
    new-instance v4, Lcom/android/launcher2/ApplicationInfo;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->mApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v6, v6, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;
    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$1900(Lcom/android/launcher2/LauncherModel$LoaderTask;)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2104
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    monitor-enter v4

    .line 2105
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2106
    .local v2, size:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 2107
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 2106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2109
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2008(Lcom/android/launcher2/LauncherModel$LoaderTask;)I

    .line 2110
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mChunkFinish:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2100(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mChunkIndex:I
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2000(Lcom/android/launcher2/LauncherModel$LoaderTask;)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mChunkCount:I
    invoke-static {v5}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2200(Lcom/android/launcher2/LauncherModel$LoaderTask;)I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 2111
    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChunkThread: notify loader thread, loader task = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$ChunkThread;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 2114
    :cond_2
    monitor-exit v4

    .line 2115
    return-void

    .line 2114
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
