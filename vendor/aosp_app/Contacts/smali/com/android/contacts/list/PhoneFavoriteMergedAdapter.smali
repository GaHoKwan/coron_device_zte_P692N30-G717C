.class public Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$1;,
        Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
    }
.end annotation


# instance fields
.field private final mAccountFilterHeaderContainer:Landroid/view/View;

.field private final mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

.field private final mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private final mFrequentHeaderPaddingTop:I

.field private final mItemPaddingLeft:I

.field private final mItemPaddingRight:I

.field private final mLoadingView:Landroid/view/View;

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "contactTileAdapter"
    .parameter "accountFilterHeaderContainer"
    .parameter "contactEntryListAdapter"
    .parameter "loadingView"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    .line 64
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    .line 65
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    .line 67
    iput-object p2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 68
    iput-object p4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 70
    iput-object p3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$1;)V

    iput-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 73
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 74
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 76
    iput-object p5, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    .line 77
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 89
    .local v1, contactTileAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    .line 90
    .local v0, contactEntryListAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    add-int/lit8 v2, v1, 0x2

    .line 97
    :goto_0
    return v2

    :cond_0
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 104
    .local v1, contactTileAdapterCount:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    .line 105
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    :goto_0
    return-object v3

    .line 107
    :cond_0
    if-ne p1, v1, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    goto :goto_0

    .line 114
    :cond_2
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 115
    .local v2, localPosition:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 135
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 136
    .local v1, contactTileAdapterCount:I
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    .line 168
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v3

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    if-ne p1, v1, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v5

    add-int v3, v4, v5

    goto :goto_0

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 179
    :cond_3
    sub-int v4, p1, v1

    add-int/lit8 v2, v4, -0x1

    .line 180
    .local v2, localPosition:I
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(I)I

    move-result v3

    .line 182
    .local v3, type:I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 273
    .local v0, contactTileAdapterCount:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 274
    .local v1, localPosition:I
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 280
    .local v0, contactTileAdapterCount:I
    if-gt p1, v0, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 285
    :goto_0
    return v2

    .line 284
    :cond_0
    sub-int v2, p1, v0

    add-int/lit8 v1, v2, -0x1

    .line 285
    .local v1, localPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v5

    .line 190
    .local v5, contactTileAdapterCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v12}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v4

    .line 194
    .local v4, contactEntryListAdapterCount:I
    move/from16 v0, p1

    if-ge v0, v5, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 196
    .local v11, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactTileAdapter;->getFrequentHeaderPosition()I

    move-result v7

    .line 197
    .local v7, frequentHeaderPosition:I
    move/from16 v0, p1

    if-ge v0, v7, :cond_0

    .line 234
    .end local v7           #frequentHeaderPosition:I
    .end local v11           #view:Landroid/view/View;
    :goto_0
    return-object v11

    .line 199
    .restart local v7       #frequentHeaderPosition:I
    .restart local v11       #view:Landroid/view/View;
    :cond_0
    move/from16 v0, p1

    if-ne v0, v7, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    move-object v6, v11

    .line 204
    check-cast v6, Landroid/widget/FrameLayout;

    .line 205
    .local v6, frameLayout:Landroid/widget/FrameLayout;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, child:Landroid/view/View;
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v10, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 210
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 213
    .end local v3           #child:Landroid/view/View;
    .end local v6           #frameLayout:Landroid/widget/FrameLayout;
    .end local v7           #frequentHeaderPosition:I
    .end local v10           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #view:Landroid/view/View;
    :cond_2
    move/from16 v0, p1

    if-ne v0, v5, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    goto/16 :goto_0

    .line 228
    :cond_4
    sub-int v12, p1, v5

    add-int/lit8 v9, v12, -0x1

    .line 229
    .local v9, localPosition:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v12, v9, v0, v13}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/list/ContactListItemView;

    .line 231
    .local v8, itemView:Lcom/android/contacts/list/ContactListItemView;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8, v12, v13}, Lcom/android/contacts/list/ContactListItemView;->setSelectionBoundsHorizontalMargin(II)V

    move-object v11, v8

    .line 234
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 253
    .local v1, contactTileAdapterCount:I
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    .line 254
    .local v0, contactEntryListAdapterCount:I
    if-ge p1, v1, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactTileAdapter;->isEnabled(I)Z

    move-result v3

    .line 265
    :cond_0
    :goto_0
    return v3

    .line 256
    :cond_1
    if-eq p1, v1, :cond_0

    .line 260
    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 265
    .local v2, localPosition:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0
.end method

.method public shouldShowFirstScroller(I)Z
    .locals 2
    .parameter "firstVisibleItem"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 296
    .local v0, contactTileAdapterCount:I
    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
