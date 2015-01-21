.class Lcom/autonavi/xmgd/navigator/eg;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/eg;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/eg;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eg;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eg;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eg;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/autonavi/xmgd/navigator/eh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/eh;-><init>(Lcom/autonavi/xmgd/navigator/eg;)V

    const v0, 0x7f0c0110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/eh;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/eh;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/autonavi/xmgd/navigator/eh;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/autonavi/xmgd/navigator/eh;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/eg;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    invoke-interface {v0}, Lcom/autonavi/xmgd/f/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/eh;

    goto :goto_0
.end method
