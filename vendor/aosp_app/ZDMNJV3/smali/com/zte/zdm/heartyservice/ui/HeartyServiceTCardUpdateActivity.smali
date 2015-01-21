.class public Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "HeartyService"


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const v1, 0x7f0900d3

    invoke-virtual {p0, v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const v1, 0x7f0900d2

    invoke-virtual {p0, v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    const v0, 0x7f0d0062

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/n;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/zte/zdm/heartyservice/ui/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->a(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private b(Landroid/app/Dialog;)V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    const v0, 0x7f0d0063

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/o;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/zte/zdm/heartyservice/ui/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/zte/zdm/heartyservice/ui/j;

    invoke-direct {v1, p0}, Lcom/zte/zdm/heartyservice/ui/j;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->a()V

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/heartyservice/ui/i;

    invoke-direct {v1, p0}, Lcom/zte/zdm/heartyservice/ui/i;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d00ba

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/zte/zdm/heartyservice/ui/k;

    invoke-direct {v2, p0}, Lcom/zte/zdm/heartyservice/ui/k;-><init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceTCardUpdateActivity->onOptionsItemSelected: menu_check_new_from_server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceTCardUpdateActivity->onOptionsItemSelected: menu_status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->d:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceTCardUpdateActivity->onOptionsItemSelected: menu_update_settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/ui/p;->a()Lcom/zte/zdm/heartyservice/ui/p;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->e:Lcom/zte/zdm/heartyservice/ui/q;

    invoke-virtual {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ba
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
