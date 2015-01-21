.class public Lzte/com/cn/driverMode/ui/DMConfirmActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0800c6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->setContentView(I)V

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->setFinishOnTouchOutside(Z)V

    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->a:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/p;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/p;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->b:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/q;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/q;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hasPoiDownloading"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "DMDoNotDisturbDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate, hasPoiDownloading="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0800c5

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
