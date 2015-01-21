.class public Lcom/mediatek/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "PC Sync"

.field public static final MULTI_EVENT_MULTI_COUNT_MODE:I = 0x2

.field public static final SINGLE_ACCOUNT_MODE:I = 0x0

.field public static final SINGLE_EVENT_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "VCalComposer"


# instance fields
.field private mCalendarIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelRequest:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentCnt:I

.field private mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

.field private mDstFile:Ljava/io/File;

.field private mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

.field private final mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

.field private mMemoryFileName:Ljava/lang/String;

.field private final mMode:I

.field private mSelection:Ljava/lang/String;

.field private mSrcAccountName:Ljava/lang/String;

.field private mSrcEventId:J

.field private mTotalCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 77
    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/accounts/Account;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 1
    .parameter "dstFile"
    .parameter "srcAccount"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 83
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/mediatek/vcalendar/VCalComposer;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;JLcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 2
    .parameter "dstFile"
    .parameter "context"
    .parameter "eventId"
    .parameter "listener"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 77
    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcAccountName:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    .line 145
    iput-object p5, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 146
    iput-wide p3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 1
    .parameter "dstFile"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 87
    const-string v0, "PC Sync"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/vcalendar/VCalComposer;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 2
    .parameter "dstFile"
    .parameter "context"
    .parameter "selection"
    .parameter "listener"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 77
    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    .line 126
    iput-object p4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    .line 128
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    .line 129
    iput-object p3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSelection:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 3
    .parameter "dstFile"
    .parameter "srcAccountName"
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 73
    iput-boolean v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 77
    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    .line 100
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcAccountName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    .line 102
    iput-object p4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 103
    iput v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    .line 104
    return-void
.end method

