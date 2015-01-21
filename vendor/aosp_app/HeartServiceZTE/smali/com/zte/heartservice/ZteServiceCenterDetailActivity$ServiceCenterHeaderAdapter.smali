.class Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ZteServiceCenterDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartservice/ZteServiceCenterDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCenterHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 228
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 227
    iput-object v0, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030006

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 239
    .local v3, view:Landroid/view/View;
    new-instance v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;-><init>(Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;)V

    .line 240
    .local v1, holder:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 241
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 243
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 242
    iput-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 253
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 255
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 257
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    return-object v3

    .line 246
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #holder:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;
    .end local v2           #summary:Ljava/lang/CharSequence;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 247
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 261
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
