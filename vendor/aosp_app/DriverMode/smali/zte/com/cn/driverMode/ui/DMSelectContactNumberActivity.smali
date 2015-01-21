.class public Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/ArrayList;

.field c:I

.field h:Landroid/widget/BaseAdapter;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/widget/ImageButton;

.field private l:[I

.field private m:Lzte/com/cn/driverMode/ui/dk;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->j:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->l:[I

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->c:I

    new-instance v0, Lzte/com/cn/driverMode/ui/dh;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dh;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->n:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;I)V
    .locals 1

    iput p1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->c:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)[I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->l:[I

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phonenumber"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->setContentView(I)V

    new-instance v0, Lzte/com/cn/driverMode/ui/dj;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dj;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->h:Landroid/widget/BaseAdapter;

    const-string v0, "DMSelectContactNumberActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "DMSelectContactNumberActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "setTitleText:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "prompt"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "numList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v0, "DMSelectContactNumberActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "numList :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/di;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/di;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v4

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v5, v1

    :goto_1
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-ltz v5, :cond_1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMSelectContactNumberActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "type="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-ltz v5, :cond_4

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DMSelectContactNumberActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "num="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->b:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lzte/com/cn/driverMode/ui/dk;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dk;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->m:Lzte/com/cn/driverMode/ui/dk;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "zte.com.cn.driverMode.changePhoneTypeIndex"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->m:Lzte/com/cn/driverMode/ui/dk;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_3
    move v5, v4

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->m:Lzte/com/cn/driverMode/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->m:Lzte/com/cn/driverMode/ui/dk;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
