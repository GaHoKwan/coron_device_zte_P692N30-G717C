.class public Lcom/android/mms/ui/AdvancedSearchView;
.super Landroid/widget/LinearLayout;
.source "AdvancedSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field private mImageSearchBtn:Landroid/widget/ImageButton;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/AdvancedSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040006

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    const v1, 0x7f0f0013

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    .line 33
    const v1, 0x7f0f0014

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/AdvancedSearchView;->mImageSearchBtn:Landroid/widget/ImageButton;

    .line 34
    return-void
.end method


# virtual methods
.method public getImageSearchBtn()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mImageSearchBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 49
    :cond_0
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 56
    :cond_0
    return-void
.end method
