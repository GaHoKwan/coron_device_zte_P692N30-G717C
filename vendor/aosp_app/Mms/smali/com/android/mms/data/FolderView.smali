.class public Lcom/android/mms/data/FolderView;
.super Ljava/lang/Object;
.source "FolderView.java"


# static fields
.field private static final ADDRESS:I = 0x2

.field private static final ATTACHMENT:I = 0x8

.field private static final BOXTYPE:I = 0xb

.field private static final DATE:I = 0x4

.field private static final DRAFTFOLDER_URI:Landroid/net/Uri; = null

.field private static final ID:I = 0x0

.field private static final INBOXFOLDER_URI:Landroid/net/Uri; = null

.field private static final LOCKED:I = 0xd

.field private static final M_TYPE:I = 0x9

.field private static final OUTBOXFOLDER_URI:Landroid/net/Uri; = null

.field private static final READ:I = 0x5

.field private static final SENDBOXFOLDER_URI:Landroid/net/Uri; = null

.field private static final SILENT_SELECTION:Ljava/lang/String; = "(ThreadSettings.NOTIFICATION_ENABLE = 0) OR (ThreadSettings.MUTE > 0 and ThreadSettings.MUTE_START > 0)"

.field private static final SIM_ID:I = 0xa

.field private static final STATUS:I = 0x7

.field private static final SUBJECT:I = 0x3

.field private static final SUB_CS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "FolderView"

.field private static final THREAD_ID:I = 0x1

.field private static final THREAD_URI_FOR_RECEIPIENTS:Landroid/net/Uri; = null

.field private static final TYPE:I = 0x6

.field private static mMuteCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/util/MuteCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBoxType:I

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mId:I

.field private mIsMute:Z

.field private mLocked:Z

.field private mRecipientString:Lcom/android/mms/data/ContactList;

.field private mSimId:I

.field private mStatus:I

.field private mSubject:Ljava/lang/String;

