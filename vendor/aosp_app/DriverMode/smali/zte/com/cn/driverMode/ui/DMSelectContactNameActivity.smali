.class public Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/widget/BaseAdapter;

.field private c:Landroid/widget/ListView;

.field private h:Lzte/com/cn/driverMode/utils/c;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/widget/ImageButton;

.field private l:[I

.field private m:Lzte/com/cn/driverMode/service/DMApplication;

.field private n:I

.field private o:Lzte/com/cn/driverMode/ui/dg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->j:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->l:[I

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->n:I

    return-void

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

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;I)V
    .locals 1

    iput p1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->n:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->n:I

    return v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)[I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->l:[I

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

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->m:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->m:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/utils/b;

    iget-object v1, v0, Lzte/com/cn/driverMode/utils/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v0, v0, Lzte/com/cn/driverMode/utils/b;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/utils/l;

    iget-object v0, v0, Lzte/com/cn/driverMode/utils/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UI"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "phonenumber"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.Jump"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UI"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "DMSelectContactNameActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->m:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v0, Lzte/com/cn/driverMode/utils/c;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/utils/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->h:Lzte/com/cn/driverMode/utils/c;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nameList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->i:Ljava/util/ArrayList;

    const-string v1, "nameFocuseIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->n:I

    const-string v1, "prompt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DMSelectContactNameActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEXT..:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "DMSelectContactNameActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "DMSelectContactNameActivity"

    const-string v1, "prompt is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/ui/df;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/df;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->b:Landroid/widget/BaseAdapter;

    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->k:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/dd;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dd;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/de;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/de;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/dg;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dg;-><init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->o:Lzte/com/cn/driverMode/ui/dg;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->o:Lzte/com/cn/driverMode/ui/dg;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.driverMode.changeNameIndex"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->o:Lzte/com/cn/driverMode/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->o:Lzte/com/cn/driverMode/ui/dg;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
