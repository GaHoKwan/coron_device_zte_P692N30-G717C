.class public Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.super Ljava/lang/Object;
.source "DateSortedExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$1;,
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final XTAG_ENHANCE:Ljava/lang/String; = "DownloadManager/Enhance"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "dateIndex"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    .line 89
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 90
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 91
    new-instance v0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;-><init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    new-instance v0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$1;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    iput p3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 94
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->buildMap()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->buildMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    return-object v0
.end method

.method private buildMap()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 103
    new-array v0, v7, [I

    .line 105
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 106
    aput v6, v0, v5

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iput v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 109
    const/4 v3, -0x1

    .line 110
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 111
    :goto_1
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    iget v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 113
    .local v1, date:J
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 114
    .local v4, index:I
    if-le v4, v3, :cond_3

    .line 115
    iget v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 116
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 119
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 129
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_1
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 130
    return-void

    .line 123
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_2
    move v3, v4

    .line 125
    :cond_3
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 126
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private groupPositionToBin(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 212
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 215
    :cond_1
    iget v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_4

    :cond_2
    move v0, p1

    .line 231
    :cond_3
    return v0

    .line 224
    :cond_4
    const/4 v0, -0x1

    .line 225
    .local v0, arrayPosition:I
    :cond_5
    :goto_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_3

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 227
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_5

    .line 228
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method getBlob(I)[B
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v0

    .line 341
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 363
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0
    .parameter "groupId"

    .prologue
    .line 367
    return-wide p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 334
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    if-eqz p3, :cond_0

    instance-of v3, p3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 295
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 299
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v1, item:Landroid/widget/TextView;
    :goto_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    return-object v1

    .end local v1           #item:Landroid/widget/TextView;
    .end local v2           #label:Ljava/lang/String;
    :cond_1
    move-object v1, p3

    .line 297
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #item:Landroid/widget/TextView;
    goto :goto_0
.end method

.method getInt(I)I
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method getLong(I)J
    .locals 2
    .parameter "cursorIndex"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method groupFromChildId(J)I
    .locals 6
    .parameter "childId"

    .prologue
    .line 185
    const/4 v1, -0x1

    .line 186
    .local v1, group:I
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    iget v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    iget v4, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v0

    .line 192
    .local v0, bin:I
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-ne v3, v4, :cond_0

    .line 201
    .end local v0           #bin:I
    :goto_1
    return v0

    .line 194
    .restart local v0       #bin:I
    :cond_0
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 196
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 195
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    .end local v0           #bin:I
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 201
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v5, 0x0

    .line 260
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    :goto_0
    return v5

    .line 262
    :cond_0
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    instance-of v6, v6, Landroid/database/CursorWrapper;

    if-eqz v6, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    check-cast v1, Landroid/database/CursorWrapper;

    .line 264
    .local v1, curWrapper:Landroid/database/CursorWrapper;
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 265
    .local v2, cursorTemp:Landroid/database/Cursor;
    instance-of v6, v2, Landroid/database/CrossProcessCursorWrapper;

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 266
    check-cast v0, Landroid/database/CrossProcessCursorWrapper;

    .line 267
    .local v0, crossCursorWrapper:Landroid/database/CrossProcessCursorWrapper;
    invoke-virtual {v0}, Landroid/database/CrossProcessCursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v6

    if-nez v6, :cond_1

    .line 268
    const-string v6, "DownloadManager/Enhance"

    const-string v7, "DateSortedExpandableListAdapter:moveCursorToChildPosition(), mCursor\'s window is null, return false"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v0           #crossCursorWrapper:Landroid/database/CrossProcessCursorWrapper;
    .end local v1           #curWrapper:Landroid/database/CursorWrapper;
    .end local v2           #cursorTemp:Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 276
    move v4, p2

    .line 277
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p1, :cond_2

    .line 278
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    :cond_2
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    goto :goto_0
.end method

.method moveCursorToPackedChildPosition(J)Z
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 240
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 242
    const/4 v2, 0x0

    .line 248
    :goto_0
    return v2

    .line 244
    :cond_0
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 246
    .local v1, groupPosition:I
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 248
    .local v0, childPosition:I
    invoke-virtual {p0, v1, v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v2

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 360
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 357
    return-void
.end method

.method refreshData()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method
