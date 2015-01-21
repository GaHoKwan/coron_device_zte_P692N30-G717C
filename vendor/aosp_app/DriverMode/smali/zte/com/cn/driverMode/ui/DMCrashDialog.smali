.class public Lzte/com/cn/driverMode/ui/DMCrashDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMCrashDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCrashDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCrashDialog;->setFinishOnTouchOutside(Z)V

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCrashDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/x;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/x;-><init>(Lzte/com/cn/driverMode/ui/DMCrashDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
