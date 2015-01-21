.class public Lcom/autonavi/xmgd/b/d;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/b/d;->a:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->b()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x7f02000c

    const/4 v4, 0x1

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/autonavi/xmgd/b/e;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/b/e;-><init>(Lcom/autonavi/xmgd/b/d;)V

    const v0, 0x7f0c00d9

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/b/e;->b:Landroid/widget/TextView;

    const v0, 0x7f0c00da

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    iget-object v2, v1, Lcom/autonavi/xmgd/b/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->f()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->g()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->b()I

    move-result v0

    if-nez v0, :cond_2

    aget v0, v2, p2

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-object p4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/e;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    aget v0, v2, p2

    if-ne v0, v4, :cond_3

    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->e()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/b/e;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/b/e;-><init>(Lcom/autonavi/xmgd/b/d;)V

    const v0, 0x7f0c00db

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/b/e;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c00dc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/b/e;->b:Landroid/widget/TextView;

    const v0, 0x7f0c00dd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/xmgd/b/e;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/autonavi/xmgd/b/e;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/b/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/c;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/b/e;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/autonavi/xmgd/b/e;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
