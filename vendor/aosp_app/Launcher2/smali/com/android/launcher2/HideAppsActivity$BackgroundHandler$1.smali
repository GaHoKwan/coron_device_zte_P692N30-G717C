.class Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "HideAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 16
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/launcher2/HideAppsActivity;->access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 146
    const/4 v9, 0x0

    .line 147
    .local v9, sizeChanged:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/launcher2/HideAppsActivity;->access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;

    .line 148
    .local v1, entry:Lcom/android/launcher2/HideAppsActivity$AppEntry;
    if-eqz v1, :cond_3

    .line 149
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v12, v14

    .line 150
    .local v2, externalCodeSize:J
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long v4, v12, v14

    .line 152
    .local v4, externalDataSize:J
    add-long v12, v2, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    move-object/from16 v0, p1

    #calls: Lcom/android/launcher2/HideAppsActivity;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/launcher2/HideAppsActivity;->access$300(Lcom/android/launcher2/HideAppsActivity;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    add-long v7, v12, v14

    .line 154
    .local v7, newSize:J
    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    cmp-long v10, v12, v7

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalCodeSize:J

    cmp-long v10, v12, v2

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalDataSize:J

    cmp-long v10, v12, v4

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalCacheSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v10, v12, v14

    if-eqz v10, :cond_1

    .line 160
    :cond_0
    iput-wide v7, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    .line 161
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->cacheSize:J

    .line 162
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->codeSize:J

    .line 163
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->dataSize:J

    .line 164
    iput-wide v2, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalCodeSize:J

    .line 165
    iput-wide v4, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalDataSize:J

    .line 166
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$SizeInfo;->externalCacheSize:J

    .line 167
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    move-object/from16 v0, p1

    #calls: Lcom/android/launcher2/HideAppsActivity;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/launcher2/HideAppsActivity;->access$300(Lcom/android/launcher2/HideAppsActivity;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->internalSize:J

    .line 168
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    move-object/from16 v0, p1

    #calls: Lcom/android/launcher2/HideAppsActivity;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/launcher2/HideAppsActivity;->access$400(Lcom/android/launcher2/HideAppsActivity;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->externalSize:J

    .line 169
    const/4 v9, 0x1

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    #calls: Lcom/android/launcher2/HideAppsActivity;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/launcher2/HideAppsActivity;->access$500(Lcom/android/launcher2/HideAppsActivity;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->sizeStr:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->internalSize:J

    #calls: Lcom/android/launcher2/HideAppsActivity;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/launcher2/HideAppsActivity;->access$500(Lcom/android/launcher2/HideAppsActivity;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    iget-wide v12, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->externalSize:J

    #calls: Lcom/android/launcher2/HideAppsActivity;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/launcher2/HideAppsActivity;->access$500(Lcom/android/launcher2/HideAppsActivity;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->externalSizeStr:Ljava/lang/String;

    .line 176
    if-eqz v9, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #calls: Lcom/android/launcher2/HideAppsActivity;->notifyDataChanged()V
    invoke-static {v10}, Lcom/android/launcher2/HideAppsActivity;->access$600(Lcom/android/launcher2/HideAppsActivity;)V

    .line 181
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;
    invoke-static {v10}, Lcom/android/launcher2/HideAppsActivity;->access$700(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 182
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;->this$1:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    iget-object v10, v10, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mHandler:Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;
    invoke-static {v10}, Lcom/android/launcher2/HideAppsActivity;->access$700(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v2           #externalCodeSize:J
    .end local v4           #externalDataSize:J
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newSize:J
    :cond_3
    monitor-exit v11

    .line 185
    return-void

    .line 184
    .end local v1           #entry:Lcom/android/launcher2/HideAppsActivity$AppEntry;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method
