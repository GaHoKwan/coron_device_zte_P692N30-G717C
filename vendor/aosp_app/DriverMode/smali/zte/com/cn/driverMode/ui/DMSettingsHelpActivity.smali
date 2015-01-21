.class public Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/ArrayList;

.field protected c:Ljava/util/ArrayList;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/SimpleAdapter;

.field private k:Landroid/widget/SimpleAdapter;

.field private l:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->j:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "indicator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->j:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->k:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "indicator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->k:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0b007c

    const v3, 0x7f03003a

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->setContentView(I)V

    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ds;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ds;-><init>(Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b:Ljava/util/ArrayList;

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "indicator"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    aput v8, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->j:Landroid/widget/SimpleAdapter;

    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->j:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->c:Ljava/util/ArrayList;

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "indicator"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    aput v8, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->k:Landroid/widget/SimpleAdapter;

    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->k:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->a:Landroid/content/Context;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/ui/DMSettingsHelpActivity;->b(Ljava/lang/String;)V

    return-void
.end method
