.class public Lcom/zte/retrieve/service/instruct/InstructionOperator;
.super Ljava/lang/Object;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/instruct/InstructionOperator$AccountManagerCallbackImpl;,
        Lcom/zte/retrieve/service/instruct/InstructionOperator$OperationResult;,
        Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;,
        Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    }
.end annotation


# static fields
.field private static final URI_SIM_ICC:Ljava/lang/String; = "content://sms/icc"

.field private static final URI_SIM_ICC2:Ljava/lang/String; = "content://sms/icc2"

.field private static final URI_STR_MMS:Ljava/lang/String; = "content://mms"

.field private static final URI_STR_SIM:Ljava/lang/String; = "content://sms/sim"

.field private static final URI_STR_SMS:Ljava/lang/String; = "content://sms"

.field private static callForwardNum:Ljava/lang/String;


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private isEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/zte/retrieve/controller/Controller;

.field private mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mView:Landroid/view/View;

.field private mWinManager:Landroid/view/WindowManager;

.field private privacyHandler:Landroid/os/Handler;

.field private rotationState:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->rotationState:I

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mQueue:Ljava/util/Queue;

    .line 72
    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    .line 73
    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;

    .line 186
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator$1;-><init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->privacyHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    .line 86
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->zteHelpServiceConnection:Lcom/zte/retrieve/service/instruct/InstructionOperator$ZTEHelpServiceConnection;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/service/instruct/InstructionOperator;Lcom/zte/heartyservice/main/IZTEHelpService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;

    return-void
.end method

.method static synthetic access$5(Lcom/zte/retrieve/service/instruct/InstructionOperator;)Lcom/zte/heartyservice/main/IZTEHelpService;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mIZTEHelpService:Lcom/zte/heartyservice/main/IZTEHelpService;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->callForwardNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->ringMax()V

    return-void
.end method

