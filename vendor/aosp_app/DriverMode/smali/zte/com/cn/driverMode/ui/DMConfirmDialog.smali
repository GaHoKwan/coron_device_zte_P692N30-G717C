.class public Lzte/com/cn/driverMode/ui/DMConfirmDialog;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/Button;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/content/Context;

.field protected k:I

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

.field protected p:Landroid/view/View$OnClickListener;

.field protected q:Landroid/view/View$OnClickListener;

.field protected r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    new-instance v0, Lzte/com/cn/driverMode/ui/r;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/r;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/s;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/s;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/t;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/t;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->r:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->setContentView(I)V

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->h:Landroid/widget/TextView;

    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->i:Landroid/widget/TextView;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "CONFIRM_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    new-instance v0, Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->o:Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.drivermod.NoPoiGrammarDialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->o:Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :pswitch_0
    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_RIGHT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_MID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->m:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_RIGHT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->c:Landroid/widget/Button;

    const-string v2, "BTN_TEXT_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->o:Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->o:Lzte/com/cn/driverMode/ui/DMConfirmDialog$DismissDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
