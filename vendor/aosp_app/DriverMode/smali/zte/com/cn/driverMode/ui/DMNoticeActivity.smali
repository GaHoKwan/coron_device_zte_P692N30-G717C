.class public Lzte/com/cn/driverMode/ui/DMNoticeActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Ljava/lang/String;

.field protected j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->j:Landroid/content/Context;

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->a:Landroid/view/View;

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->b:Landroid/view/View;

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    const-string v1, "UpdateView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/cg;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/cg;-><init>(Lzte/com/cn/driverMode/ui/DMNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    const-string v1, "NetError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f08017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->i:Ljava/lang/String;

    const-string v1, "NoUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3001

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->setResult(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
