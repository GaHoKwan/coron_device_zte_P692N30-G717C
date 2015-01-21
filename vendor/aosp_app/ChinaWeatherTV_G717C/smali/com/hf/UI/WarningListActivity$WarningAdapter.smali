.class Lcom/hf/UI/WarningListActivity$WarningAdapter;
.super Landroid/widget/BaseAdapter;
.source "WarningListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/WarningListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarningAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WarningListActivity;


# direct methods
.method private constructor <init>(Lcom/hf/UI/WarningListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/WarningListActivity;Lcom/hf/UI/WarningListActivity$WarningAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/hf/UI/WarningListActivity$WarningAdapter;-><init>(Lcom/hf/UI/WarningListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, count:I
    iget-object v1, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;
    invoke-static {v1}, Lcom/hf/UI/WarningListActivity;->access$0(Lcom/hf/UI/WarningListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;
    invoke-static {v1}, Lcom/hf/UI/WarningListActivity;->access$0(Lcom/hf/UI/WarningListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$0(Lcom/hf/UI/WarningListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 183
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, holder:Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 189
    iget-object v3, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    new-instance v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;

    .end local v0           #holder:Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;-><init>(Lcom/hf/UI/WarningListActivity$WarningAdapter;)V

    .line 191
    .restart local v0       #holder:Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    const v3, 0x7f0b00c6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    .line 192
    const v3, 0x7f0b00d0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningName:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0b00cf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningTime:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;
    invoke-static {v3}, Lcom/hf/UI/WarningListActivity;->access$0(Lcom/hf/UI/WarningListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/model/WarningModel;

    .line 200
    .local v2, warning:Lcom/hf/model/WarningModel;
    iget-object v3, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter;->this$0:Lcom/hf/UI/WarningListActivity;

    invoke-static {v3}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    .line 201
    .local v1, title:Ljava/lang/String;
    :goto_1
    iget-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    iget v4, v2, Lcom/hf/model/WarningModel;->bigImageId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v3, v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->warningTime:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/hf/model/WarningModel;->reportTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-object p2

    .line 196
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #warning:Lcom/hf/model/WarningModel;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    check-cast v0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
    goto :goto_0

    .line 200
    .restart local v2       #warning:Lcom/hf/model/WarningModel;
    :cond_1
    iget-object v1, v2, Lcom/hf/model/WarningModel;->englishTitle:Ljava/lang/String;

    goto :goto_1
.end method
