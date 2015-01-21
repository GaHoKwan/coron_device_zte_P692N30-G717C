.class public Lzte/com/cn/driverMode/ui/DMBaseActivity;
.super Landroid/app/Activity;


# instance fields
.field d:Lzte/com/cn/driverMode/ui/i;

.field e:Lzte/com/cn/driverMode/ui/k;

.field f:Lzte/com/cn/driverMode/ui/j;

.field g:Lzte/com/cn/driverMode/service/DMApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->g:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v0, Lzte/com/cn/driverMode/ui/i;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/i;-><init>(Lzte/com/cn/driverMode/ui/DMBaseActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.driverMode.exit_application"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/k;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/k;-><init>(Lzte/com/cn/driverMode/ui/DMBaseActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->e:Lzte/com/cn/driverMode/ui/k;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.UnLightScreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->e:Lzte/com/cn/driverMode/ui/k;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/j;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/j;-><init>(Lzte/com/cn/driverMode/ui/DMBaseActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->f:Lzte/com/cn/driverMode/ui/j;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.LightScreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->f:Lzte/com/cn/driverMode/ui/j;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->d:Lzte/com/cn/driverMode/ui/i;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->e:Lzte/com/cn/driverMode/ui/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->e:Lzte/com/cn/driverMode/ui/k;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->e:Lzte/com/cn/driverMode/ui/k;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->f:Lzte/com/cn/driverMode/ui/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->f:Lzte/com/cn/driverMode/ui/j;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMBaseActivity;->f:Lzte/com/cn/driverMode/ui/j;

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.ActivityOnStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.TaskBackHome"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zte.com.cn.driverMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMBaseActivity"

    const-string v1, "move to background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.TaskMoveBack"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
