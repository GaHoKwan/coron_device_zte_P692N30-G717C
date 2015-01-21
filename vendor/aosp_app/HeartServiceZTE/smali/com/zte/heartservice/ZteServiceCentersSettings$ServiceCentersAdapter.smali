.class Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ZteServiceCentersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartservice/ZteServiceCentersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCentersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;
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
.field final synthetic this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;


# direct methods
.method public constructor <init>(Lcom/zte/heartservice/ZteServiceCentersSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
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
    .line 152
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 154
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

    .line 161
    if-nez p2, :cond_0

    .line 162
    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    #getter for: Lcom/zte/heartservice/ZteServiceCentersSettings;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/zte/heartservice/ZteServiceCentersSettings;->access$0(Lcom/zte/heartservice/ZteServiceCentersSettings;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, view:Landroid/view/View;
    new-instance v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;-><init>(Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;)V

    .line 165
    .local v1, holder:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 167
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 166
    iput-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 177
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 178
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 180
    .local v2, summary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    return-object v3

    .line 170
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #holder:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;
    .end local v2           #summary:Ljava/lang/CharSequence;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 171
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;

    .restart local v1       #holder:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;
    goto :goto_0

    .line 184
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
