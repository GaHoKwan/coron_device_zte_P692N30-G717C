.class public Lzte/com/cn/driverMode/ui/DMDisclaimerOnly;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


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

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDisclaimerOnly;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerOnly;->setContentView(I)V

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerOnly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/ag;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ag;-><init>(Lzte/com/cn/driverMode/ui/DMDisclaimerOnly;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
