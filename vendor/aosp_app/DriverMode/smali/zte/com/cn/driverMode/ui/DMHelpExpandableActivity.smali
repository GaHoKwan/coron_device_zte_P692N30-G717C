.class public Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Lzte/com/cn/driverMode/ui/ed;

.field protected b:Landroid/content/Context;

.field private c:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->b:Landroid/content/Context;

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->setContentView(I)V

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->c:Landroid/widget/ExpandableListView;

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/au;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/au;-><init>(Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->c:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/ed;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/ui/ed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f02006d

    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005b

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f020069

    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f020065

    const v2, 0x7f080079

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08007a

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f02005e

    const v2, 0x7f080082

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080083

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f02006a

    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080089

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f020068

    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    const v1, 0x7f02006c

    const v2, 0x7f080064

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f020053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f020054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f020029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f02002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f02002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0200cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bargetinTag"

    invoke-static {p0, v1}, Lzte/com/cn/driverMode/service/ce;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0803a8

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0200d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f020039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f02003a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMHelpExpandableActivity;->a:Lzte/com/cn/driverMode/ui/ed;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Lzte/com/cn/driverMode/ui/ed;->a(ILjava/util/ArrayList;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
