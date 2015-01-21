.class public Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/al;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/al;-><init>(Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->setFinishOnTouchOutside(Z)V

    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->a:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/am;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/am;-><init>(Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
