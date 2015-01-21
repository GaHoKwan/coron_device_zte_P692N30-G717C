.class public Lcom/android/contacts/widget/CompositeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeListAdapter.java"


# annotations
.annotation build Lcom/android/contacts/test/NeededForTesting;
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mAdapters:[Landroid/widget/ListAdapter;

.field private mAllItemsEnabled:Z

.field private mCacheValid:Z

.field private mCount:I

.field private mCounts:[I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mSize:I

.field private mViewTypeCount:I

.field private mViewTypeCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/CompositeListAdapter;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialCapacity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 44
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 45
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 46
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 49
    new-instance v0, Lcom/android/contacts/widget/CompositeListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/CompositeListAdapter$1;-><init>(Lcom/android/contacts/widget/CompositeListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 69
    new-array v0, v1, [Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 70
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 72
    return-void
.end method


# virtual methods
.method addAdapter(Landroid/widget/ListAdapter;)V
    .locals 9
    .parameter "adapter"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 76
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    iget-object v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 77
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v2, v6, 0x2

    .line 78
    .local v2, newCapacity:I
    new-array v1, v2, [Landroid/widget/ListAdapter;

    .line 79
    .local v1, newAdapters:[Landroid/widget/ListAdapter;
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 82
    new-array v3, v2, [I

    .line 83
    .local v3, newCounts:[I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 86
    new-array v4, v2, [I

    .line 87
    .local v4, newViewTypeCounts:[I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 91
    .end local v1           #newAdapters:[Landroid/widget/ListAdapter;
    .end local v2           #newCapacity:I
    .end local v3           #newCounts:[I
    .end local v4           #newViewTypeCounts:[I
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 94
    .local v0, count:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    .line 96
    .local v5, viewTypeCount:I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput-object p1, v6, v7

    .line 97
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v0, v6, v7

    .line 98
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 99
    iget-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 100
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v5, v6, v7

    .line 101
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 102
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    .line 105
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 212
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method protected ensureCacheValid()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 124
    :cond_0
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 125
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 126
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 129
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 130
    .local v2, viewTypeCount:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v0, v3, v1

    .line 131
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 132
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 133
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0           #count:I
    .end local v2           #viewTypeCount:I
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 141
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 149
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 152
    :cond_0
    move v2, v0

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 163
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 166
    :cond_0
    move v2, v0

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, start:I
    const/4 v3, 0x0

    .line 183
    .local v3, viewTypeOffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v4, v4, v1

    add-int v0, v2, v4

    .line 185
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 189
    move v2, v0

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v0           #end:I
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 200
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 203
    :cond_0
    move v2, v0

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 175
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 117
    return-void
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 221
    .local v0, end:I
    if-lt p1, v2, :cond_2

    if-ge p1, v0, :cond_2

    .line 222
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 225
    :cond_2
    move v2, v0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0           #end:I
    :cond_3
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method protected notifyDataChanged()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
