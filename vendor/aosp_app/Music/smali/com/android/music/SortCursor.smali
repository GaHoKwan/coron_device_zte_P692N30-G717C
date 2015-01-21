.class public Lcom/android/music/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 8
    .parameter "cursors"
    .parameter "sortcolumn"

    .prologue
    const/16 v7, 0x40

    .line 87
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 65
    iput v7, p0, Lcom/android/music/SortCursor;->ROWCACHESIZE:I

    .line 66
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    .line 67
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    .line 69
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    .line 71
    new-instance v5, Lcom/android/music/SortCursor$1;

    invoke-direct {v5, p0}, Lcom/android/music/SortCursor$1;-><init>(Lcom/android/music/SortCursor;)V

    iput-object v5, p0, Lcom/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 88
    iput-object p1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 90
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v5

    .line 91
    .local v3, length:I
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    .line 92
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 93
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    if-nez v5, :cond_0

    .line 92
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 98
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    iget-object v5, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    iget-object v6, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    goto :goto_1

    .line 103
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 104
    const-string v4, ""

    .line 105
    .local v4, smallest:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 106
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :cond_3
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, current:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 110
    :cond_4
    move-object v4, v0

    .line 111
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 115
    .end local v0           #current:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_4
    if-ltz v1, :cond_6

    .line 116
    iget-object v5, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v1

    .line 115
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 118
    :cond_6
    filled-new-array {v7, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    .line 119
    return-void
.end method

.method static synthetic access$002(Lcom/android/music/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/music/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 299
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 299
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 303
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 290
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 290
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 294
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 279
    :goto_0
    return-object v2

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 277
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, count:I
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 126
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 13
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 137
    if-ne p1, p2, :cond_0

    .line 212
    :goto_0
    return v8

    .line 148
    :cond_0
    rem-int/lit8 v0, p2, 0x40

    .line 150
    .local v0, cache_entry:I
    iget-object v9, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    aget v9, v9, v0

    if-ne v9, p2, :cond_2

    .line 151
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    aget v7, v9, v0

    .line 152
    .local v7, which:I
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v7

    iput-object v9, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 153
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v9, :cond_1

    .line 154
    const-string v8, "SortCursor"

    const-string v9, "onMove: cache results in a null cursor."

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v8, 0x0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    aget-object v10, v10, v0

    aget v10, v10, v7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 158
    iput v0, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    goto :goto_0

    .line 162
    .end local v7           #which:I
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 163
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v9

    .line 165
    .local v4, length:I
    iget v9, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    if-ltz v9, :cond_4

    .line 166
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 167
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_3

    .line 166
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    :cond_3
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    iget v11, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    aget-object v10, v10, v11

    aget v10, v10, v2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2

    .line 172
    .end local v2           #i:I
    :cond_4
    if-lt p2, p1, :cond_5

    if-ne p1, v12, :cond_8

    .line 173
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 174
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_6

    .line 173
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 175
    :cond_6
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4

    .line 177
    :cond_7
    const/4 p1, 0x0

    .line 179
    .end local v2           #i:I
    :cond_8
    if-gez p1, :cond_9

    .line 180
    const/4 p1, 0x0

    .line 184
    :cond_9
    const/4 v6, -0x1

    .line 185
    .local v6, smallestIdx:I
    move v2, p1

    .restart local v2       #i:I
    :goto_5
    if-gt v2, p2, :cond_e

    .line 186
    const-string v5, ""

    .line 187
    .local v5, smallest:Ljava/lang/String;
    const/4 v6, -0x1

    .line 188
    const/4 v3, 0x0

    .local v3, j:I
    :goto_6
    if-ge v3, v4, :cond_d

    .line 189
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 188
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 192
    :cond_b
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    aget v10, v10, v3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, current:Ljava/lang/String;
    if-ltz v6, :cond_c

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    .line 194
    :cond_c
    move-object v5, v1

    .line 195
    move v6, v3

    goto :goto_7

    .line 198
    .end local v1           #current:Ljava/lang/String;
    :cond_d
    if-ne v2, p2, :cond_10

    .line 203
    .end local v3           #j:I
    .end local v5           #smallest:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    iput-object v9, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 204
    iget-object v9, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    aput p2, v9, v0

    .line 205
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    aput v6, v9, v0

    .line 206
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_12

    .line 207
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-eqz v9, :cond_f

    .line 208
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v10, v10, v2

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    aput v10, v9, v2

    .line 206
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 199
    .restart local v3       #j:I
    .restart local v5       #smallest:Ljava/lang/String;
    :cond_10
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    if-eqz v9, :cond_11

    .line 200
    iget-object v9, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 185
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 211
    .end local v3           #j:I
    .end local v5           #smallest:Ljava/lang/String;
    :cond_12
    iput v12, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 308
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 329
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 330
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    const/4 v2, 0x0

    .line 337
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 318
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method
