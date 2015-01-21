.class public Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;
.super Landroid/app/Activity;
.source "OverLimitIdleHoursAlert.java"


# instance fields
.field private mSimManager:Lcom/zte/heartyservice/msim/SimManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->finish()V

    .line 69
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->finish()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "currentSim"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 26
    .local v1, currentSim:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 28
    iget-object v4, p0, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v4}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    if-nez v1, :cond_0

    .line 30
    const v4, 0x7f0a010a

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, msg:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a0108

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$1;-><init>(Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    const v4, 0x7f0a00d6

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert$2;-><init>(Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 59
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->setFinishOnTouchOutside(Z)V

    .line 61
    return-void

    .line 32
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0a010b

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #msg:Ljava/lang/String;
    goto :goto_0

    .line 35
    .end local v3           #msg:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0a0109

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #msg:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    return-void
.end method
