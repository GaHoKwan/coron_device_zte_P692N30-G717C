.class public Lcom/autonavi/xmgd/navigator/ao;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ao;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/ao;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    check-cast v0, Ljava/util/HashMap;

    add-int/lit8 v2, p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ao;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v1, Lcom/autonavi/xmgd/navigator/aq;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/aq;-><init>(Lcom/autonavi/xmgd/navigator/ao;)V

    const v0, 0x7f0c0056

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/aq;->a:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/navigator/ao;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/aq;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/an;

    check-cast v0, Lcom/autonavi/xmgd/navigator/an;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/an;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/aq;

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/ao;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 4

    add-int/lit8 v1, p1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ao;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/navigator/ar;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ar;-><init>(Lcom/autonavi/xmgd/navigator/ao;)V

    const v0, 0x7f0c0059

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/ar;->a:Landroid/widget/TextView;

    const v0, 0x7f0c005a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    const v0, 0x7f0c005b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/navigator/ar;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/ao;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v2, v4}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v2, v4}, Lcom/autonavi/xmgd/view/GDImageButton;->setClickable(Z)V

    if-eqz p2, :cond_4

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    const v3, 0x7f02015b

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :goto_2
    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v2, v4}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setClickable(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ap;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ap;-><init>(Lcom/autonavi/xmgd/navigator/ao;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/navigator/ar;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->f(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ao;->a:Lcom/autonavi/xmgd/navigator/FeedbackHistory;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->b:Lcom/autonavi/xmgd/view/GDImageButton;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/autonavi/xmgd/navigator/ar;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    const v3, 0x7f02015a

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
