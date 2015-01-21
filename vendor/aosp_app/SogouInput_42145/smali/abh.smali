.class public Labh;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method public constructor <init>(Laaq;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Labh;->a:Laaq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1576
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1590
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1596
    .line 1597
    if-nez p2, :cond_0

    .line 1599
    new-instance v1, Labs;

    iget-object v0, p0, Labh;->a:Laaq;

    invoke-direct {v1, v0}, Labs;-><init>(Laaq;)V

    .line 1600
    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1601
    const v0, 0x7f07004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Labs;->a:Landroid/widget/ImageView;

    .line 1603
    const v0, 0x7f070051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Labs;->a:Landroid/widget/TextView;

    .line 1605
    const v0, 0x7f070052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Labs;->b:Landroid/widget/TextView;

    .line 1607
    const v0, 0x7f070050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Labs;->a:Landroid/widget/LinearLayout;

    .line 1609
    const v0, 0x7f07004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Labs;->a:Landroid/widget/RelativeLayout;

    .line 1611
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1616
    :goto_0
    iget-object v2, v1, Labs;->a:Landroid/widget/TextView;

    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "title_key"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    iget-object v2, v1, Labs;->b:Landroid/widget/TextView;

    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "summary_key"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1620
    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1621
    iget-object v0, p0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Labh;->a:Laaq;

    invoke-static {v2}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, v1, Labs;->a:Landroid/widget/ImageView;

    const v2, 0x7f02004b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1630
    :goto_1
    iget-object v0, v1, Labs;->a:Landroid/widget/ImageView;

    new-instance v2, Labi;

    invoke-direct {v2, p0, p1}, Labi;-><init>(Labh;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    iget-object v0, v1, Labs;->a:Landroid/widget/LinearLayout;

    new-instance v1, Labl;

    invoke-direct {v1, p0, p1}, Labl;-><init>(Labh;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    return-object p2

    .line 1613
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labs;

    move-object v1, v0

    goto :goto_0

    .line 1624
    :cond_1
    iget-object v0, v1, Labs;->a:Landroid/widget/ImageView;

    const v2, 0x7f02004a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1628
    :cond_2
    iget-object v0, v1, Labs;->a:Landroid/widget/ImageView;

    const v2, 0x7f020057

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
