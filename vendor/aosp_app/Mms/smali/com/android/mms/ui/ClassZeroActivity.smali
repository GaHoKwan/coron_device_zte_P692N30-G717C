.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final BUFFER:Ljava/lang/String; = "         "

#the value of this static final field might be set in the static constructor
.field private static final BUFFER_OFFSET:I = 0x0

.field private static final DEFAULT_TIMER:J = 0x493e0L

.field private static final ON_AUTO_SAVE:I = 0x1

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final SAVE_WITHOUT_DESTROY_ACTIVITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "display_00"

.field private static final TIMER_FIRE:Ljava/lang/String; = "timer_fire"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

.field private mHandler:Landroid/os/Handler;

.field private mMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageContent;",
            ">;"
        }
    .end annotation
.end field

.field private mMessages:[Landroid/telephony/SmsMessage;

.field private mMsgLen:I

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-string v0, "         "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/ClassZeroActivity;->BUFFER_OFFSET:I

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    .line 95
    iput v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    .line 99
    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 103
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 108
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 284
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassZeroActivity;)Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ClassZeroActivity;[Landroid/telephony/SmsMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage([Landroid/telephony/SmsMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->cancelMessageNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelMessageNotification()V
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x15be

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 399
    return-void
.end method

.method private displayZeroMessage(Lcom/android/mms/ui/MessageContent;)V
    .locals 14
    .parameter "messageContent"

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 407
    const/4 v8, 0x0

    .line 409
    .local v8, simId:I
    if-eqz p1, :cond_0

    .line 410
    iget-object v10, p1, Lcom/android/mms/ui/MessageContent;->mMessages:[Landroid/telephony/SmsMessage;

    iput-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    .line 411
    iget v8, p1, Lcom/android/mms/ui/MessageContent;->mSimId:I

    .line 415
    :cond_0
    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    array-length v10, v10

    iput v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    .line 416
    const/4 v5, 0x0

    .line 417
    .local v5, messageChars:Ljava/lang/CharSequence;
    iget v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    if-ne v11, v10, :cond_4

    .line 418
    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    aget-object v10, v10, v13

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 431
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 432
    .local v4, message:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 433
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 446
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040010

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ClassZeroView;

    .line 448
    .local v1, classZeroView:Lcom/android/mms/ui/ClassZeroView;
    invoke-virtual {v1, v4, v8}, Lcom/android/mms/ui/ClassZeroView;->bind(Ljava/lang/String;I)V

    .line 451
    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    invoke-interface {v10}, Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;->isEnableClassZeroFeature()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 452
    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 455
    :cond_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x3

    invoke-direct {v10, p0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v11, 0x7f0b022e

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0b0325

    iget-object v12, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x104

    iget-object v12, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 461
    .local v6, now:J
    const-wide/32 v10, 0x493e0

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 462
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->setTimeToSave()V

    .line 463
    return-void

    .line 419
    .end local v1           #classZeroView:Lcom/android/mms/ui/ClassZeroView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #now:J
    :cond_4
    iget v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    if-le v10, v11, :cond_1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 423
    .local v9, sms:Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    if-ge v2, v10, :cond_5

    .line 424
    iget-object v10, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    aget-object v9, v10, v2

    .line 425
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v4, "read"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v4, "seen"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v1, "sim_id"

    invoke-static {p1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMessageEx;->getMessageSimId(Landroid/telephony/SmsMessage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 318
    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v0

    :cond_1
    move v1, v3

    .line 312
    goto :goto_0

    :cond_2
    move v1, v3

    .line 313
    goto :goto_1

    :cond_3
    move v2, v3

    .line 320
    goto :goto_2
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 485
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    .line 487
    const-string v1, "display_00"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mDisplayClassZeroPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/DisplayClassZeroMessageImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/mms/ext/DisplayClassZeroMessageImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    .line 490
    const-string v1, "display_00"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mDisplayClassZeroPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processNextMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Lcom/android/mms/ui/MessageContent;)V

    goto :goto_0
.end method

.method private queueMsgFromIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "msgIntent"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 130
    .local v0, message:[Landroid/telephony/SmsMessage;
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    new-instance v1, Lcom/android/mms/ui/MessageContent;

    invoke-direct {v1, p1}, Lcom/android/mms/ui/MessageContent;-><init>(Landroid/content/Intent;)V

    .line 137
    .local v1, messageContent:Lcom/android/mms/ui/MessageContent;
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private replaceMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 22
    .parameter "Msgs"

    .prologue
    .line 326
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 330
    .local v11, values:Landroid/content/ContentValues;
    const-string v14, ""

    .line 331
    .local v14, body:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v15, buf:Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 333
    aget-object v2, p1, v17

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 338
    const-string v2, "body"

    invoke-virtual {v11, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 342
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    .line 343
    .local v20, originatingAddress:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v21

    .line 344
    .local v21, protocolIdentifier:I
    const-string v6, "address = ? AND protocol = ?"

    .line 345
    .local v6, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 347
    .local v7, selectionArgs:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND sim_id = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v20, v7, v2

    const/4 v2, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMessageEx;->getMessageSimId(Landroid/telephony/SmsMessage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 354
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 358
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 360
    .local v18, messageId:J
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 363
    .local v10, messageUri:Landroid/net/Uri;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 370
    .end local v10           #messageUri:Landroid/net/Uri;
    .end local v18           #messageId:J
    :goto_1
    return-object v10

    .line 368
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 370
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1
.end method

.method private saveMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, messageUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 162
    const-wide/16 v1, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->cancelMessageNotification()V

    .line 169
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 173
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private saveMessage([Landroid/telephony/SmsMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, messageUri:Landroid/net/Uri;
    aget-object v1, p1, v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 184
    const-wide/16 v1, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->cancelMessageNotification()V

    .line 191
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 195
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setTimeToSave()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 467
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    :goto_0
    return-void

    .line 473
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private storeMessage([Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 6
    .parameter "Msgs"

    .prologue
    .line 375
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v4

    .line 378
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, ""

    .line 379
    .local v0, body:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v1, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMsgLen:I

    if-ge v2, v5, :cond_0

    .line 381
    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v5, "body"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 391
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v5, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "display_00"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 207
    invoke-direct {p0, p0}, Lcom/android/mms/ui/ClassZeroActivity;->initPlugin(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Lcom/android/mms/ui/MessageContent;)V

    .line 221
    :cond_3
    if-eqz p1, :cond_1

    .line 222
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "display_00"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 248
    const-string v1, "display_00"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessages:[Landroid/telephony/SmsMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 241
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 229
    const-string v0, "display_00"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "display_00"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 264
    return-void
.end method
