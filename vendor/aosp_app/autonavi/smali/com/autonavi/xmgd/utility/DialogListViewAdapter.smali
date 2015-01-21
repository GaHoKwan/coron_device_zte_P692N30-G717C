.class Lcom/autonavi/xmgd/utility/DialogListViewAdapter;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static listArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static signRadioButton:I


# instance fields
.field private changWhich:I

.field private defaultSelectedStatus:[Z

.field private list:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private signIfCheckOrSlide:Z

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I[Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->changWhich:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signIfCheckOrSlide:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->defaultSelectedStatus:[Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListArray()V

    iput p3, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    return-void
.end method


# virtual methods
.method public geListArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    return v0
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
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->defaultSelectedStatus:[Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->defaultSelectedStatus:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;-><init>(Lcom/autonavi/xmgd/utility/DialogListViewAdapter;)V

    const v0, 0x7f0c002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0c002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0c002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0c002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->changWhich:I

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v6, :cond_a

    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signIfCheckOrSlide:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signIfCheckOrSlide:Z

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_5
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v6, :cond_e

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_4
    :goto_6
    return-object p2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_3

    :cond_6
    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_9
    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v5, :cond_3

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    sput p1, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v5, :cond_c

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v6, :cond_3

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_d
    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_e
    iget v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->type:I

    if-ne v0, v5, :cond_4

    iget-object v0, v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_6
.end method

.method public getWitchRadioButton()I
    .locals 1

    sget v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    return v0
.end method

.method public initListArray()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    sget-object v1, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    iput v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->changWhich:I

    return-void
.end method

.method public initListView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    return-void
.end method

.method public setInitWhichIsSelected(I)V
    .locals 3

    sget v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signRadioButton:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->changWhich:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "tar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listArray.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setIsCheck(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->changWhich:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->signIfCheckOrSlide:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setdefaultSelectedStatus([Z)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->listArray:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
