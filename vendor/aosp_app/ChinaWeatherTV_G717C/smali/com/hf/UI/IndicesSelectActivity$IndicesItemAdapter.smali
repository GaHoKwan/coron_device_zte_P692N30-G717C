.class public Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndicesSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/IndicesSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndicesItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/IndicesSelectActivity;


# direct methods
.method public constructor <init>(Lcom/hf/UI/IndicesSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private isSelected(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, isSelected:Z
    iget-object v2, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    #getter for: Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/hf/UI/IndicesSelectActivity;->access$1(Lcom/hf/UI/IndicesSelectActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 273
    :goto_1
    return v0

    .line 266
    :cond_0
    aget-object v1, v3, v2

    .line 267
    .local v1, item:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    const/4 v0, 0x1

    .line 269
    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    #getter for: Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/IndicesSelectActivity;->access$0(Lcom/hf/UI/IndicesSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    #getter for: Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/IndicesSelectActivity;->access$0(Lcom/hf/UI/IndicesSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 210
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x7f0b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 216
    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030011

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 217
    new-instance v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;

    .end local v0           #holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;-><init>(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;)V

    .line 219
    .restart local v0       #holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    const v3, 0x7f0b0059

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    #getter for: Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;
    invoke-static {v3}, Lcom/hf/UI/IndicesSelectActivity;->access$0(Lcom/hf/UI/IndicesSelectActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, indicesShortName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    if-nez v3, :cond_2

    :cond_0
    move-object p2, v4

    .line 249
    .end local p2
    :goto_1
    return-object p2

    .line 224
    .end local v2           #indicesShortName:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    check-cast v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    goto :goto_0

    .line 230
    .restart local v2       #indicesShortName:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    sget-object v3, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/hf/UI/IndicesSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, indicesName:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->this$0:Lcom/hf/UI/IndicesSelectActivity;

    invoke-static {v3}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_2
    invoke-direct {p0, v2}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    #calls: Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V
    invoke-static {v0, v7}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V

    .line 241
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 234
    :cond_3
    iget-object v3, v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 243
    :cond_4
    #calls: Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V
    invoke-static {v0, v6}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V

    .line 244
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method
