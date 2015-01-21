.class public Lcom/mediatek/engineermode/cpustress/CpuStressCommon;
.super Landroid/app/Activity;
.source "CpuStressCommon.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;


# static fields
.field static final DIALOG_WAIT:I = 0x3e9

.field static final INDEX_UPDATE_RADIOBTN:I = 0x1

.field static final INDEX_UPDATE_RADIOGROUP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/CpuStressCommon"


# instance fields
.field mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 62
    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/16 v1, 0x3e9

    if-ne v1, p1, :cond_0

    .line 87
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 88
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 89
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 95
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 101
    const-string v0, "EM/CpuStressCommon"

    const-string v1, "Enter onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    check-cast p2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;->getService()Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iput-object p0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    .line 104
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 108
    const-string v0, "EM/CpuStressCommon"

    const-string v1, "Enter onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 111
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 76
    return-void
.end method

.method public onUpdateTestResult()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressCommon;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
