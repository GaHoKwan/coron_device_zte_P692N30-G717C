.class public Lcom/mediatek/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_END_MILLIS:Ljava/lang/String; = "key_end_millis"

.field protected static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field protected static final BUNDLE_KEY_START_MILLIS:Ljava/lang/String; = "key_start_millis"

.field static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "PC Sync"

.field private static final TAG:Ljava/lang/String; = "VCalParser"


# instance fields
.field private mCalendarId:J

.field private mCancelRequest:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccountName:Ljava/lang/String;

.field private mCurrentCnt:I

.field private mCurrentUri:Landroid/net/Uri;

.field private mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

.field private mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

.field private final mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

.field private mTotalCnt:I

.field private final mUriAccountPears:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVcsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 1
    .parameter "srcUri"
    .parameter "dstAccount"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 1
    .parameter "srcUri"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 115
    const-string v0, "PC Sync"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 3
    .parameter "srcUri"
    .parameter "dstAccountName"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    .line 77
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    .line 131
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    .line 132
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .local v0, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iput-object p3, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    .line 136
    iput-object p4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 2
    .parameter "vcsContent"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    .line 149
    iput-object p3, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 150
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    .line 151
    const-string v0, "PC Sync"

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private initTools()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 390
    :goto_0
    return v2

    .line 364
    :cond_0
    new-instance v2, Lcom/mediatek/vcalendar/DbOperationHelper;

    iget-object v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3, v6}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    .line 365
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v2}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    .line 366
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 367
    const-string v2, "VCalParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initTools: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calendars exist in the given account."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    .line 372
    :goto_1
    iget-wide v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v2, v3, v3, v4}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    move v2, v3

    .line 374
    goto :goto_0

    .line 370
    :cond_1
    const-string v2, "VCalParser"

    const-string v5, "initTools: the given calendar account does not exsit."

    invoke-static {v2, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_2
    const-string v2, "VCalParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initTools: accountName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    new-instance v2, Lcom/mediatek/vcalendar/FileOperationHelper;

    iget-object v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v6}, Lcom/mediatek/vcalendar/FileOperationHelper;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v4

    .line 390
    goto/16 :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTools: the given Uri cannot be parsed, Uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 383
    goto/16 :goto_0

    .line 384
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VCalParser"

    const-string v4, "initTools: IOException Occured when I/O operation. "

    invoke-static {v2, v4}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 387
    goto/16 :goto_0
.end method

.method private parseVCalProperties_v1(Ljava/lang/String;)V
    .locals 10
    .parameter "vcsString"

    .prologue
    .line 483
    const-string v7, "VERSION"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    const-string v7, "VERSION"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 485
    .local v6, versionStart:I
    const-string v7, "\n"

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 486
    .local v5, versionEnd:I
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, version:Ljava/lang/String;
    sput-object v4, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    .line 489
    const-string v2, "TZ:"

    .line 490
    .local v2, tzPrefix:Ljava/lang/String;
    const-string v7, "1.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 491
    const-string v7, "TZ"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 492
    .local v3, tzStart:I
    const-string v7, "\n"

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 493
    .local v1, tzEnd:I
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, tz:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    .line 495
    const-string v7, "VCalParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVCalProperties_v1: sTz="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v0           #tz:Ljava/lang/String;
    .end local v1           #tzEnd:I
    .end local v2           #tzPrefix:Ljava/lang/String;
    .end local v3           #tzStart:I
    .end local v4           #version:Ljava/lang/String;
    .end local v5           #versionEnd:I
    .end local v6           #versionStart:I
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCurrentParse()V
    .locals 3

    .prologue
    .line 245
    const-string v0, "VCalParser"

    const-string v1, "cancelCurrentParse"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    .line 247
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    iget v2, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-interface {v0, v1, v2}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationCanceled(II)V

    .line 248
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "VCalParser"

    const-string v1, "close."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/FileOperationHelper;->close()V

    .line 255
    :cond_0
    return-void
.end method

