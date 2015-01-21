.class public Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lzte/com/cn/driverMode/ui/a;

.field private h:Ljava/util/ArrayList;

.field private i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

.field private j:Z

.field private k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

.field private l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->b:Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->c:Lzte/com/cn/driverMode/ui/a;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    iput-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->j:Z

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->o:Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->p:Landroid/widget/TextView;

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->q:I

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->r:I

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->s:Ljava/lang/String;

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->t:I

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Lzte/com/cn/driverMode/ui/a;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->c:Lzte/com/cn/driverMode/ui/a;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "needHighlight"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->j:Z

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    const-string v0, "curpageindex"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->q:I

    const-string v0, "totalpagenum"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->r:I

    const-string v0, "promptValue"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "poiItems"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->h:Ljava/util/ArrayList;

    const-string v0, "type"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->t:I

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->b:Landroid/widget/ListView;

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->p:Landroid/widget/TextView;

    new-instance v0, Lzte/com/cn/driverMode/ui/a;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->h:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->j:Z

    iget v3, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->t:I

    invoke-direct {v0, p0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/a;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->c:Lzte/com/cn/driverMode/ui/a;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->c:Lzte/com/cn/driverMode/ui/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "registerSelectPoiFinishedReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.SelectPoiFinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "registerSwitchHighlightReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.SwitchHighlight"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;-><init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.UpdateCommandPromptDisplay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->q:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->r:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0802a6

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0800da

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/dc;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dc;-><init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/db;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/db;-><init>(Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    if-eqz v0, :cond_0

    const-string v0, "DMSelectAddressActivity"

    const-string v1, "onDestroy --unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->i:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$selectPoiFinishedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->k:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$switchHighlightReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectAddressActivity;->l:Lzte/com/cn/driverMode/ui/DMSelectAddressActivity$updateCommandPromptDisplayReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
