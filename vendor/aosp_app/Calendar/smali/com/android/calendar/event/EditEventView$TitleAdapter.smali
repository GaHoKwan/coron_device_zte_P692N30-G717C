.class Lcom/android/calendar/event/EditEventView$TitleAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleAdapter"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 843
    const v0, 0x109000a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 844
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView$TitleAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 845
    return-void
.end method

.method private static getTitleAtCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 853
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private uniqueTitlesCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .parameter "cursor"

    .prologue
    .line 909
    new-instance v7, Ljava/util/TreeMap;

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 911
    .local v7, titleToQueryResults:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 912
    .local v4, numColumns:I
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 915
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 916
    invoke-static {p1}, Lcom/android/calendar/event/EditEventView$TitleAdapter;->getTitleAtCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 917
    .local v6, title:Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    .line 918
    .local v0, data:[Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 919
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 920
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    :cond_1
    invoke-virtual {v7, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 927
    .end local v0           #data:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/calendar/event/EditEventView;->access$1700()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 928
    .local v3, newCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v7}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 929
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 931
    .end local v5           #result:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 932
    return-object v3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 863
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 864
    .local v0, textView:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/android/calendar/event/EditEventView$TitleAdapter;->getTitleAtCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EditEventView$TitleAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 858
    invoke-static {p1}, Lcom/android/calendar/event/EditEventView$TitleAdapter;->getTitleAtCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 849
    const/4 v0, 0x4

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 14
    .parameter "constraint"

    .prologue
    const/4 v6, 0x0

    .line 869
    if-nez p1, :cond_1

    const-string v9, ""

    .line 870
    .local v9, filter:Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 900
    :cond_0
    :goto_1
    return-object v6

    .line 869
    .end local v9           #filter:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 873
    .restart local v9       #filter:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 879
    .local v11, startTime:J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$TitleAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/calendar/event/EditEventView;->access$1700()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "title LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 881
    .local v13, tempCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 884
    :try_start_0
    invoke-direct {p0, v13}, Lcom/android/calendar/event/EditEventView$TitleAdapter;->uniqueTitlesCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v7, v0, v11

    .line 888
    .local v7, duration:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v10, msg:Ljava/lang/StringBuilder;
    const-string v0, "Autocomplete of "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 891
    const-string v0, ": title query match took "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 893
    const-string v0, "ms."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v0, "EditEventView"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #duration:J
    .end local v10           #msg:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0
.end method