.method public startParse()V
    .locals 14

    .prologue
    .line 160
    const-string v10, "VCalParser"

    const-string v11, "startParse: started."

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 162
    .local v7, uriCnt:I
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    .line 163
    const/4 v8, 0x0

    .local v8, uriIndex:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 164
    const-string v10, "VCalParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startParse,fileIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/net/Uri;

    iput-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    .line 166
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalParser;->initTools()Z

    move-result v10

    if-nez v10, :cond_1

    .line 169
    const-string v10, "VCalParser"

    const-string v11, "startParse: initTools failed."

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 172
    :cond_1
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v10}, Lcom/mediatek/vcalendar/FileOperationHelper;->getVEventsCount()I

    move-result v10

    iput v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    .line 173
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v11, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-interface {v10, v11}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationStarted(I)V

    .line 174
    const-string v10, "VCalParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startParse: Events total count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 176
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x2

    invoke-interface {v10, v11, v12, v13}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    .line 178
    :cond_2
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    .line 179
    const-wide/16 v4, -0x1

    .line 180
    .local v4, startTime:J
    :goto_2
    iget-boolean v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v10}, Lcom/mediatek/vcalendar/FileOperationHelper;->hasNextVEvent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 181
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v10}, Lcom/mediatek/vcalendar/FileOperationHelper;->getNextVEventString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, str:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VEvent;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 192
    .local v9, vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    new-instance v0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;-><init>()V

    .line 193
    .local v0, cntValues:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getEventValues()Landroid/content/ContentValues;

    move-result-object v10

    const-string v11, "calendar_id"

    iget-wide v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v9}, Lcom/mediatek/vcalendar/component/VEvent;->getOrganizer()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, organizer:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 199
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getEventValues()Landroid/content/ContentValues;

    move-result-object v10

    const-string v11, "organizer"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getEventValues()Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/vcalendar/component/VEvent;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 204
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/vcalendar/component/VEvent;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    .line 205
    invoke-virtual {v0}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/vcalendar/component/VEvent;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    .line 206
    invoke-virtual {v9}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J
    :try_end_1
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 215
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v11, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    iget v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-interface {v10, v11, v12}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    .line 217
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v10}, Lcom/mediatek/vcalendar/FileOperationHelper;->hasNextVEvent()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 218
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/mediatek/vcalendar/DbOperationHelper;->addNextContentValue(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;Z)Landroid/net/Uri;

    .line 225
    :goto_3
    iget v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    goto :goto_2

    .line 185
    .end local v0           #cntValues:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
    .end local v3           #organizer:Ljava/lang/String;
    .end local v9           #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v10, "VCalParser"

    const-string v11, "startAccountCompose: BuileEvent failed"

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v11, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    iget v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 207
    .end local v1           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    .restart local v0       #cntValues:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
    .restart local v3       #organizer:Ljava/lang/String;
    .restart local v9       #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :catch_1
    move-exception v1

    .line 208
    .restart local v1       #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v10, "VCalParser"

    const-string v11, "startParse: VEvent to contentvalues failed"

    invoke-static {v10, v11}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v11, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    iget v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    .line 210
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 220
    .end local v1           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    :cond_4
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v0, v11}, Lcom/mediatek/vcalendar/DbOperationHelper;->addNextContentValue(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;Z)Landroid/net/Uri;

    goto :goto_3

    .line 228
    .end local v0           #cntValues:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
    .end local v3           #organizer:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    .end local v9           #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v2, eventInfo:Landroid/os/Bundle;
    const-string v10, "key_start_millis"

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v11, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentCnt:I

    iget v12, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-interface {v10, v11, v12, v2}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    .line 232
    sget-object v10, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 234
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v10}, Lcom/mediatek/vcalendar/FileOperationHelper;->close()V

    .line 235
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mUriAccountPears:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    iget-boolean v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mCancelRequest:Z

    if-eqz v10, :cond_6

    .line 237
    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/vcalendar/DbOperationHelper;->addNextContentValue(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;Z)Landroid/net/Uri;

    .line 238
    sget-object v10, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 163
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public startParsePreview()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 294
    const-string v4, "VCalParser"

    const-string v5, "startParsePreview: started"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :try_start_0
    new-instance v4, Lcom/mediatek/vcalendar/FileOperationHelper;

    iget-object v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/mediatek/vcalendar/FileOperationHelper;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/FileOperationHelper;->getFirstEventStr()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const-string v4, "VCalParser"

    const-string v5, "startParsePreview: it is not a vcs file."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v4, v7, v8, v7}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    .line 315
    :cond_0
    const/4 v3, 0x0

    .line 316
    .local v3, vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    if-eqz v2, :cond_1

    .line 318
    :try_start_1
    invoke-static {v2}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VEvent;
    :try_end_1
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 325
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 326
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v4, v7, v8, v7}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    .line 327
    const-string v4, "VCalParser"

    const-string v5, "startParse: buildEvents failed, vEvent = null"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "VCalParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startParsePreview: the given Uri cannot be parsed, Uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    const/4 v5, 0x3

    invoke-interface {v4, v7, v8, v5}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    goto :goto_1

    .line 303
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, e:Ljava/io/IOException;
    const-string v4, "VCalParser"

    const-string v5, "startParsePreview: IOException Occured when I/O operation. "

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #str:Ljava/lang/String;
    .restart local v3       #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :catch_2
    move-exception v0

    .line 320
    .local v0, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v4, "VCalParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startParsePreview : build calendar failed : \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    :cond_2
    new-instance v1, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;

    invoke-direct {v1}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;-><init>()V

    .line 332
    .local v1, previewInfo:Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/FileOperationHelper;->getVEventsCount()I

    move-result v4

    iput v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    .line 333
    iget v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    #setter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mEventsCnt:I
    invoke-static {v1, v4}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$002(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;I)I

    .line 334
    #getter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mEventsCnt:I
    invoke-static {v1}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$000(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;)I

    move-result v4

    if-gtz v4, :cond_3

    .line 335
    const-string v4, "VCalParser"

    const-string v5, "startParsePreview: No VEvent exsits in the file."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    const/4 v5, 0x2

    invoke-interface {v4, v7, v8, v5}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/component/VEvent;->getTitle()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventSummary:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$102(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/component/VEvent;->getOrganizer()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventOrganizer:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$202(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    :try_start_2
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J

    move-result-wide v4

    #setter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFisrtEventStartTime:J
    invoke-static {v1, v4, v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$302(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;J)J

    .line 344
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/vcalendar/component/VEvent;->getTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->mFirstEventDuration:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->access$402(Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 350
    :goto_2
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v5, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    iget v6, p0, Lcom/mediatek/vcalendar/VCalParser;->mTotalCnt:I

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 345
    :catch_3
    move-exception v0

    .line 346
    .restart local v0       #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v4, "VCalParser"

    const-string v5, "startParsePreview: vEvent.getTime failed."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public startParseVcsContent()V
    .locals 22

    .prologue
    .line 399
    const-string v18, "VCalParser"

    const-string v19, "startParseVcsContent"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BEGIN:VEVENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "END:VEVENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 401
    :cond_0
    const-string v18, "VCalParser"

    const-string v19, "startParseVcsContent: the given Content do not contains a VEvent."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v18, "VCalParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The failed string : \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 406
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/VCalParser;->parseVCalProperties_v1(Ljava/lang/String;)V

    .line 411
    const/4 v13, 0x0

    .line 412
    .local v13, start:I
    const/4 v5, 0x0

    .line 413
    .local v5, end:I
    const/4 v10, 0x0

    .line 415
    .local v10, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 416
    .local v12, maxlen:I
    :goto_1
    if-ge v10, v12, :cond_3

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BEGIN:VEVENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "END:VEVENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "END:VEVENT"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v5, v18, v19

    .line 419
    add-int/lit8 v10, v5, 0x1

    .line 420
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    .line 421
    :cond_2
    const-string v18, "VCalParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "end parse or error, start="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; end="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_3
    sget-object v18, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 424
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mVcsString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, str:Ljava/lang/String;
    const/16 v17, 0x0

    .line 427
    .local v17, vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VEvent;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 432
    :goto_2
    if-nez v17, :cond_5

    .line 433
    const-string v18, "VCalParser"

    const-string v19, "startParse: buildEvents failed, vEvent = null"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :catch_0
    move-exception v4

    .line 429
    .local v4, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v18, "VCalParser"

    const-string v19, "startAccountCompose: BuileEvent failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 437
    .end local v4           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    :cond_5
    new-instance v18, Lcom/mediatek/vcalendar/DbOperationHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mCurrentAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v11

    .line 439
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 440
    const-string v18, "VCalParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "startParseVcsContent: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " calendars exist in the given account."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    .line 445
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-interface/range {v18 .. v21}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    goto/16 :goto_0

    .line 443
    :cond_6
    const-string v18, "VCalParser"

    const-string v19, "startParseVcsContent: the given calendar account does not exsit."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 450
    :cond_7
    new-instance v3, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;

    invoke-direct {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;-><init>()V

    .line 451
    .local v3, cntValues:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getEventValues()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "calendar_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mCalendarId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-wide/16 v14, -0x1

    .line 454
    .local v14, startTime:J
    const-wide/16 v6, -0x1

    .line 456
    .local v6, endTime:J
    :try_start_1
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getEventValues()Landroid/content/ContentValues;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/vcalendar/component/VEvent;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 457
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/vcalendar/component/VEvent;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    .line 458
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/vcalendar/component/VEvent;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    .line 459
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/vcalendar/component/VEvent;->getDtStart()J

    move-result-wide v14

    .line 460
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/vcalendar/component/VEvent;->getDtEnd()J
    :try_end_1
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 466
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vcalendar/DbOperationHelper;->addNextContentValue(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;Z)Landroid/net/Uri;

    move-result-object v9

    .line 467
    .local v9, eventUri:Landroid/net/Uri;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v8, eventInfo:Landroid/os/Bundle;
    const-string v18, "key_event_id"

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 469
    const-string v18, "key_start_millis"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    const-string v18, "key_end_millis"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/vcalendar/VCalParser;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 461
    .end local v8           #eventInfo:Landroid/os/Bundle;
    .end local v9           #eventUri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 462
    .restart local v4       #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v18, "VCalParser"

    const-string v19, "startParse: VEvent to contentvalues failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method