.field private mThreadId:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FolderView;->THREAD_URI_FOR_RECEIPIENTS:Landroid/net/Uri;

    .line 85
    const-string v0, "content://mms-sms/draftbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FolderView;->DRAFTFOLDER_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "content://mms-sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FolderView;->INBOXFOLDER_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "content://mms-sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FolderView;->OUTBOXFOLDER_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "content://mms-sms/sentbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FolderView;->SENDBOXFOLDER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sput-object p1, Lcom/android/mms/data/FolderView;->sContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/FolderView;->mRecipientString:Lcom/android/mms/data/ContactList;

    .line 129
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/data/FolderView;->DRAFTFOLDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/data/FolderView;->INBOXFOLDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/mms/data/FolderView;->markFailedSmsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/mms/data/FolderView;->markOutboxMmsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/data/FolderView;->OUTBOXFOLDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/data/FolderView;->SENDBOXFOLDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/FolderView;Landroid/database/Cursor;Z)V
    .locals 14
    .parameter "context"
    .parameter "fview"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    .line 316
    monitor-enter p1

    .line 317
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/mms/data/FolderView;->mId:I

    .line 318
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    .line 319
    const/4 v1, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/mms/data/FolderView;->mDate:J

    .line 320
    const/4 v1, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mHasUnreadMessages:Z

    .line 321
    const/4 v1, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;

    .line 322
    const/4 v1, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/mms/data/FolderView;->mType:I

    .line 323
    const/16 v1, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/mms/data/FolderView;->mBoxType:I

    .line 324
    const/4 v1, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/mms/data/FolderView;->mStatus:I

    .line 325
    iget v1, p1, Lcom/android/mms/data/FolderView;->mBoxType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/mms/data/FolderView;->mStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mHasError:Z

    .line 326
    const/16 v1, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mHasAttachment:Z

    .line 327
    const/16 v1, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/mms/data/FolderView;->mSimId:I

    .line 328
    const/16 v1, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mLocked:Z

    .line 329
    iget v1, p1, Lcom/android/mms/data/FolderView;->mBoxType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 330
    iget-wide v1, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    invoke-static {v1, v2}, Lcom/android/mms/util/MuteCache;->getMuteEntry(J)Lcom/android/mms/util/MuteEntry;

    move-result-object v1

    if-nez v1, :cond_9

    .line 331
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkAppSettingsNeedNotify(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mIsMute:Z

    .line 332
    const-string v1, "FolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fview.mIsMute =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/mms/data/FolderView;->mIsMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, recipientIds:Ljava/lang/String;
    iget v1, p1, Lcom/android/mms/data/FolderView;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/mms/data/FolderView;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/mms/data/FolderView;->mBoxType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p1, Lcom/android/mms/data/FolderView;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 348
    :cond_2
    move/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    .line 353
    .local v10, recipients:Lcom/android/mms/data/ContactList;
    :goto_6
    iget v1, p1, Lcom/android/mms/data/FolderView;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 354
    iget-object v1, p1, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 355
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/16 v1, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 357
    .local v11, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;

    .line 362
    .end local v11           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    :goto_7
    monitor-enter p1

    .line 363
    :try_start_1
    iput-object v10, p1, Lcom/android/mms/data/FolderView;->mRecipientString:Lcom/android/mms/data/ContactList;

    .line 364
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    const-string v1, "FolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecipientString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/data/FolderView;->mRecipientString:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 320
    .end local v9           #recipientIds:Ljava/lang/String;
    .end local v10           #recipients:Lcom/android/mms/data/ContactList;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 325
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 326
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 328
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 331
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 334
    :cond_9
    :try_start_2
    iget-wide v2, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    invoke-static {}, Lcom/android/mms/util/MuteCache;->getInstance()Lcom/android/mms/util/MuteCache;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/util/MuteCache;->getMute(J)J

    move-result-wide v4

    invoke-static {}, Lcom/android/mms/util/MuteCache;->getInstance()Lcom/android/mms/util/MuteCache;

    move-result-object v1

    iget-wide v6, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/mms/util/MuteCache;->getMuteStart(J)J

    move-result-wide v6

    invoke-static {}, Lcom/android/mms/util/MuteCache;->getInstance()Lcom/android/mms/util/MuteCache;

    move-result-object v1

    iget-wide v12, p1, Lcom/android/mms/data/FolderView;->mThreadId:J

    invoke-virtual {v1, v12, v13}, Lcom/android/mms/util/MuteCache;->getMuteEnable(J)Z

    move-result v8

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/MessageUtils;->checkNeedNotifyForFolderMode(Landroid/content/Context;JJJZ)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mIsMute:Z

    goto/16 :goto_5

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 334
    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    .line 340
    :cond_b
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p1, Lcom/android/mms/data/FolderView;->mIsMute:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 350
    .restart local v9       #recipientIds:Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v9, v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v10

    .line 351
    .restart local v10       #recipients:Lcom/android/mms/data/ContactList;
    const-string v1, "FolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipients "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 359
    :cond_d
    const v1, 0x7f0b023a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;

    goto/16 :goto_7

    .line 364
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/FolderView;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 309
    new-instance v0, Lcom/android/mms/data/FolderView;

    invoke-direct {v0, p0}, Lcom/android/mms/data/FolderView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, folderview:Lcom/android/mms/data/FolderView;
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/mms/data/FolderView;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/FolderView;Landroid/database/Cursor;Z)V

    .line 311
    return-object v0
.end method

.method public static markFailedSmsMmsSeen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 218
    const-string v0, "FolderView"

    const-string v1, "markFailedSmsMmsRead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/FolderView$5;

    invoke-direct {v1, p0}, Lcom/android/mms/data/FolderView$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    return-void
.end method

