.class Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;
.super Ljava/lang/Thread;
.source "AppLockWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AppLockWatchDog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 35
    :goto_0
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPause:Z
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->access$000(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->access$100(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 39
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->access$100(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 48
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockWatchDog;->am:Landroid/app/ActivityManager;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->access$200(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Landroid/app/ActivityManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 50
    .local v6, runningTasksInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    .local v5, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 53
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, activity:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->this$0:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    #getter for: Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAppLockStrategyUtils:Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->access$300(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->checkAppLockStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-wide v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->netdPid:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 58
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getNetdPid()J

    move-result-wide v3

    .line 60
    .local v3, pid:J
    sget-wide v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->netdPid:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_1

    .line 61
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->chooseInterceptAdScheme()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .end local v0           #activity:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #pid:J
    .end local v5           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6           #runningTasksInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_2
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v7

    goto :goto_2

    .line 40
    :catch_1
    move-exception v7

    goto :goto_1
.end method
