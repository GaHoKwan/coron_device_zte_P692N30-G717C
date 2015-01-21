.class Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppMatchPermAdapter"
.end annotation


# instance fields
.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/security/ui/AppsFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/AppsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    .line 194
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 206
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
    .line 211
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 216
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    #getter for: Lcom/mediatek/security/ui/AppsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/mediatek/security/ui/AppsFragment;->access$200(Lcom/mediatek/security/ui/AppsFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 232
    new-instance v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;

    invoke-direct {v1}, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;-><init>()V

    .line 233
    .local v1, holder:Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;
    const v2, 0x7f080002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    .line 235
    const v2, 0x7f080001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 237
    const v2, 0x7f080004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppSize:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;

    .line 248
    .local v0, appItem:Lcom/mediatek/security/ui/AppsFragment$AppInfo;
    iget-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$300(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$400(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v2, v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;->mAppSize:Landroid/widget/TextView;

    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppPermSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$500(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-object p2

    .line 243
    .end local v0           #appItem:Lcom/mediatek/security/ui/AppsFragment$AppInfo;
    .end local v1           #holder:Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;

    .restart local v1       #holder:Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;
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
            "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/AppsFragment$AppInfo;>;"
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;->mPkgList:Ljava/util/List;

    .line 198
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 199
    return-void
.end method
