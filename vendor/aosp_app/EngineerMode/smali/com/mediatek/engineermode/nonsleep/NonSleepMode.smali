.class public Lcom/mediatek/engineermode/nonsleep/NonSleepMode;
.super Landroid/app/Activity;
.source "NonSleepMode.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/NonSleep"


# instance fields
.field private mSetButton:Landroid/widget/Button;

.field private mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    return-void
.end method

.method private static isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v3, 0x0

    .line 70
    .local v3, isRunning:Z
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    .line 72
    .local v4, maxCount:I
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 74
    add-int/lit8 v4, v4, 0x32

    .line 75
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 78
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 79
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 80
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    const/4 v3, 0x1

    .line 85
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v3

    .line 78
    .restart local v2       #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const v2, 0x7f08003b

    .line 128
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    const-class v1, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->acquire(Ljava/lang/Class;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->release()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    const v0, 0x7f0b0372

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-class v0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-static {p0, v0}, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 116
    const-class v0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-static {p0, v0}, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 146
    move-object v0, p2

    check-cast v0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;

    .line 147
    .local v0, binder:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;
    invoke-virtual {v0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;->getService()Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mWakeLockServ:Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 158
    const-string v0, "EM/NonSleep"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 103
    iget-object v1, p0, Lcom/mediatek/engineermode/nonsleep/NonSleepMode;->mSetButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 112
    return-void
.end method
