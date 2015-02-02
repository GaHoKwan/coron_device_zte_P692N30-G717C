.class public Lcom/amoi/amoitools/install/ApkListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApkListViewAdapter.java"


# static fields
.field public static final APP_UPDATE:I = 0x4

.field public static final INSTALLED:I = 0x1

.field public static final INSTALLING:I = 0x2

.field public static final INSTALL_FAILED:I = 0x3

.field public static final UNINSTALL:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->clearItem()V

    .line 32
    return-void
.end method

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
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/amoitools/install/Apk_Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public addItem(Lcom/amoi/amoitools/install/Apk_Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public clearItem()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public getApkItem(I)Lcom/amoi/amoitools/install/Apk_Item;
    .locals 1
    .parameter "id"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/Apk_Item;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSlect(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v0}, Lcom/amoi/amoitools/install/Apk_Item;->getSelect()Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemStatus(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v0}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 119
    const-string v4, "ApkListViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenpx position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, holder:Lcom/amoi/amoitools/install/ViewHolder;
    new-instance v0, Lcom/amoi/amoitools/install/ViewHolder;

    .end local v0           #holder:Lcom/amoi/amoitools/install/ViewHolder;
    invoke-direct {v0}, Lcom/amoi/amoitools/install/ViewHolder;-><init>()V

    .line 122
    .restart local v0       #holder:Lcom/amoi/amoitools/install/ViewHolder;
    if-nez p2, :cond_0

    .line 123
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 124
    const v4, 0x7f070003

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 125
    const v4, 0x7f070005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mfileName:Landroid/widget/TextView;

    .line 127
    const v4, 0x7f070007

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mVersion:Landroid/widget/TextView;

    .line 129
    const v4, 0x7f070008

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    .line 131
    const v4, 0x7f070006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_0
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 138
    const-string v4, "ApkListViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenpx position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",items.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_1
    return-object p2

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/amoi/amoitools/install/ViewHolder;
    check-cast v0, Lcom/amoi/amoitools/install/ViewHolder;

    .restart local v0       #holder:Lcom/amoi/amoitools/install/ViewHolder;
    goto :goto_0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amoi/amoitools/install/Apk_Item;

    .line 144
    .local v1, item:Lcom/amoi/amoitools/install/Apk_Item;
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getSelect()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 146
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v5

    iget-object v5, v5, Lcom/amoi/amoitools/install/AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mfileName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v5

    iget-object v5, v5, Lcom/amoi/amoitools/install/AppSnippet;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getAppSnippet()Lcom/amoi/amoitools/install/AppSnippet;

    move-result-object v5

    iget-object v5, v5, Lcom/amoi/amoitools/install/AppSnippet;->verName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, version:Ljava/lang/String;
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 154
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 155
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 157
    :cond_2
    const/4 v2, 0x0

    .line 158
    .local v2, status:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 179
    :goto_2
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :pswitch_0
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    goto :goto_2

    .line 163
    :pswitch_1
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    goto :goto_2

    .line 166
    :pswitch_2
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    goto :goto_2

    .line 170
    :pswitch_3
    invoke-virtual {v1}, Lcom/amoi/amoitools/install/Apk_Item;->getSelect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 172
    iget-object v4, v0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    goto :goto_2

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->notifyDataSetChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method public setItemSlect(IZ)V
    .locals 1
    .parameter "id"
    .parameter "isSelect"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v0, p2}, Lcom/amoi/amoitools/install/Apk_Item;->setSelect(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->notifyDataSetChanged()V

    .line 66
    :cond_0
    return-void
.end method

.method public setItemStatus(II)V
    .locals 1
    .parameter "id"
    .parameter "status"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amoi/amoitools/install/ApkListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/amoitools/install/Apk_Item;

    invoke-virtual {v0, p2}, Lcom/amoi/amoitools/install/Apk_Item;->setStatus(I)V

    .line 72
    invoke-virtual {p0}, Lcom/amoi/amoitools/install/ApkListViewAdapter;->notifyDataSetChanged()V

    .line 74
    :cond_0
    return-void
.end method
