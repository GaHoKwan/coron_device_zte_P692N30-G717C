.class Lcom/autonavi/xmgd/navigator/d;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/CitySelect;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/CitySelect;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->a:Landroid/view/LayoutInflater;

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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/autonavi/xmgd/navigator/e;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/e;-><init>(Lcom/autonavi/xmgd/navigator/d;)V

    const v0, 0x7f0c0013

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/e;->a:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/e;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/e;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lNumberOfSubAdarea:I

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

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

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/navigator/f;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/f;-><init>(Lcom/autonavi/xmgd/navigator/d;)V

    const v0, 0x7f0c0014

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/f;->a:Landroid/widget/TextView;

    const v0, 0x7f0c0015

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/f;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/autonavi/xmgd/navigator/f;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/d;->b:Lcom/autonavi/xmgd/navigator/CitySelect;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/CitySelect;->b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/f;->b:Landroid/widget/ImageView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/f;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/f;->b:Landroid/widget/ImageView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

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