.method private delCallLog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    const-string v0, "InstrOperator_delete callLog Begin"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    const-string v0, "InstrOperator_delete callLog end"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private delContact()V
    .locals 5

    .prologue
    .line 469
    const-string v1, "InstrOperator_deleteContact Begin"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 472
    const-string v3, "caller_is_syncadapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 473
    const-string v3, "_id>0"

    const/4 v4, 0x0

    .line 471
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    const-string v1, "InstrOperator_deleteContact end"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 480
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private delEmail()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->getMailList()V

    .line 307
    const-string v0, "com.android.email"

    invoke-direct {p0, v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->deleteMailByName(Ljava/lang/String;)V

    .line 308
    const-string v0, "com.google"

    invoke-direct {p0, v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->deleteMailByName(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private delMMS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    const-string v0, "InstrOperator_delete MMS Begin"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 592
    const-string v0, "InstrOperator_delete MMS end"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private delMTKSimSms(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 10
    .parameter "cr"
    .parameter "index"

    .prologue
    .line 500
    const/4 v8, 0x0

    .line 501
    .local v8, pCur1:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 503
    .local v9, pCur2:Landroid/database/Cursor;
    const-string v0, "mtk try delete sim sms !"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 505
    :try_start_0
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 506
    const-string v0, "mtk delete sim1 sms!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 507
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mtk icc path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/icc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/icc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 521
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 528
    :goto_0
    const-string v0, "mtk delete sim2 sms!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 530
    :try_start_2
    const-string v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 531
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mtk icc2 path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/icc2/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/icc2/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 537
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 532
    if-nez v0, :cond_2

    .line 538
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_3
    const-string v0, "mtk delete sim2 sms end!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 547
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 553
    :goto_1
    return-void

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    const-string v0, "delete sim card1 failed!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 521
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 522
    :catch_1
    move-exception v7

    .line 523
    .local v7, e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const-string v0, "pCur1 exception"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #e1:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 521
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 526
    :goto_2
    throw v0

    .line 522
    :catch_2
    move-exception v7

    .line 523
    .restart local v7       #e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const-string v1, "pCur1 exception"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    .end local v7           #e1:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 523
    .restart local v7       #e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    const-string v0, "pCur1 exception"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .end local v7           #e1:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 542
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    const-string v0, "delete sim card2 failed!"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 547
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 548
    :catch_5
    move-exception v7

    .line 549
    .restart local v7       #e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    const-string v0, "pCur2 exception"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 545
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #e1:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    .line 547
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 552
    :goto_3
    throw v0

    .line 548
    :catch_6
    move-exception v7

    .line 549
    .restart local v7       #e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    const-string v1, "pCur2 exception"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 548
    .end local v7           #e1:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 549
    .restart local v7       #e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    const-string v0, "pCur2 exception"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private delPhoneSMS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    const-string v1, "InstrOperator_deletePhoneSMS Begin"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 496
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InstrOperator_deletePhoneSMS End,result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private delSMS()V
    .locals 1

    .prologue
    .line 483
    const-string v0, "InstrOperator_deleteSMS Begin"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delPhoneSMS()V

    .line 489
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delSimSMS()V

    .line 490
    const-string v0, "InstrOperator_deleteSMS end"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private delSimSMS()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 556
    const-string v3, "InstrOperator_deleteSimSMS Begin"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 557
    const-string v6, "index_on_icc"

    .line 558
    .local v6, INDEX:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InstrOperator_deleteSimSMS cr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->isModeDualcard()Z

    move-result v3

    if-nez v3, :cond_3

    .line 562
    const-string v3, "single card delete sim sms!"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 563
    const-string v3, "content://sms/sim"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 564
    .local v1, simUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 565
    const-string v2, "there is no sim card!"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 587
    .end local v1           #simUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #simUri:Landroid/net/Uri;
    :cond_1
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 568
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 569
    .local v7, pCur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://sms/sim/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "index_on_icc"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 570
    if-nez v3, :cond_2

    .line 574
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 579
    .end local v1           #simUri:Landroid/net/Uri;
    .end local v7           #pCur:Landroid/database/Cursor;
    :cond_3
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isModeDualcard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 580
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 581
    const-string v2, "mtk start delete sim sms!"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 582
    const-string v2, "index_on_icc"

    invoke-direct {p0, v0, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delMTKSimSms(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 586
    :cond_4
    const-string v2, "InstrOperator_deleteSimSMS end"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteMailByName(Ljava/lang/String;)V
    .locals 9
    .parameter "mailName"

    .prologue
    const/4 v8, 0x0

    .line 326
    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 327
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 328
    .local v2, accountsByType:[Landroid/accounts/Account;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 334
    return-void

    .line 328
    :cond_0
    aget-object v0, v2, v4

    .line 330
    .local v0, account:Landroid/accounts/Account;
    new-instance v6, Lcom/zte/retrieve/service/instruct/InstructionOperator$AccountManagerCallbackImpl;

    invoke-direct {v6, v8}, Lcom/zte/retrieve/service/instruct/InstructionOperator$AccountManagerCallbackImpl;-><init>(Lcom/zte/retrieve/service/instruct/InstructionOperator$AccountManagerCallbackImpl;)V

    invoke-virtual {v1, v0, v6, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    .line 331
    .local v3, removeAccount:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InstructionOperator delEmail() accounts.name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remove res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private disPersistentRing()V
    .locals 4

    .prologue
    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 388
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 389
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 390
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 391
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMailList()V
    .locals 7

    .prologue
    .line 317
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 318
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 319
    .local v2, accountsByType:[Landroid/accounts/Account;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 323
    return-void

    .line 319
    :cond_0
    aget-object v0, v2, v3

    .line 320
    .local v0, account:Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InstructionOperator getMailList() accounts.name = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accounts.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 321
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private holdRingMax()V
    .locals 6

    .prologue
    .line 446
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimer:Ljava/util/Timer;

    .line 447
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator$2;-><init>(Lcom/zte/retrieve/service/instruct/InstructionOperator;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimerTask:Ljava/util/TimerTask;

    .line 454
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 455
    return-void
.end method

.method private openGPRS()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method private openGPS()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method

.method private resumeRotation()V
    .locals 3

    .prologue
    .line 254
    iget v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->rotationState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->rotationState:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :cond_0
    return-void
.end method

.method private ringMax()V
    .locals 5

    .prologue
    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 403
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x3

    .line 404
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 405
    const/16 v4, 0x10

    .line 403
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 406
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCallForwardNum(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNum"

    .prologue
    .line 744
    sput-object p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->callForwardNum:Ljava/lang/String;

    .line 745
    return-void
.end method

.method private setPersistentRing()V
    .locals 5

    .prologue
    .line 413
    const-string v2, "InstrOperator_persistentRing :Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 416
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 417
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 422
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 423
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 425
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 426
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 427
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    const-string v2, "InstrOperator_persistentRing :End"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 432
    return-void

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleGPS()V
    .locals 4

    .prologue
    .line 113
    :try_start_0
    const-string v1, "toggleGPS start"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    .line 115
    const/4 v3, 0x1

    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v1, "open gps by hearty"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->openGPS()V

    goto :goto_0
.end method

.method private unholdRingMax()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimerTask:Ljava/util/TimerTask;

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 464
    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mTimer:Ljava/util/Timer;

    .line 466
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized alarm(Z)I
    .locals 3
    .parameter "on"

    .prologue
    .line 337
    monitor-enter p0

    const/4 v1, 0x0

    .line 339
    .local v1, resultcode:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 340
    if-eqz p1, :cond_0

    .line 341
    const-string v2, "InstrOperator_alarm:alarm Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->holdRingMax()V

    .line 343
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setPersistentRing()V

    .line 344
    const-string v2, "InstrOperator_alarm:alarm End "

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    monitor-exit p0

    return v1

    .line 346
    :cond_0
    :try_start_1
    const-string v2, "InstrOperator_alarm:Cancel alarm Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cancelAlarm()V

    .line 348
    const-string v2, "InstrOperator_alarm:Cancel alarm End "

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    const/4 v1, 0x1

    goto :goto_0

    .line 337
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized callForwarding(Ljava/lang/String;Z)V
    .locals 11
    .parameter "phoneNum"
    .parameter "on"

    .prologue
    .line 700
    monitor-enter p0

    const/4 v1, 0x0

    .line 701
    .local v1, cancelCFUri:Ljava/lang/String;
    const/4 v0, 0x0

    .line 704
    .local v0, CFUri:Ljava/lang/String;
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 705
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 706
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-static {p1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setCallForwardNum(Ljava/lang/String;)V

    .line 710
    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->values()[Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_0

    .line 718
    if-eqz p2, :cond_2

    .line 719
    const-string v6, "InstrOperator_callForwarding:callForwarding Begin"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 720
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 721
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 723
    iget-object v6, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 725
    iget-object v6, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/PhoneInfo;->registerCFListener()V

    .line 726
    const-string v6, "InstrOperator_callForwarding:callForwarding End "

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    monitor-exit p0

    return-void

    .line 710
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_1
    aget-object v4, v7, v6

    .line 711
    .local v4, task:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
    iget-object v9, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-virtual {v9}, Lcom/zte/retrieve/utils/PhoneInfo;->getNetworkOperatorCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->getOperCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 712
    invoke-virtual {v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->getCFUriString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {v4}, Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;->getCancelCFUriString()Ljava/lang/String;

    move-result-object v1

    .line 714
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "callForwardind uri string is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",cancel callForwarding uri is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 715
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "the operator code is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-virtual {v10}, Lcom/zte/retrieve/utils/PhoneInfo;->getNetworkOperatorCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 714
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 710
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 728
    .end local v4           #task:Lcom/zte/retrieve/service/instruct/InstructionOperator$OperatorName;
    :cond_2
    const-string v6, "InstrOperator_callForwarding:cancel callForwarding Begin"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 729
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 730
    .restart local v5       #uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 732
    iget-object v6, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 734
    iget-object v6, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/PhoneInfo;->registerCFListener()V

    .line 735
    const-string v6, "InstrOperator_callForwarding:cancel callForwarding End"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 737
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 738
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 700
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public cancelAlarm()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->unholdRingMax()V

    .line 360
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->disPersistentRing()V

    .line 361
    return-void
.end method

.method public closeRotation()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    return-void
.end method

.method public composeContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .parameter "name"
    .parameter "body"

    .prologue
    .line 678
    const-string v0, ""

    .line 679
    .local v0, str:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    return-object v0

    .line 679
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized erase()V
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    const-string v2, "InstrOperator_erase:erase Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delContact()V

    .line 286
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delSMS()V

    .line 287
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delMMS()V

    .line 288
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delCallLog()V

    .line 289
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->delEmail()V

    .line 290
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/retrieve/service/format/FormatterProxy;->getInstance(Landroid/content/Context;)Lcom/zte/retrieve/service/format/FormatterProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/service/format/FormatterProxy;->format()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.retrieve.ALL_FORMAT_COMPLETE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getContactNameFromPhoneBook(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNum"

    .prologue
    .line 641
    const/4 v6, 0x0

    .line 643
    .local v6, contactName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 646
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    .line 647
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    .line 649
    const-string v4, "display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 648
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 658
    :try_start_1
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 666
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v6

    .line 651
    :catch_0
    move-exception v7

    .line 652
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 658
    :try_start_3
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v7

    .line 660
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 656
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 658
    :try_start_4
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 664
    :cond_2
    :goto_1
    throw v2

    .line 659
    :catch_2
    move-exception v7

    .line 660
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 659
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v7

    .line 660
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized lock(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 218
    monitor-enter p0

    const/4 v1, 0x0

    .line 221
    .local v1, resultcode:I
    if-eqz p1, :cond_2

    .line 222
    :try_start_0
    const-string v2, "InstrOperator_lock:lock Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 224
    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    .line 223
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->rotationState:I

    .line 225
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 226
    const-string v2, "InstrOperator_lock:popLockView"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->popLockView()V

    .line 228
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->closeRotation()V

    .line 230
    :cond_0
    const-string v2, "InstrOperator_lock:lock End"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 233
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isAlarmStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    const-string v2, "InstrOperator_lock:cancel alarm first"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->setUnalarm()Z

    .line 236
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cancelAlarm()V

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    .line 239
    const-string v2, "InstrOperator_lock:unlock Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    .line 242
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->resumeRotation()V

    .line 243
    const-string v2, "InstrOperator_lock:unlock End"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    const/4 v1, 0x1

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized map()V
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mPhoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/PhoneInfo;->isDataConncected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->openDataConnect()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 102
    .local v0, alm:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->toggleGPS()V

    .line 105
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LQZ:after open gps:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/zte/retrieve/service/instruct/Location;

    invoke-direct {v1}, Lcom/zte/retrieve/service/instruct/Location;-><init>()V

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/Location;->locate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 98
    .end local v0           #alm:Landroid/location/LocationManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openDataConnect()V
    .locals 5

    .prologue
    .line 124
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 126
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 127
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->isEnabled:Z

    .line 147
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->isEnabled:Z

    .line 134
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 137
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    iget-boolean v3, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->isEnabled:Z

    if-eqz v3, :cond_1

    .line 138
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v3, "open gprs  by hearty"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->openGPRS()V

    goto :goto_0

    .line 140
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public popLockView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 265
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    .line 266
    new-instance v1, Lcom/zte/retrieve/service/RetrieveLockView;

    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/zte/retrieve/service/RetrieveLockView;-><init>(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionOperator;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mView:Landroid/view/View;

    .line 268
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 270
    .local v0, wmParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 271
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 272
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 273
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 274
    const/16 v1, 0x500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    const-string v1, "popLockView:add lock view start"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mWinManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionOperator;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-void
.end method

.method public declared-synchronized preListen(Z)I
    .locals 3
    .parameter "on"

    .prologue
    .line 364
    monitor-enter p0

    const/4 v1, 0x0

    .line 366
    .local v1, resultcode:I
    if-eqz p1, :cond_0

    .line 367
    :try_start_0
    const-string v2, "InstrOperator_alarm:preListen Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->holdRingMax()V

    .line 369
    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setPersistentRing()V

    .line 370
    const-string v2, "InstrOperator_alarm:preListen End "

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    monitor-exit p0

    return v1

    .line 372
    :cond_0
    :try_start_1
    const-string v2, "InstrOperator_alarm:Cancel preListen Begin"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cancelAlarm()V

    .line 374
    const-string v2, "InstrOperator_alarm:Cancel preListen End "

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    const/4 v1, 0x1

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resetPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 824
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/retrieve/controller/Controller;->setPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setSmsForwarding(Ljava/lang/String;Z)I
    .locals 4
    .parameter "phoneNum"
    .parameter "on"

    .prologue
    .line 602
    monitor-enter p0

    const/4 v2, 0x0

    .line 603
    .local v2, resultcode:I
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    .line 605
    .local v1, mController:Lcom/zte/retrieve/controller/Controller;
    if-eqz p2, :cond_1

    .line 606
    if-nez p1, :cond_0

    .line 607
    const-string v3, "resultcode=2,can not get phone number"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    const/4 v3, 0x2

    .line 627
    :goto_0
    monitor-exit p0

    return v3

    .line 609
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 610
    const-string v3, "resultcode=3,and is not a phone number"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    const/4 v3, 0x3

    goto :goto_0

    .line 615
    :cond_1
    if-eqz p2, :cond_2

    .line 616
    :try_start_2
    const-string v3, "set smsForwarding"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->setSMSForwardingStatus()Z

    .line 618
    invoke-virtual {v1, p1}, Lcom/zte/retrieve/controller/Controller;->setSMSForwardindgNum(Ljava/lang/String;)Z

    :goto_1
    move v3, v2

    .line 627
    goto :goto_0

    .line 620
    :cond_2
    const-string v3, "cancel smsForwarding "

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->setUnSMSForwardingStatus()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    const/4 v2, 0x1

    goto :goto_1

    .line 602
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mController:Lcom/zte/retrieve/controller/Controller;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
