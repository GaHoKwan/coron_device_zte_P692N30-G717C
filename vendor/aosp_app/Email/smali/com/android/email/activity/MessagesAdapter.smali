.class public Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$1;,
        Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursor;,
        Lcom/android/email/activity/MessagesAdapter$Callback;
    }
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_KEY:I = 0x2

.field public static final COLUMN_ATTACHMENTS:I = 0x8

.field public static final COLUMN_DATE:I = 0x5

.field public static final COLUMN_DISPLAY_NAME:I = 0x3

.field public static final COLUMN_FAVORITE:I = 0x7

.field public static final COLUMN_FLAGS:I = 0x9

.field public static final COLUMN_FROM_LIST:I = 0xb

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MAILBOX_KEY:I = 0x1

.field public static final COLUMN_READ:I = 0x6

.field public static final COLUMN_SNIPPET:I = 0xa

.field public static final COLUMN_SUBJECT:I = 0x4

.field static final MESSAGE_MATRIX_PROJECTION:[Ljava/lang/String; = null

.field static final MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final STATE_CHECKED_ITEMS:Ljava/lang/String; = "com.android.email.activity.MessagesAdapter.checkedItems"

.field public static sDeletedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sFavoriteSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sUnreadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private mField:Ljava/lang/String;

.field public mIsEasRemoteMode:Z

.field private mIsSearchResult:Z

.field private mLayout:Lcom/android/email/activity/ThreePaneLayout;

.field private mQuery:Ljava/lang/String;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fromList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fromList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_MATRIX_PROJECTION:[Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadSet:Ljava/util/HashSet;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sFavoriteSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;Z)V
    .locals 3
    .parameter "context"
    .parameter "callback"
    .parameter "isSearchResult"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 131
    iput-boolean v2, p0, Lcom/android/email/activity/MessagesAdapter;->mIsSearchResult:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    .line 169
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 170
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 171
    iput-boolean p3, p0, Lcom/android/email/activity/MessagesAdapter;->mIsSearchResult:Z

    .line 172
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/email/activity/MessagesAdapter;->buildFilteredMessages(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private static addMessageRow(Landroid/database/MatrixCursor;JJJLjava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cursor"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "displayName"
    .parameter "subject"
    .parameter "timeStamp"
    .parameter "flagRead"
    .parameter "flagFavorite"
    .parameter "flagAttachment"
    .parameter "flags"
    .parameter "snippet"
    .parameter "fromList"

    .prologue
    .line 372
    move-wide v1, p1

    .line 373
    .local v1, listId:J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 374
    const-wide v4, 0x7fffffffffffffffL

    add-long v1, v4, p1

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 377
    .local v3, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 378
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 379
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 380
    invoke-virtual {v3, p7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 381
    invoke-virtual {v3, p8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 382
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 383
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 384
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 385
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 386
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 387
    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 388
    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 389
    return-void
.end method

.method private static addMessageRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 18
    .parameter "targetCursor"
    .parameter "sourceCursor"

    .prologue
    .line 409
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 410
    .local v2, messageId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 411
    .local v4, mailboxId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 412
    .local v6, accountId:J
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 413
    .local v12, isRead:I
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 414
    .local v13, isFavorite:I
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 415
    .local v15, flags:I
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 416
    .local v14, hasAttachment:I
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 417
    .local v10, timeStamp:J
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, displayName:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, subject:Ljava/lang/String;
    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, snippet:Ljava/lang/String;
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, fromList:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 421
    invoke-static/range {v1 .. v17}, Lcom/android/email/activity/MessagesAdapter;->addMessageRow(Landroid/database/MatrixCursor;JJJLjava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private static buildFilteredMessages(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 9
    .parameter "messages"

    .prologue
    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 393
    .local v3, startTime:J
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MessageListFragment] ===== buildFilteredMessages start at = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v5, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_MATRIX_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 396
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v5, -0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 399
    .local v1, messageId:J
    sget-object v5, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 400
    invoke-static {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->addMessageRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0

    .line 403
    .end local v1           #messageId:J
    :cond_1
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MessageListFragment] ===== buildFilteredMessages spend ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 0
    .parameter "view"
    .parameter "isFavorite"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 346
    return-void
.end method

.method public static createLoader(Landroid/content/Context;Lcom/android/email/MessageListContext;)Landroid/content/Loader;
    .locals 3
    .parameter "context"
    .parameter "listContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/email/MessageListContext;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessagesAdapter createLoader listContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 435
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MessageListFragment] MessagesAdapter createLoader listContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->isLocalSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/emailcommon/provider/EmailContent$Message;->sNewLocalSearchStarted:Z

    .line 439
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessagesAdapter$LocalSearchCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    .line 443
    :goto_0
    return-object v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    goto :goto_0

    .line 443
    :cond_1
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    goto :goto_0
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 3
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 299
    if-eqz p2, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 307
    :cond_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, itemView:Lcom/android/email/activity/MessageListItem;
    instance-of v4, p1, Lcom/android/email/activity/MessageListItem;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    iget-boolean v5, p0, Lcom/android/email/activity/MessagesAdapter;->mIsSearchResult:Z

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/ThreePaneLayout;Z)V

    .line 256
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 257
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 258
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 259
    .local v6, accountId:J
    iput-wide v6, v0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 261
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v9, v1

    .line 262
    .local v9, isRead:Z
    :goto_0
    iget-boolean v4, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eq v9, v4, :cond_2

    move v3, v1

    .line 263
    .local v3, readChanged:Z
    :goto_1
    iput-boolean v9, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 264
    const/4 v4, 0x7

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    :goto_2
    iput-boolean v4, v0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 265
    const/16 v4, 0x9

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 266
    .local v8, flags:I
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_3
    iput-boolean v4, v0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 267
    const/high16 v4, 0x4

    and-int/2addr v4, v8

    if-eqz v4, :cond_5

    move v4, v1

    :goto_4
    iput-boolean v4, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 268
    const/high16 v4, 0x8

    and-int/2addr v4, v8

    if-eqz v4, :cond_6

    move v4, v1

    :goto_5
    iput-boolean v4, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 269
    const/16 v4, 0x8

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    iput-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 270
    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->setTimestamp(J)V

    .line 271
    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    .line 272
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mQuery:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mField:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListItem;->setText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v1, v6, v7}, Lcom/android/email/ResourceHelper;->getAccountColorPaint(J)Landroid/graphics/Paint;

    move-result-object v1

    :goto_7
    iput-object v1, v0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    .line 276
    const/16 v1, 0xb

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListItem;->mFromList:Ljava/lang/String;

    .line 277
    return-void

    .end local v3           #readChanged:Z
    .end local v8           #flags:I
    .end local v9           #isRead:Z
    :cond_1
    move v9, v2

    .line 261
    goto :goto_0

    .restart local v9       #isRead:Z
    :cond_2
    move v3, v2

    .line 262
    goto :goto_1

    .restart local v3       #readChanged:Z
    :cond_3
    move v4, v2

    .line 264
    goto :goto_2

    .restart local v8       #flags:I
    :cond_4
    move v4, v2

    .line 266
    goto :goto_3

    :cond_5
    move v4, v2

    .line 267
    goto :goto_4

    :cond_6
    move v4, v2

    .line 268
    goto :goto_5

    :cond_7
    move v1, v2

    .line 269
    goto :goto_6

    .line 274
    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized clearDeletion(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getDeletedSet()Ljava/util/Set;

    move-result-object v0

    .line 221
    .local v0, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 223
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    .end local v0           #checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearSelection()V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 233
    .local v0, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 235
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 237
    :cond_0
    return-void
.end method

.method public getDeletedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItem;)Z
    .locals 3
    .parameter "itemView"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelectedAll()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    .line 184
    .local v1, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 185
    const-string v6, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v0, v2

    .line 186
    .local v3, l:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v3           #l:J
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 281
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v0, p1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, item:Lcom/android/email/activity/MessageListItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 179
    const-string v0, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 180
    return-void
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 314
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 315
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 319
    return-void
.end method

.method public declared-synchronized setDeletedSet(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayout(Lcom/android/email/activity/ThreePaneLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    .line 176
    return-void
.end method

.method public setQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "query"
    .parameter "field"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter;->mQuery:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mField:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setShowColorChips(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    .line 196
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "itemView"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;Z)V

    .line 288
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDeletedMessageList(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 350
    .local v1, start:J
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MessageListFragment] ===== updateMessageList start at = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->setDeletedSet(Ljava/util/Set;)V

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, filertedMessges:Landroid/database/Cursor;
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessagesAdapter;->buildFilteredMessages(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 356
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p0, v0}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 358
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MessageListFragment] ===== updateMessageList Spend ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void

    .line 356
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 1
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V

    .line 339
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V

    .line 342
    :cond_0
    return-void
.end method
