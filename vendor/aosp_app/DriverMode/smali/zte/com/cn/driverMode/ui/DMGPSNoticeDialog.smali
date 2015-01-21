.class public Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/content/Context;

.field protected j:Lzte/com/cn/driverMode/service/by;

.field protected k:Ljava/lang/String;

.field protected l:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

.field protected m:Landroid/view/View$OnClickListener;

.field protected n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/an;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/an;-><init>(Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/ao;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ao;-><init>(Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->n:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->i:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->j:Lzte/com/cn/driverMode/service/by;

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->b:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OK_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->k:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->c:Landroid/widget/TextView;

    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->h:Landroid/widget/TextView;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->l:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.drivermod.GPSDialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->i:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->l:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->l:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->i:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->l:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog$DismissDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
