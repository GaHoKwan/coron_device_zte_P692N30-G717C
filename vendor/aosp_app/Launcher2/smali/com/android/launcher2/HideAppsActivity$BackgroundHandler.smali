.class Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;
.super Landroid/os/Handler;
.source "HideAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HideAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_LOAD_SIZE:I = 0x1


# instance fields
.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/launcher2/HideAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HideAppsActivity;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    .line 189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    new-instance v0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler$1;-><init>(Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 190
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 194
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/launcher2/HideAppsActivity;->access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->requestComputePkgSize()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 202
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method requestComputePkgSize()Ljava/lang/String;
    .locals 8

    .prologue
    .line 211
    iget-object v4, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    .local v0, appSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 213
    iget-object v4, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    iget-object v4, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, pkgName:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 215
    iget-object v4, p0, Lcom/android/launcher2/HideAppsActivity$BackgroundHandler;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/launcher2/HideAppsActivity;->access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;

    .line 216
    .local v1, entry:Lcom/android/launcher2/HideAppsActivity$AppEntry;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 218
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    .line 223
    .end local v1           #entry:Lcom/android/launcher2/HideAppsActivity$AppEntry;
    .end local v3           #pkgName:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 212
    .restart local v3       #pkgName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
