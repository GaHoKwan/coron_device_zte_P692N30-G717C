.class public Lcom/android/mms/ui/MultiSaveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSaveListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiSaveListAdapter"


# instance fields
.field private mAllCount:I

.field private mContext:Landroid/content/Context;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MultiSaveListItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MultiSaveListItemData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MultiSaveListItemData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 83
    iput-object p2, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method private dumpList(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 149
    const-string v1, "Mms/MultiSaveListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpList from tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    const-string v1, "Mms/MultiSaveListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpList ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public changeSelectedState(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 137
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    if-lt p1, v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiSaveListItemData;

    iget-object v1, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiSaveListItemData;->setSelectedState(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MultiSaveListItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedNumber()I
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, number:I
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 171
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v7, "Mms/MultiSaveListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView, for position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-ltz p1, :cond_0

    iget v7, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    if-lt p1, v7, :cond_1

    .line 91
    :cond_0
    const-string v7, "Mms/MultiSaveListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView, oops indexoutofbound pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v1

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    iget-object v7, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v8, 0x7f04004c

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, itemView:Landroid/view/View;
    :goto_1
    const v7, 0x7f0f0152

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 102
    .local v6, thumb:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiSaveListItemData;

    .line 103
    .local v0, item:Lcom/android/mms/ui/MultiSaveListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 104
    .local v5, t:Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 105
    const v7, 0x7f02009a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_2
    const v7, 0x7f0f0153

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, name:Landroid/widget/TextView;
    const v7, 0x7f0f0154

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, size:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v7, 0x7f0f0151

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 114
    .local v3, select:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 115
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 116
    const v7, 0x7f020132

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    .end local v0           #item:Lcom/android/mms/ui/MultiSaveListItemData;
    .end local v1           #itemView:Landroid/view/View;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #select:Landroid/widget/CheckBox;
    .end local v4           #size:Landroid/widget/TextView;
    .end local v5           #t:Landroid/graphics/Bitmap;
    .end local v6           #thumb:Landroid/widget/ImageView;
    :cond_2
    move-object v1, p2

    .restart local v1       #itemView:Landroid/view/View;
    goto :goto_1

    .line 107
    .restart local v0       #item:Lcom/android/mms/ui/MultiSaveListItemData;
    .restart local v5       #t:Landroid/graphics/Bitmap;
    .restart local v6       #thumb:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 118
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v3       #select:Landroid/widget/CheckBox;
    .restart local v4       #size:Landroid/widget/TextView;
    :cond_4
    const v7, 0x7f020135

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isAllSelected()Z
    .locals 3

    .prologue
    .line 180
    const-string v0, "Mms/MultiSaveListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isallselected, selected number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", all is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mAllCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemsValue(Z[I)V
    .locals 4
    .parameter "value"
    .parameter "keyArray"

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MultiSaveListItemData;->setSelectedState(Z)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveListAdapter;->mListItem:Ljava/util/ArrayList;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MultiSaveListItemData;->setSelectedState(Z)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_1
    return-void
.end method
