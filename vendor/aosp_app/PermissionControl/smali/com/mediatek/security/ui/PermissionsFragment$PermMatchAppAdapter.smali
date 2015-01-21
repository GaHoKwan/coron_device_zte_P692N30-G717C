.class Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermMatchAppAdapter"
.end annotation


# instance fields
.field private mPermList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionsFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/PermissionsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    .line 185
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 207
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 217
    if-nez p2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    #getter for: Lcom/mediatek/security/ui/PermissionsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/mediatek/security/ui/PermissionsFragment;->access$200(Lcom/mediatek/security/ui/PermissionsFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 223
    new-instance v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;

    invoke-direct {v0}, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;-><init>()V

    .line 224
    .local v0, holder:Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;
    const v2, 0x7f080002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mPermLabel:Landroid/widget/TextView;

    .line 226
    const v2, 0x7f080001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mPermIcon:Landroid/widget/ImageView;

    .line 228
    const v2, 0x7f080004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mAppCount:Landroid/widget/TextView;

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;

    .line 240
    .local v1, permInfo:Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
    iget-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mPermLabel:Landroid/widget/TextView;

    #getter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$300(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mPermIcon:Landroid/widget/ImageView;

    #getter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermIcon:I
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$400(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v2, v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;->mAppCount:Landroid/widget/TextView;

    #getter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mAppCount:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$500(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-object p2

    .line 234
    .end local v0           #holder:Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;
    .end local v1           #permInfo:Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;

    .restart local v0       #holder:Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;
    goto :goto_0
.end method

.method public setDataAndNotify(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;>;"
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;->mPermList:Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method
