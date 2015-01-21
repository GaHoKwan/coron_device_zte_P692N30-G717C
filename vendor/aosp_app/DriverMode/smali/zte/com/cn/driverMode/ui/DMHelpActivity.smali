.class public Lzte/com/cn/driverMode/ui/DMHelpActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private h:Landroid/widget/SimpleAdapter;

.field private i:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->h:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "example"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indicator"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->h:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->setContentView(I)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->i:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/at;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/at;-><init>(Lzte/com/cn/driverMode/ui/DMHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a:Ljava/util/ArrayList;

    const v3, 0x7f03003c

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "example"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "indicator"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "image"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->h:Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->h:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020065

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020069

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpActivity;->b:Landroid/content/Context;

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020068

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe7t 0x0t 0xbt 0x7ft
        0xe8t 0x0t 0xbt 0x7ft
        0xe6t 0x0t 0xbt 0x7ft
    .end array-data
.end method