.method private initTools()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 408
    const-string v1, "VCalComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTools Mode is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 411
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcAccountName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 412
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_1
    new-instance v1, Lcom/mediatek/vcalendar/DbOperationHelper;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    .line 416
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    .line 418
    new-instance v1, Lcom/mediatek/vcalendar/FileOperationHelper;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vcalendar/FileOperationHelper;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Lcom/mediatek/vcalendar/DbOperationHelper;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    if-nez v1, :cond_2

    .line 429
    const-string v0, "VCalComposer"

    const-string v1, "The destination file can not be null"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 433
    :cond_2
    new-instance v1, Lcom/mediatek/vcalendar/DbOperationHelper;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSelection:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    .line 434
    iget-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    .line 436
    new-instance v1, Lcom/mediatek/vcalendar/FileOperationHelper;

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vcalendar/FileOperationHelper;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareSingleEventHandle()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 452
    iget v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    if-eq v2, v1, :cond_1

    .line 453
    const-string v1, "VCalComposer"

    const-string v2, "startEventCompose() can be called only in SINGLE_EVENT_MODE"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    iget-wide v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 457
    const-string v1, "VCalComposer"

    const-string v2, "The EventId should be set firstly"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalComposer;->initTools()Z

    move-result v2

    if-nez v2, :cond_3

    .line 461
    const-string v1, "VCalComposer"

    const-string v2, "initTools failed"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_3
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    iget-wide v3, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->isGivenIdEventExisted(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 468
    goto :goto_0
.end method


# virtual methods
.method public buildVEventString(J)Ljava/lang/String;
    .locals 6
    .parameter "eventId"

    .prologue
    const/4 v3, 0x0

    .line 162
    iput-wide p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 163
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalComposer;->prepareSingleEventHandle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    :goto_0
    return-object v3

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    .line 168
    const/4 v4, 0x1

    iput v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 170
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getNextVEventInfo()Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;

    move-result-object v1

    .line 171
    .local v1, eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    const/4 v2, 0x0

    .line 173
    .local v2, vEvent:Lcom/mediatek/vcalendar/component/Component;
    :try_start_0
    invoke-static {v1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)Lcom/mediatek/vcalendar/component/VEvent;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/mediatek/vcalendar/component/Component;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v4, "VCalComposer"

    const-string v5, "startAccountCompose: BuileEvent failed"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelCurrentCompose()V
    .locals 3

    .prologue
    .line 264
    const-string v0, "VCalComposer"

    const-string v1, "///////cancelCurrentParse"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 266
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    iget v2, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    invoke-interface {v0, v1, v2}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationCanceled(II)V

    .line 267
    return-void
.end method

.method public getAccountsMemoryFile()Landroid/content/res/AssetFileDescriptor;
    .locals 22

    .prologue
    .line 316
    const-string v4, "VCalComposer"

    const-string v5, "getAccountsMemoryFile : start to create the AccountsMemory File "

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v9, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    if-eqz v4, :cond_0

    .line 320
    const/4 v2, 0x0

    .line 394
    :goto_0
    return-object v2

    .line 323
    :cond_0
    new-instance v4, Lcom/mediatek/vcalendar/DbOperationHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/vcalendar/VCalComposer;->mSelection:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/mediatek/vcalendar/DbOperationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    .line 325
    const-string v4, "VCalComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAccountsCompose:: accountCnt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getVEventCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    if-gtz v4, :cond_2

    .line 334
    const-string v4, "VCalComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAccountsCompose:: No event matched the selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/vcalendar/VCalComposer;->mSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    :cond_2
    const-wide/16 v10, -0x1

    .line 340
    .local v10, currentCalendarId:J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->hasNextVEvent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 341
    const-string v4, "VCalComposer"

    const-string v5, "startAccountsCompose:: Compose while doing!"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getNextVEventInfo()Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;

    move-result-object v14

    .line 345
    .local v14, eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    invoke-virtual {v14}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getCalendarId()J

    move-result-wide v18

    .line 346
    .local v18, tempId:J
    const-string v4, "VCalComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountsMemoryFile : currentCalendarId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; tempId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    cmp-long v4, v18, v10

    if-eqz v4, :cond_4

    .line 348
    const-wide/16 v4, -0x1

    cmp-long v4, v10, v4

    if-eqz v4, :cond_3

    .line 349
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_3
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarHead()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    move-wide/from16 v10, v18

    .line 355
    :cond_4
    const/16 v20, 0x0

    .line 357
    .local v20, vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :try_start_0
    invoke-static {v14}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)Lcom/mediatek/vcalendar/component/VEvent;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 364
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/vcalendar/component/Component;->toString()Ljava/lang/String;

    move-result-object v21

    .line 365
    .local v21, vEventStr:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 367
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/vcalendar/component/VEvent;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    goto/16 :goto_1

    .line 358
    .end local v21           #vEventStr:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 359
    .local v13, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v4, "VCalComposer"

    const-string v5, "getAccountsMemoryFile: BuildEvent failed"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 371
    .end local v13           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    .end local v14           #eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    .end local v18           #tempId:J
    .end local v20           #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :cond_6
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 375
    .local v12, data:[B
    const/4 v8, 0x0

    .line 377
    .local v8, assetFD:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    const-string v16, "calenderAssetFile"

    .line 378
    .local v16, filename:Ljava/lang/String;
    new-instance v17, Landroid/os/MemoryFile;

    array-length v4, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 379
    .local v17, memoryFile:Landroid/os/MemoryFile;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v4, v5, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 381
    invoke-virtual/range {v17 .. v17}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    .line 382
    .local v15, fd:Ljava/io/FileDescriptor;
    invoke-static {v15}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 383
    .local v3, pFD:Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/os/MemoryFile;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 385
    .end local v8           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .local v2, assetFD:Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    const-string v4, "VCalComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory file length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 387
    :catch_1
    move-exception v13

    .line 388
    .end local v3           #pFD:Landroid/os/ParcelFileDescriptor;
    .end local v15           #fd:Ljava/io/FileDescriptor;
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #memoryFile:Landroid/os/MemoryFile;
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 394
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    goto/16 :goto_0

    .line 389
    .end local v2           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .restart local v8       #assetFD:Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v13

    move-object v2, v8

    .line 390
    .end local v8           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #assetFD:Landroid/content/res/AssetFileDescriptor;
    .local v13, e:Ljava/lang/SecurityException;
    :goto_3
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 391
    .end local v2           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .end local v13           #e:Ljava/lang/SecurityException;
    .restart local v8       #assetFD:Landroid/content/res/AssetFileDescriptor;
    :catch_3
    move-exception v13

    move-object v2, v8

    .line 392
    .end local v8           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #assetFD:Landroid/content/res/AssetFileDescriptor;
    .local v13, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 394
    .end local v2           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .end local v13           #e:Ljava/io/IOException;
    .restart local v8       #assetFD:Landroid/content/res/AssetFileDescriptor;
    :catchall_1
    move-exception v4

    move-object v2, v8

    .end local v8           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #assetFD:Landroid/content/res/AssetFileDescriptor;
    goto/16 :goto_0

    .line 391
    .restart local v3       #pFD:Landroid/os/ParcelFileDescriptor;
    .restart local v15       #fd:Ljava/io/FileDescriptor;
    .restart local v16       #filename:Ljava/lang/String;
    .restart local v17       #memoryFile:Landroid/os/MemoryFile;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 389
    :catch_5
    move-exception v13

    goto :goto_3

    .line 387
    .end local v2           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #pFD:Landroid/os/ParcelFileDescriptor;
    .end local v15           #fd:Ljava/io/FileDescriptor;
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #memoryFile:Landroid/os/MemoryFile;
    .restart local v8       #assetFD:Landroid/content/res/AssetFileDescriptor;
    :catch_6
    move-exception v13

    move-object v2, v8

    .end local v8           #assetFD:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #assetFD:Landroid/content/res/AssetFileDescriptor;
    goto :goto_2
.end method

.method public getMemoryFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMemoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVCalEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVCalHead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startAccountsCompose()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 200
    const-string v8, "VCalComposer"

    const-string v9, "startAccountsCompose "

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mMode:I

    if-eqz v8, :cond_1

    .line 202
    const-string v8, "VCalComposer"

    const-string v9, "startAccountsCompose() cannot be called only in SINGLE_EVENT_MODE"

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput-boolean v11, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    .line 207
    iget-boolean v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    if-nez v8, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalComposer;->initTools()Z

    move-result v8

    if-nez v8, :cond_2

    .line 212
    const-string v8, "VCalComposer"

    const-string v9, "initTools failed"

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v8, "VCalComposer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startAccountsCompose:: accountName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcAccountName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v8, "VCalComposer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startAccountsCompose:: CalendaraccountNUM: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput v11, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    .line 220
    iget v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 221
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/DbOperationHelper;->getVEventCount()I

    move-result v8

    iput v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 224
    :cond_3
    iget v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    if-lez v8, :cond_0

    .line 228
    const-wide/16 v0, -0x1

    .line 230
    .local v0, currentCalendarId:J
    :goto_1
    iget-boolean v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCancelRequest:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/DbOperationHelper;->hasNextVEvent()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 231
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    iget v9, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    invoke-virtual {v8, v9}, Lcom/mediatek/vcalendar/FileOperationHelper;->setVEventsCount(I)V

    .line 232
    const-string v8, "VCalComposer"

    const-string v9, "startAccountsCompose:: Compose while doing!"

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/DbOperationHelper;->getNextVEventInfo()Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;

    move-result-object v3

    .line 236
    .local v3, eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->getCalendarId()J

    move-result-wide v4

    .line 237
    .local v4, tempId:J
    cmp-long v8, v4, v0

    if-eqz v8, :cond_5

    .line 238
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_4

    .line 239
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/FileOperationHelper;->writeVCalendarTrail()V

    .line 241
    :cond_4
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/FileOperationHelper;->writeVCalendarHead()V

    .line 244
    :cond_5
    const/4 v6, 0x0

    .line 246
    .local v6, vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :try_start_0
    invoke-static {v3}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)Lcom/mediatek/vcalendar/component/VEvent;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 253
    invoke-virtual {v6}, Lcom/mediatek/vcalendar/component/Component;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, vEventStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v8, v7, v11}, Lcom/mediatek/vcalendar/FileOperationHelper;->addNextVEventString(Ljava/lang/String;Z)V

    .line 255
    iget v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    .line 256
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v9, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    iget v10, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    invoke-interface {v8, v9, v10}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    goto :goto_1

    .line 247
    .end local v7           #vEventStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v8, "VCalComposer"

    const-string v9, "startAccountCompose: BuileEvent failed"

    invoke-static {v8, v9}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v2           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    .end local v3           #eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    .end local v4           #tempId:J
    .end local v6           #vEvent:Lcom/mediatek/vcalendar/component/VEvent;
    :cond_6
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v9, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCurrentCnt:I

    iget v10, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    .line 260
    iget-object v8, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v8}, Lcom/mediatek/vcalendar/FileOperationHelper;->close()V

    goto/16 :goto_0
