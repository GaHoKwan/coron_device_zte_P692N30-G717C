.class public Lcom/android/mms/ui/WPMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "WPMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;,
        Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_THREAD_ID:I = 0x1

.field static final COLUMN_WPMS_ACTION:I = 0xb

.field static final COLUMN_WPMS_ADDR:I = 0x2

.field static final COLUMN_WPMS_CREATE:I = 0x9

.field static final COLUMN_WPMS_DATE:I = 0x5

.field static final COLUMN_WPMS_ERROR:I = 0xf

.field static final COLUMN_WPMS_EXPIRATION:I = 0xa

.field static final COLUMN_WPMS_LOCKED:I = 0xe

.field static final COLUMN_WPMS_READ:I = 0x4

.field static final COLUMN_WPMS_SERVICE_ADDR:I = 0x3

.field static final COLUMN_WPMS_SIID:I = 0x7

.field static final COLUMN_WPMS_SIMID:I = 0xd

.field static final COLUMN_WPMS_TEXT:I = 0xc

.field static final COLUMN_WPMS_TYPE:I = 0x6

.field static final COLUMN_WPMS_URL:I = 0x8

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field static final WP_PROJECTION:[Ljava/lang/String; = null

.field private static final WP_TAG:Ljava/lang/String; = "Mms/WapPush"


# instance fields
.field private final mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/WPMessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/WPMessageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "siid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "expiration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/WPMessageListAdapter;->WP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    .line 150
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageListItem:Ljava/util/List;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mTextSize:F

    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mContext:Landroid/content/Context;

    .line 152
    iput-object p5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 154
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 156
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    .line 160
    if-eqz p4, :cond_0

    .line 161
    new-instance v0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    .line 166
    :goto_0
    new-instance v0, Lcom/android/mms/ui/WPMessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/WPMessageListAdapter$1;-><init>(Lcom/android/mms/ui/WPMessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 176
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    goto :goto_0
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 340
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 186
    instance-of v5, p1, Lcom/android/mms/ui/WPMessageListItem;

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 188
    .local v4, type:I
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 190
    .local v1, msgId:J
    invoke-virtual {p0, v4, v1, v2, p3}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v3

    .line 191
    .local v3, msgItem:Lcom/android/mms/ui/WPMessageItem;
    if-eqz v3, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/android/mms/ui/WPMessageListItem;

    .line 193
    .local v0, mli:Lcom/android/mms/ui/WPMessageListItem;
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageListItem:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0, v3, v5}, Lcom/android/mms/ui/WPMessageListItem;->bind(Lcom/android/mms/ui/WPMessageItem;Z)V

    .line 195
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/WPMessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 198
    iget v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mTextSize:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 199
    iget v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mTextSize:F

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/WPMessageListItem;->setTextSize(F)V

    .line 203
    .end local v0           #mli:Lcom/android/mms/ui/WPMessageListItem;
    .end local v1           #msgId:J
    .end local v3           #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .end local v4           #type:I
    :cond_0
    return-void

    .line 194
    .restart local v0       #mli:Lcom/android/mms/ui/WPMessageListItem;
    .restart local v1       #msgId:J
    .restart local v3       #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .restart local v4       #type:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public changeSelectedState(J)V
    .locals 4
    .parameter "listId"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllContactListeners()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageListItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageListItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/WPMessageListItem;

    .line 208
    .local v1, item:Lcom/android/mms/ui/WPMessageListItem;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/android/mms/ui/WPMessageListItem;->unbind()V

    goto :goto_0

    .line 213
    .end local v1           #item:Lcom/android/mms/ui/WPMessageListItem;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageListItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 215
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public clearList()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/WPMessageListAdapter;->setItemsValue(Z[J)V

    .line 270
    return-void
.end method

.method public deleteCachedItems(Ljava/util/HashSet;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->evictAll()V

    .line 576
    :cond_0
    return-void

    .line 572
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 573
    .local v1, id:J
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;
    .locals 8
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/WPMessageItem;

    .line 316
    .local v7, item:Lcom/android/mms/ui/WPMessageItem;
    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/WPMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    if-nez v7, :cond_0

    .line 319
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/WPMessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/WPMessageItem;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v7           #item:Lcom/android/mms/ui/WPMessageItem;
    .local v0, item:Lcom/android/mms/ui/WPMessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :goto_0
    return-object v0

    .line 321
    .end local v0           #item:Lcom/android/mms/ui/WPMessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/WPMessageItem;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 322
    .end local v7           #item:Lcom/android/mms/ui/WPMessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/WPMessageItem;
    .local v6, e:Ljava/lang/Exception;
    :goto_1
    const-string v1, "Mms/WapPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPMessageListAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0           #item:Lcom/android/mms/ui/WPMessageItem;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #item:Lcom/android/mms/ui/WPMessageItem;
    :cond_0
    const/16 v1, 0xb

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/mms/ui/WPMessageItem;->mAction:I

    .line 326
    const/4 v1, 0x5

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/mms/ui/WPMessageItem;->mDate:J

    .line 327
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, v7, Lcom/android/mms/ui/WPMessageItem;->mDate:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/mms/ui/WPMessageItem;->mTimestamp:Ljava/lang/String;

    .line 328
    const/16 v1, 0xa

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v7, Lcom/android/mms/ui/WPMessageItem;->mExpirationLong:J

    .line 329
    const/16 v1, 0xc

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    .line 330
    const/16 v1, 0x8

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    .line 331
    const/4 v1, 0x4

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v7, v1}, Lcom/android/mms/ui/WPMessageItem;->setIsUnread(Z)V

    .line 332
    const/16 v1, 0xf

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/mms/ui/WPMessageItem;->mIsExpired:I

    :cond_1
    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/WPMessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/WPMessageItem;
    goto :goto_0

    .line 331
    .end local v0           #item:Lcom/android/mms/ui/WPMessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/WPMessageItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 321
    .end local v7           #item:Lcom/android/mms/ui/WPMessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/WPMessageItem;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public getItemList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 368
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v1

    return v1
.end method

.method public getSelectedNumber()I
    .locals 4

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, iter:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 275
    .local v2, number:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    return v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public initListMap(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    const-wide/16 v0, 0x0

    .line 243
    .local v0, itemId:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v2, v2, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v0           #itemId:J
    :cond_1
    return-void
.end method

.method public isAllSelected()Z
    .locals 9

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 520
    .local v0, count:I
    const/4 v3, 0x1

    .line 521
    .local v3, isAllChecked:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 522
    invoke-virtual {p0, v2}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 523
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v8, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 524
    .local v7, type:I
    iget-object v8, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 525
    .local v4, msgId:J
    invoke-virtual {p0, v7, v4, v5, v1}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v6

    .line 526
    .local v6, msgItem:Lcom/android/mms/ui/WPMessageItem;
    invoke-virtual {v6}, Lcom/android/mms/ui/WPMessageItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_1

    .line 527
    const/4 v3, 0x0

    .line 531
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v4           #msgId:J
    .end local v6           #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .end local v7           #type:I
    :cond_0
    return v3

    .line 521
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v4       #msgId:J
    .restart local v6       #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .restart local v7       #type:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/WPMessageListAdapter;)V

    .line 298
    :cond_0
    return-void
.end method

.method public notifyImageLoaded(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 286
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/WPMessageListAdapter;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setItemOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mItemOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 182
    return-void
.end method

.method public setItemsValue(Z[J)V
    .locals 6
    .parameter "value"
    .parameter "keyArray"

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    .local v2, iter:Ljava/util/Iterator;
    if-nez p2, :cond_0

    .line 256
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mListItem:Ljava/util/Map;

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;

    .line 224
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 515
    iput p1, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mTextSize:F

    .line 516
    return-void
.end method

.method public uncheckAll()V
    .locals 8

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 554
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 555
    invoke-virtual {p0, v2}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 556
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 557
    .local v6, type:I
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 558
    .local v3, msgId:J
    invoke-virtual {p0, v6, v3, v4, v1}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v5

    .line 559
    .local v5, msgItem:Lcom/android/mms/ui/WPMessageItem;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/WPMessageItem;->setIsChecked(Z)V

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #msgId:J
    .end local v5           #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .end local v6           #type:I
    :cond_0
    return-void
.end method

.method public uncheckSelect(Ljava/util/HashSet;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 536
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 537
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 539
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 540
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_0

    move-object v0, v6

    .line 541
    check-cast v0, Landroid/database/Cursor;

    .line 542
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v8, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsType:I

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 543
    .local v7, type:I
    iget-object v8, p0, Lcom/android/mms/ui/WPMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;

    iget v8, v8, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 544
    .local v3, msgId:J
    invoke-virtual {p0, v7, v3, v4, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v5

    .line 545
    .local v5, msgItem:Lcom/android/mms/ui/WPMessageItem;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/mms/ui/WPMessageItem;->setIsChecked(Z)V

    goto :goto_0

    .line 550
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #index:I
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #msgId:J
    .end local v5           #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #type:I
    :cond_1
    return-void
.end method
