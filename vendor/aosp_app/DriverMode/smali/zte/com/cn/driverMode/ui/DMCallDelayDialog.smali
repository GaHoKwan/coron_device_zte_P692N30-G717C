.class public Lzte/com/cn/driverMode/ui/DMCallDelayDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.drivermode.stopcalling"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->b:Ljava/lang/String;

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->a:Landroid/content/Context;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzte/com/cn/driverMode/ui/o;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/o;-><init>(Lzte/com/cn/driverMode/ui/DMCallDelayDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "DMCallDelayActivity"

    const-string v1, "onStop......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.CancelRecognition"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMCallDelayDialog;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onStop()V

    return-void
.end method