.end method

.method public startEventCompose(J)V
    .locals 8
    .parameter "eventId"

    .prologue
    const/4 v7, 0x1

    .line 276
    const-string v4, "VCalComposer"

    const-string v5, "startEventCompose "

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-wide p1, p0, Lcom/mediatek/vcalendar/VCalComposer;->mSrcEventId:J

    .line 278
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalComposer;->prepareSingleEventHandle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    .line 283
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mCalendarIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 284
    const-string v4, "VCalComposer"

    const-string v5, "startEventCompose : for single event compose, the calendar should only be a single one"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    iput v7, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    .line 289
    new-instance v4, Lcom/mediatek/vcalendar/FileOperationHelper;

    iget-object v5, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDstFile:Ljava/io/File;

    iget-object v6, p0, Lcom/mediatek/vcalendar/VCalComposer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/mediatek/vcalendar/FileOperationHelper;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    .line 290
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    iget v5, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    invoke-virtual {v4, v5}, Lcom/mediatek/vcalendar/FileOperationHelper;->setVEventsCount(I)V

    .line 291
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mDbOperationHelper:Lcom/mediatek/vcalendar/DbOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/DbOperationHelper;->getNextVEventInfo()Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;

    move-result-object v1

    .line 292
    .local v1, eventInfo:Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
    const/4 v2, 0x0

    .line 294
    .local v2, vEvent:Lcom/mediatek/vcalendar/component/Component;
    :try_start_0
    invoke-static {v1}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;)Lcom/mediatek/vcalendar/component/VEvent;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/mediatek/vcalendar/component/Component;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, vEventStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/FileOperationHelper;->writeVCalendarHead()V

    .line 297
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/mediatek/vcalendar/FileOperationHelper;->addNextVEventString(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    iget v5, p0, Lcom/mediatek/vcalendar/VCalComposer;->mTotalCnt:I

    invoke-interface {v4, v7, v5}, Lcom/mediatek/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    .line 304
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/FileOperationHelper;->writeVCalendarTrail()V

    .line 305
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalComposer;->mFileOperationHelper:Lcom/mediatek/vcalendar/FileOperationHelper;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/FileOperationHelper;->close()V

    goto :goto_0

    .line 298
    .end local v3           #vEventStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v4, "VCalComposer"

    const-string v5, "startAccountCompose: BuileEvent failed"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
