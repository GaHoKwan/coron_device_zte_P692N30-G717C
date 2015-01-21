.class public Lcom/android/mms/util/Recycler$WapPushRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WapPushRecycler"
.end annotation


# static fields
.field private static final ALL_WAPPUSH_THREADS_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_THREAD_ID:I = 0x1

.field private static final COLUMN_WAPPUSH_ADDRESS:I = 0x2

.field private static final COLUMN_WAPPUSH_DATE:I = 0x4

.field private static final COLUMN_WAPPUSH_READ:I = 0x5

.field private static final COLUMN_WAPPUSH_TYPE:I = 0x6

.field private static final COLUMN_WAPPUSH_URL:I = 0x3

.field private static final ID:I = 0x0

.field private static final MESSAGE_COUNT:I = 0x1

.field private static final WAPPUSH_MESSAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "message_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$WapPushRecycler;->ALL_WAPPUSH_THREADS_PROJECTION:[Ljava/lang/String;

    .line 613
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler$WapPushRecycler;->WAPPUSH_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$WapPushRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 734
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 735
    .local v9, msgs:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$WapPushRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 736
    .local v8, limit:I
    if-eqz v7, :cond_3

    .line 738
    const-wide/16 v10, 0x0

    .line 739
    .local v10, threadId:J
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$WapPushRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 741
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 742
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$WapPushRecycler;->WAPPUSH_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "locked=0"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 747
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, v8, :cond_0

    .line 748
    const/4 v0, 0x1

    .line 752
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 753
    if-eqz v9, :cond_1

    .line 754
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 758
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v10           #threadId:J
    :cond_1
    :goto_0
    return v0

    .line 752
    .restart local v10       #threadId:J
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 753
    if-eqz v9, :cond_3

    .line 754
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 758
    .end local v10           #threadId:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 752
    .restart local v10       #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 753
    if-eqz v9, :cond_4

    .line 754
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 18
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 666
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 668
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/Recycler$WapPushRecycler;->WAPPUSH_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "locked=0"

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 673
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 674
    :cond_0
    const-string v2, "Recycler"

    const-string v4, "WAPPUSH: deleteMessagesForThread got back null cursor"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    if-eqz v12, :cond_1

    .line 714
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_1
    :goto_0
    return-void

    .line 677
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 678
    .local v11, count:I
    sub-int v17, v11, p4

    .line 684
    .local v17, numberToDelete:I
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threadId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",keep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    if-gtz v17, :cond_3

    .line 713
    if-eqz v12, :cond_1

    .line 714
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 689
    :cond_3
    :try_start_2
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 690
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 691
    .local v15, latestDate:J
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 693
    .local v13, delId:J
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    .line 701
    .local v9, cntDeleted:J
    move/from16 v0, v17

    int-to-long v4, v0

    cmp-long v2, v9, v4

    if-eqz v2, :cond_4

    .line 702
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locked=0 AND _id<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    int-to-long v4, v2

    .line 713
    :cond_4
    if-eqz v12, :cond_1

    .line 714
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 713
    .end local v9           #cntDeleted:J
    .end local v11           #count:I
    .end local v13           #delId:J
    .end local v15           #latestDate:J
    .end local v17           #numberToDelete:I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 714
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method protected dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 4
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 720
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 721
    .local v0, date:J
    const/4 v3, 0x1

    invoke-static {p2, v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, dateStr:Ljava/lang/String;
    return-void
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 648
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 649
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v2, "true"

    invoke-virtual {v8, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 650
    const-string v0, "thread_type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 653
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$WapPushRecycler;->ALL_WAPPUSH_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date ASC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 658
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 636
    invoke-static {}, Lcom/android/mms/util/Recycler$WapPushRecycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 640
    invoke-static {}, Lcom/android/mms/util/Recycler$WapPushRecycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/util/Recycler$SmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 641
    return-void
.end method
