.class public Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/TextView;

.field h:Ljava/lang/String;

.field i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->h:Ljava/lang/String;

    new-instance v0, Lzte/com/cn/driverMode/ui/cd;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cd;-><init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.broadcase.MissedCallNoticeFinish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->setFinishOnTouchOutside(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->i:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.driverMode.broadcast.FinishMissedCallNotice"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TIPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Numer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->h:Ljava/lang/String;

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->a:Landroid/widget/Button;

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->b:Landroid/widget/Button;

    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->a:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/ce;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ce;-><init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->b:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/cf;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/cf;-><init>(Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewMissedCallNotice2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
