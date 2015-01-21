.class public abstract Lcom/android/contacts/widget/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V
    .locals 16
    .parameter "listView"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v15, :cond_1

    .line 165
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v12

    .line 101
    .local v12, size:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v15, v15

    if-eq v15, v12, :cond_3

    .line 102
    :cond_2
    new-array v15, v12, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    .line 104
    :cond_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_5

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v14

    .line 106
    .local v14, visible:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v14, v15, v6

    .line 107
    if-nez v14, :cond_4

    .line 108
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 104
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v14           #visible:Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 115
    .local v4, headerViewsCount:I
    const/4 v9, -0x1

    .line 116
    .local v9, maxTopHeader:I
    const/4 v13, 0x0

    .line 117
    .local v13, topHeaderHeight:I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_6

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_b

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 120
    .local v11, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 121
    .local v10, partition:I
    if-le v6, v10, :cond_a

    .line 132
    .end local v10           #partition:I
    .end local v11           #position:I
    :cond_6
    move v8, v12

    .line 133
    .local v8, maxBottomHeader:I
    const/4 v2, 0x0

    .line 134
    .local v2, bottomHeaderHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 135
    .local v7, listHeight:I
    move v6, v12

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-le v6, v9, :cond_8

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_7

    .line 137
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 139
    .restart local v11       #position:I
    if-gez v11, :cond_c

    .line 160
    .end local v11           #position:I
    :cond_8
    add-int/lit8 v6, v9, 0x1

    :goto_3
    if-ge v6, v8, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_9

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 160
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 125
    .end local v2           #bottomHeaderHeight:I
    .end local v7           #listHeight:I
    .end local v8           #maxBottomHeader:I
    .restart local v10       #partition:I
    .restart local v11       #position:I
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v15

    add-int/2addr v13, v15

    .line 127
    move v9, v6

    .line 117
    .end local v10           #partition:I
    .end local v11           #position:I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 143
    .restart local v2       #bottomHeaderHeight:I
    .restart local v7       #listHeight:I
    .restart local v8       #maxBottomHeader:I
    .restart local v11       #position:I
    :cond_c
    add-int/lit8 v15, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 144
    .restart local v10       #partition:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_8

    if-le v6, v10, :cond_8

    .line 148
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v5

    .line 149
    .local v5, height:I
    add-int/2addr v2, v5

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/common/widget/CompositeCursorAdapter;->getPositionForPartition(I)I

    move-result v3

    .line 153
    .local v3, firstPositionForPartition:I
    if-ge v11, v3, :cond_d

    const/4 v1, 0x1

    .line 154
    .local v1, animate:Z
    :goto_4
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 155
    move v8, v6

    .line 156
    goto :goto_2

    .line 153
    .end local v1           #animate:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "partition"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->hasHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    .local v0, headerType:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 76
    move-object v1, p2

    .line 79
    .end local v0           #headerType:Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 83
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 88
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1
    .parameter "partition"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 49
    return-void
.end method
