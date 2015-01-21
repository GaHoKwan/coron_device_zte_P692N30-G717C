.class Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;
.super Ljava/lang/Object;
.source "ContactDetailViewPagerAdapter.java"


# instance fields
.field private mPositionOffset:I

.field private mViewPagerViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPositionMapTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    .line 168
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    .line 169
    return-void
.end method


# virtual methods
.method public addFragmentView(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "tag"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 6
    .parameter "object"

    .prologue
    .line 191
    const/4 v2, -0x1

    .line 192
    .local v2, position:I
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    .local v1, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 194
    .local v3, view:Landroid/view/View;
    if-ne v3, p1, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 199
    .end local v1           #key:Ljava/lang/Integer;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPagerViews:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 183
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 215
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateOffset(I)V
    .locals 7
    .parameter "offset"

    .prologue
    .line 203
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    sub-int v2, p1, v3

    .line 204
    .local v2, x:I
    if-eqz v2, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 206
    .local v1, size:I
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    add-int v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mViewPositionMapTags:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->mPositionOffset:I

    .line 212
    return-void
.end method
