.class Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;
.super Landroid/widget/BaseAdapter;
.source "UpdateBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/UpdateBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackGroundAdatper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/UpdateBackgroundActivity;


# direct methods
.method private constructor <init>(Lcom/hf/UI/UpdateBackgroundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/UpdateBackgroundActivity;Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;-><init>(Lcom/hf/UI/UpdateBackgroundActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    #getter for: Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/UpdateBackgroundActivity;->access$0(Lcom/hf/UI/UpdateBackgroundActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    #getter for: Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/UpdateBackgroundActivity;->access$0(Lcom/hf/UI/UpdateBackgroundActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    if-nez p2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;

    .end local v0           #holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    invoke-direct {v0, p0}, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;-><init>(Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;)V

    .line 107
    .restart local v0       #holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    const v1, 0x7f0b000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f0b000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 109
    iget-object v2, v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    #getter for: Lcom/hf/UI/UpdateBackgroundActivity;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/hf/UI/UpdateBackgroundActivity;->access$0(Lcom/hf/UI/UpdateBackgroundActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper;->this$0:Lcom/hf/UI/UpdateBackgroundActivity;

    #getter for: Lcom/hf/UI/UpdateBackgroundActivity;->mSelected:I
    invoke-static {v1}, Lcom/hf/UI/UpdateBackgroundActivity;->access$1(Lcom/hf/UI/UpdateBackgroundActivity;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 115
    iget-object v1, v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    :goto_1
    return-object p2

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    check-cast v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;

    .restart local v0       #holder:Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;
    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, v0, Lcom/hf/UI/UpdateBackgroundActivity$BackGroundAdatper$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