.method private static markFailedSmsSeen(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 202
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 203
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v4, "type = 4 or type = 6 or type = 5"

    .line 207
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private static markOutboxMmsSeen(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 211
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 212
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v4, "msg_box = 4"

    .line 214
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public static startDeleteBoxMessage(Landroid/content/AsyncQueryHandler;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteuri"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 294
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public static startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;I)V
    .locals 5
    .parameter "handler"
    .parameter "token"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 141
    move v1, p1

    .line 142
    .local v1, queryToken:I
    move-object v0, p0

    .line 143
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    const-string v2, "FolderView"

    const-string v3, "startQueryForDraftboxView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Lcom/android/mms/data/FolderView$1;

    invoke-direct {v2, v0, v1}, Lcom/android/mms/data/FolderView$1;-><init>(Landroid/content/AsyncQueryHandler;I)V

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method

.method public static startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;II)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "mPostTime"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 156
    move v2, p1

    .line 157
    .local v2, queryToken:I
    move v0, p2

    .line 158
    .local v0, postTime:I
    move-object v1, p0

    .line 159
    .local v1, queryHandler:Landroid/content/AsyncQueryHandler;
    const-string v3, "FolderView"

    const-string v4, "startQueryForDraftboxView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v3, Lcom/android/mms/data/FolderView$2;

    invoke-direct {v3, v1, v2}, Lcom/android/mms/data/FolderView$2;-><init>(Landroid/content/AsyncQueryHandler;I)V

    int-to-long v4, p2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method public static startQueryForInboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "where"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 172
    move v2, p1

    .line 173
    .local v2, queryToken:I
    move-object v1, p0

    .line 174
    .local v1, queryHandler:Landroid/content/AsyncQueryHandler;
    move-object v0, p2

    .line 175
    .local v0, mWhere:Ljava/lang/String;
    const-string v3, "FolderView"

    const-string v4, "startQueryForInboxView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Lcom/android/mms/data/FolderView$3;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/mms/data/FolderView$3;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method public static startQueryForInboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V
    .locals 7
    .parameter "handler"
    .parameter "token"
    .parameter "where"
    .parameter "mPostTime"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 187
    move v3, p1

    .line 188
    .local v3, queryToken:I
    move-object v2, p0

    .line 189
    .local v2, queryHandler:Landroid/content/AsyncQueryHandler;
    move v1, p3

    .line 190
    .local v1, postTime:I
    move-object v0, p2

    .line 191
    .local v0, mWhere:Ljava/lang/String;
    const-string v4, "FolderView"

    const-string v5, "startQueryForInboxView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v4, Lcom/android/mms/data/FolderView$4;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/mms/data/FolderView$4;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method

.method public static startQueryForOutBoxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "where"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 229
    move v2, p1

    .line 230
    .local v2, queryToken:I
    move-object v1, p0

    .line 231
    .local v1, queryHandler:Landroid/content/AsyncQueryHandler;
    move-object v0, p2

    .line 232
    .local v0, mWhere:Ljava/lang/String;
    const-string v3, "FolderView"

    const-string v4, "startQueryForOutBoxView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v3, Lcom/android/mms/data/FolderView$6;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/mms/data/FolderView$6;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method public static startQueryForOutBoxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V
    .locals 7
    .parameter "handler"
    .parameter "token"
    .parameter "where"
    .parameter "mPostTime"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 245
    move v3, p1

    .line 246
    .local v3, queryToken:I
    move-object v2, p0

    .line 247
    .local v2, queryHandler:Landroid/content/AsyncQueryHandler;
    move-object v0, p2

    .line 248
    .local v0, mWhere:Ljava/lang/String;
    move v1, p3

    .line 249
    .local v1, postTime:I
    const-string v4, "FolderView"

    const-string v5, "startQueryForOutBoxView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v4, Lcom/android/mms/data/FolderView$7;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/mms/data/FolderView$7;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method public static startQueryForSentboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "where"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 262
    move v2, p1

    .line 263
    .local v2, queryToken:I
    move-object v1, p0

    .line 264
    .local v1, queryHandler:Landroid/content/AsyncQueryHandler;
    move-object v0, p2

    .line 265
    .local v0, mWhere:Ljava/lang/String;
    const-string v3, "FolderView"

    const-string v4, "startQueryForSentboxView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v3, Lcom/android/mms/data/FolderView$8;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/mms/data/FolderView$8;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method public static startQueryForSentboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V
    .locals 7
    .parameter "handler"
    .parameter "token"
    .parameter "where"
    .parameter "mPostTime"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 278
    move v3, p1

    .line 279
    .local v3, queryToken:I
    move-object v2, p0

    .line 280
    .local v2, queryHandler:Landroid/content/AsyncQueryHandler;
    move-object v0, p2

    .line 281
    .local v0, mWhere:Ljava/lang/String;
    move v1, p3

    .line 282
    .local v1, postTime:I
    const-string v4, "FolderView"

    const-string v5, "startQueryForSentboxView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v4, Lcom/android/mms/data/FolderView$9;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/mms/data/FolderView$9;-><init>(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    int-to-long v5, p3

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void
.end method


# virtual methods
.method public declared-synchronized getmDate()J
    .locals 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/FolderView;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmHasAttachment()Z
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/FolderView;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmId()I
    .locals 1

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/FolderView;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmRead()Z
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/FolderView;->mHasUnreadMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmRecipientString()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/FolderView;->mRecipientString:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmSimId()I
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/FolderView;->mSimId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmStatus()I
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/FolderView;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/FolderView;->mSubject:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getmType()I
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/FolderView;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/FolderView;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLocked()Z
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/FolderView;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMute()Z
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/FolderView;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
