.class public Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/CheckBox;

.field protected h:Landroid/content/Context;

.field protected i:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

.field protected j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/ak;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ak;-><init>(Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->j:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->h:Landroid/content/Context;

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->h:Landroid/content/Context;

    invoke-direct {v1, v0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Reject_inCall"

    invoke-virtual {v1, v2, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "Reject_inSms"

    invoke-virtual {v1, v3, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->a:Landroid/widget/Button;

    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->b:Landroid/widget/Button;

    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->i:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.drivermod.dismissdisturbdialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->h:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->i:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    if-eqz v2, :cond_1

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "DMDoNotDisturbDialog"

    const-string v1, "onDestroy@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v2, "need_show_disturb_hint_dialog"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->i:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->i:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog$DismissDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->setResult(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
