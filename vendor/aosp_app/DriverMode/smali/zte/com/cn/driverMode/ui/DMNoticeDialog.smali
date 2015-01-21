.class public Lzte/com/cn/driverMode/ui/DMNoticeDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Ljava/lang/String;

.field protected k:Landroid/content/Context;

.field protected l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/ch;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ch;-><init>(Lzte/com/cn/driverMode/ui/DMNoticeDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->l:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->setContentView(I)V

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->k:Landroid/content/Context;

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "UpdateView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "WaitView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "NetError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->i:Landroid/widget/TextView;

    const v1, 0x7f08017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "NoUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->i:Landroid/widget/TextView;

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "NoticeDownloadMapResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->a:Landroid/widget/Button;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f080180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->i:Landroid/widget/TextView;

    const v1, 0x7f080181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->h:Landroid/widget/TextView;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->i:Landroid/widget/TextView;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3001

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->setResult(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
