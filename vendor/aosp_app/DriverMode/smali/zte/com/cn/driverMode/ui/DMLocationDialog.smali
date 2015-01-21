.class public Lzte/com/cn/driverMode/ui/DMLocationDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/content/Context;

.field protected h:Lzte/com/cn/driverMode/ui/bi;

.field protected i:Lzte/com/cn/driverMode/ui/bh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->c:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/ui/bi;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bi;-><init>(Lzte/com/cn/driverMode/ui/DMLocationDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->h:Lzte/com/cn/driverMode/ui/bi;

    new-instance v0, Lzte/com/cn/driverMode/ui/bh;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/bh;-><init>(Lzte/com/cn/driverMode/ui/DMLocationDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->i:Lzte/com/cn/driverMode/ui/bh;

    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->b:Landroid/widget/Button;

    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->i:Lzte/com/cn/driverMode/ui/bh;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMLocationDialog;->h:Lzte/com/cn/driverMode/ui/bi;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
