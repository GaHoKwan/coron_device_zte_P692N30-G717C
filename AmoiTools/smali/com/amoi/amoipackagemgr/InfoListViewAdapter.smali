.class public Lcom/amoi/amoipackagemgr/InfoListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoListViewAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoipackagemgr/Info_Item;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoipackagemgr/Info_Item;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/amoipackagemgr/Info_Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    .line 29
    iput-object p3, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->mListView:Landroid/widget/ListView;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 53
    iget-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amoi/amoipackagemgr/Info_Item;

    .line 54
    .local v2, item:Lcom/amoi/amoipackagemgr/Info_Item;
    iget-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 58
    :cond_0
    iget-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 60
    .local v3, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f070003

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .local v1, icon:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getResId()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    const v6, 0x7f070005

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    const v6, 0x7f070004

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    .local v5, textView1:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getLable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    const v6, 0x7f070006

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 73
    .local v0, CheckBox:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 75
    const-string v6, "InfoListViewAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v3
.end method
