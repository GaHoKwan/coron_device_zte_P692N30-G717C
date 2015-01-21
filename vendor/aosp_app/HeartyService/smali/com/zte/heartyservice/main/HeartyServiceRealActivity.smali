.class public Lcom/zte/heartyservice/main/HeartyServiceRealActivity;
.super Landroid/app/Activity;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATABLE_SUM_CHANGE:Ljava/lang/String; = "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

.field private static final ANIM_ROTATE:I = 0x1

.field private static final ANIM_SUMMARY1:I = 0x0

.field private static final ANIM_SUMMARY2:I = 0x2

.field private static final CHECK_RESTART:I = 0x0

.field private static final SELF_MEM_2_THRESHOLD:J = 0x9000L

.field private static final SELF_MEM_THRESHOLD:J = 0x7800L

.field static final TAG:Ljava/lang/String; = "HeartyServiceRealActivity"

.field private static final TOTAL_MEM_THRESHOLD:J = 0x40000000L

.field private static instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

.field private static mRestartIdler:Landroid/os/MessageQueue$IdleHandler;

.field private static sCheckMem:J

.field private static sHasStart:Z

.field private static sRefNum:Ljava/lang/Integer;

.field private static sRestartHandler:Landroid/os/Handler;


# instance fields
.field private batteryIntent:Landroid/content/Intent;

.field private batteryLevel:I

.field private batterySummary:Landroid/widget/TextView;

.field private bgAnim:Landroid/view/animation/Animation;

.field private circleDrawableView:Landroid/widget/ImageView;

.field private dataBackup:Landroid/view/View;

.field private dialog1Shown:Z

.field private editShortCutBtn:Landroid/view/View;

.field private emptySummary:Landroid/view/View;

.field private emptyText:Landroid/widget/TextView;

.field private examAnimation:Landroid/view/animation/Animation;

.field private examCircle:Landroid/widget/ImageView;

.field private examScore:Landroid/widget/TextView;

.field private exitDialog:Landroid/app/Dialog;

.field private exitImageView:Landroid/widget/ImageView;

.field private feedback:Lcom/zte/feedback/FeedbackPayload;

.field private iCall:I

.field private iMms:I

.field private inflater:Landroid/view/LayoutInflater;

.field private interceptCall:Landroid/widget/TextView;

.field private interceptSms:Landroid/widget/TextView;

.field private interceptSummary:Landroid/view/View;

.field private intercepted_phone_msg:I

.field private intercepted_phone_num:I

.field private lastFrameOfNet:I

.field private lastFrameOfPower:I

.field private mArrow:Landroid/view/View;

.field private mArrowUp:Landroid/view/View;

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDot:Landroid/view/View;

.field private mExamView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIdler:Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;

.field private mIndicator:Landroid/view/View;

.field private mMainSummary:Landroid/view/View;

.field private mMainSummaryTmp:Landroid/view/View;

.field private mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

.field private mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mShortCutsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftwareUpdate:Landroid/content/BroadcastReceiver;

.field private mSummaryFrame:Landroid/view/View;

.field mUE:Lcom/zte/feedback/UEImprove;

.field private memorySummary:Landroid/widget/TextView;

.field private needExam:Landroid/widget/TextView;

.field private netAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private netManagerView:Landroid/view/View;

.field netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private noticeSummary:Landroid/view/View;

.field private pCall:I

.field private pMms:I

.field private palmConfigImg:Landroid/widget/ImageView;

.field private phoneFindBack:Landroid/view/View;

.field private powerAbnormal:I

.field private powerImageView:Landroid/widget/ImageView;

.field private powerManagerView:Landroid/view/View;

.field private powerNotice:Landroid/view/View;

.field private privacyCall:Landroid/widget/TextView;

.field private privacySms:Landroid/widget/TextView;

.field private privacySummary:Landroid/view/View;

.field private privacyZone:Landroid/view/View;

.field private rotate1:Landroid/view/animation/Animation;

.field private rotate2:Landroid/view/animation/Animation;

.field private scale:Landroid/view/animation/Animation;

.field private secManagerView:Landroid/view/View;

.field private securityNotice:Landroid/view/View;

.field private selectScrollView:Landroid/widget/LinearLayout;

.field private sofewareNotice:Landroid/view/View;

.field private softManagerView:Landroid/view/View;

.field private summaryAnimLock:Z

.field private summaryDivider:Landroid/view/View;

.field private timeCalculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

.field private tmpSummary:Z

.field private touchEventTriggered:Z

.field private touchY:F

.field private trafficSummary:Landroid/widget/TextView;

.field private uploadException:Lcom/zte/feedback/UploadException;

.field private versionUpdate:Landroid/view/View;

.field private virus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    .line 655
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$7;

    invoke-direct {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$7;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mRestartIdler:Landroid/os/MessageQueue$IdleHandler;

    .line 663
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$8;

    invoke-direct {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$8;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRestartHandler:Landroid/os/Handler;

    .line 677
    sput-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sHasStart:Z

    .line 700
    const-wide/16 v0, 0x77ff

    sput-wide v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sCheckMem:J

    .line 702
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mIdler:Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;

    .line 154
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->intercepted_phone_num:I

    .line 155
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->intercepted_phone_msg:I

    .line 157
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->lastFrameOfPower:I

    .line 160
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->lastFrameOfNet:I

    .line 165
    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 166
    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->uploadException:Lcom/zte/feedback/UploadException;

    .line 168
    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryIntent:Landroid/content/Intent;

    .line 170
    iput-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->dialog1Shown:Z

    .line 179
    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->exitImageView:Landroid/widget/ImageView;

    .line 181
    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->exitDialog:Landroid/app/Dialog;

    .line 195
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    .line 196
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    .line 198
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    .line 199
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    .line 201
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->virus:I

    .line 202
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerAbnormal:I

    .line 209
    iput-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    .line 210
    iput-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->tmpSummary:Z

    .line 238
    iput v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryLevel:I

    .line 243
    iput-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z

    .line 244
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F

    .line 254
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 288
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$2;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    .line 309
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$3;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$6;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$6;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F

    return v0
.end method

.method static synthetic access$1000()Landroid/os/MessageQueue$IdleHandler;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mRestartIdler:Landroid/os/MessageQueue$IdleHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchY:F

    return p1
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Lcom/zte/heartyservice/indicator/Notifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->touchEventTriggered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation1()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation2()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startRotateAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Lcom/zte/feedback/UploadException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->uploadException:Lcom/zte/feedback/UploadException;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->checkNewVersion()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->initScrollView()V

    return-void
.end method

.method private addHeartServiceShortCut()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 524
    const-string v1, "add_destop_shortcut_notice"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v1, "add_destop_shortcut_notice"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 530
    const v1, 0x7f0a03ad

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0a000f

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    const v1, 0x7f0a03ae

    new-instance v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$5;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    const v1, 0x7f0a03af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method private addIdleAnim()V
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mIdler:Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 333
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mIdler:Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 334
    return-void
.end method

.method public static addRef()V
    .locals 2

    .prologue
    .line 705
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    monitor-enter v1

    .line 706
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 707
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    .line 711
    :goto_0
    monitor-exit v1

    .line 712
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCTUpdate(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 508
    if-eqz p1, :cond_0

    const-string v0, "com.zte.heartyservice.ct_update_notice"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    invoke-direct {v0, p0, v1, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 513
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 516
    :cond_0
    return-void
.end method

.method private checkNewVersion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 816
    iget-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->dialog1Shown:Z

    if-eqz v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->dialog1Shown:Z

    .line 820
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_update_check"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    if-nez v1, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 828
    .local v0, mode:I
    new-instance v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    invoke-direct {v1, p0, v0, v4}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 829
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 830
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_update_check"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 483
    .local v0, childFiles:[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 484
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 488
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 489
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->delete(Ljava/io/File;)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private eventInit()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 902
    const v0, 0x7f0e02d8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerManagerView:Landroid/view/View;

    .line 903
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerManagerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    const v0, 0x7f0e03a0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netManagerView:Landroid/view/View;

    .line 905
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netManagerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    const v0, 0x7f0e03a3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->softManagerView:Landroid/view/View;

    .line 908
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->softManagerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    const v0, 0x7f0e03a6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->secManagerView:Landroid/view/View;

    .line 910
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->secManagerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    const v0, 0x7f0e0191

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->palmConfigImg:Landroid/widget/ImageView;

    .line 912
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->palmConfigImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examCircle:Landroid/widget/ImageView;

    .line 915
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->circleDrawableView:Landroid/widget/ImageView;

    .line 917
    const v0, 0x7f0e039e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerImageView:Landroid/widget/ImageView;

    .line 919
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    .line 920
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->needExam:Landroid/widget/TextView;

    .line 922
    const v0, 0x7f0e039b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->editShortCutBtn:Landroid/view/View;

    .line 923
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->editShortCutBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    const v0, 0x7f0e039c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->selectScrollView:Landroid/widget/LinearLayout;

    .line 927
    const v0, 0x7f0e014d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mExamView:Landroid/view/View;

    .line 928
    const v0, 0x7f0e014e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mSummaryFrame:Landroid/view/View;

    .line 929
    const v0, 0x7f0e014f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummary:Landroid/view/View;

    .line 930
    const v0, 0x7f0e0154

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    .line 932
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batterySummary:Landroid/widget/TextView;

    .line 933
    const v0, 0x7f0e0152

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->trafficSummary:Landroid/widget/TextView;

    .line 934
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->trafficSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 936
    const v0, 0x7f0e0151

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 938
    :cond_0
    const v0, 0x7f0e0153

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->memorySummary:Landroid/widget/TextView;

    .line 940
    const v0, 0x7f0e0155

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->noticeSummary:Landroid/view/View;

    .line 941
    const v0, 0x7f0e015d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->emptySummary:Landroid/view/View;

    .line 942
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->interceptSummary:Landroid/view/View;

    .line 943
    const v0, 0x7f0e015a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->privacySummary:Landroid/view/View;

    .line 944
    const v0, 0x7f0e0159

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryDivider:Landroid/view/View;

    .line 946
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->interceptSms:Landroid/widget/TextView;

    .line 947
    const v0, 0x7f0e0157

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->interceptCall:Landroid/widget/TextView;

    .line 948
    const v0, 0x7f0e015c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->privacySms:Landroid/widget/TextView;

    .line 949
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->privacyCall:Landroid/widget/TextView;

    .line 950
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->emptyText:Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mSummaryFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 954
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mIndicator:Landroid/view/View;

    .line 955
    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mDot:Landroid/view/View;

    .line 957
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    .line 958
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    .line 960
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    const v0, 0x7f0e02b6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mBackgroundImage:Landroid/widget/ImageView;

    .line 964
    const v0, 0x7f0e039d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerNotice:Landroid/view/View;

    .line 965
    const v0, 0x7f0e03a7

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->securityNotice:Landroid/view/View;

    .line 966
    const v0, 0x7f0e03a4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sofewareNotice:Landroid/view/View;

    .line 967
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sofewareNotice:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 972
    return-void
.end method

.method private getConsumptionTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1701
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->timeCalculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    if-eqz v1, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->timeCalculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->loadPowerMode()V

    .line 1704
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->timeCalculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    iget v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryLevel:I

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getRemainingTime(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    .end local v0           #df:Ljava/text/DecimalFormat;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 6

    .prologue
    .line 619
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->selectScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 620
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShowShortCutItems()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mShortCutsList:Ljava/util/List;

    .line 621
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->resetCallback()V

    .line 622
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mShortCutsList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mShortCutsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, viewId:I
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mShortCutsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 625
    .local v1, shortCut:Lcom/zte/heartyservice/main/ShortCutItem;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #viewId:I
    .local v3, viewId:I
    invoke-virtual {p0, v2, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I

    move v2, v3

    .end local v3           #viewId:I
    .restart local v2       #viewId:I
    goto :goto_0

    .line 627
    .end local v1           #shortCut:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    if-lez v2, :cond_1

    .line 628
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->selectScrollView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #viewId:I
    :goto_1
    return-void

    .line 632
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->selectScrollView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private isExistCrashLog()Z
    .locals 3

    .prologue
    .line 498
    const-string v1, "HeartyService-crash.log"

    .line 499
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 500
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v2, 0x1

    .line 504
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isViewVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1568
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseRef()V
    .locals 2

    .prologue
    .line 715
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    monitor-enter v1

    .line 716
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 717
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    .line 721
    :goto_0
    monitor-exit v1

    .line 722
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    goto :goto_0

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static restartHeartyService()V
    .locals 16

    .prologue
    const-wide/16 v13, 0x7800

    const/4 v15, 0x0

    .line 725
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopRestartMonitor()V

    .line 726
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v9

    .line 727
    .local v9, totalMemory:J
    const-wide/32 v11, 0x40000000

    cmp-long v11, v9, v11

    if-gez v11, :cond_3

    .line 728
    sget-wide v11, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sCheckMem:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    .line 729
    const-wide/32 v11, 0x20000000

    cmp-long v11, v9, v11

    if-gez v11, :cond_4

    .line 730
    sput-wide v13, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sCheckMem:J

    .line 735
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 736
    .local v4, isShow:Z
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    .line 737
    .local v1, context:Landroid/content/Context;
    const-string v11, "activity"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 739
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 740
    .local v8, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, pkg:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 742
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 743
    .local v7, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v11, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 744
    const/4 v4, 0x1

    .line 755
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    :goto_1
    if-nez v4, :cond_6

    sget-object v11, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRefNum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gtz v11, :cond_6

    .line 756
    const/4 v6, 0x0

    .line 758
    .local v6, pss:[J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    aput v14, v12, v13

    invoke-interface {v11, v12}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 764
    :goto_2
    if-eqz v6, :cond_3

    array-length v11, v6

    if-lez v11, :cond_3

    aget-wide v11, v6, v15

    sget-wide v13, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sCheckMem:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 765
    const-string v11, "HeartyServiceRealActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "slef:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-wide v13, v6, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", kill self"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->closeAppLockDB()V

    .line 767
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v11, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 769
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 775
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #isShow:Z
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #pss:[J
    .end local v8           #tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    :goto_3
    return-void

    .line 732
    :cond_4
    const-wide/32 v11, 0x9000

    sput-wide v11, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sCheckMem:J

    goto/16 :goto_0

    .line 748
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #isShow:Z
    .restart local v5       #pkg:Ljava/lang/String;
    .restart local v7       #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v8       #tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    iget-object v11, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 749
    const/4 v4, 0x1

    .line 750
    goto :goto_1

    .line 760
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6       #pss:[J
    :catch_0
    move-exception v2

    .line 761
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 772
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #pss:[J
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startRestartMonitor()V

    goto :goto_3
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 1693
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    if-eqz v0, :cond_0

    .line 1694
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->finish()V

    .line 1696
    :cond_0
    return-void
.end method

.method private startAnim()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 778
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->setExamLevel()V

    .line 783
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startMainAnimation()V

    .line 784
    return-void
.end method

.method private startMainAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 978
    const/16 v1, 0xa

    const-string v2, "main_rotate"

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/AnimationUtils;->getGifAniamtion(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 979
    .local v0, rotate:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->circleDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 981
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 982
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 984
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1002
    return-void
.end method

.method private startRelativeActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 1379
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1381
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    .line 1409
    :goto_0
    return-void

    .line 1383
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1387
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1388
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    iget v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->intercepted_phone_num:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->intercepted_phone_msg:I

    if-nez v2, :cond_1

    .line 1401
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1391
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->intercepted_phone_num:I

    if-eqz v2, :cond_2

    .line 1393
    const-string v2, "target"

    const-string v3, "intercepted_phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1397
    :cond_2
    const-string v2, "target"

    const-string v3, "intercepted_msg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1406
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1407
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startRestartMonitor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 680
    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sHasStart:Z

    if-nez v2, :cond_1

    .line 690
    .local v0, totalMemory:J
    :cond_0
    :goto_0
    return-void

    .line 684
    .end local v0           #totalMemory:J
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v0

    .line 685
    .restart local v0       #totalMemory:J
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 686
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRestartHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRestartHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startRotateAnimation()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x7d0

    const/4 v1, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 1581
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getExamScore()I

    move-result v12

    .line 1582
    .local v12, score:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    const/16 v12, 0x64

    .line 1585
    :cond_0
    if-gez v12, :cond_2

    .line 1644
    :cond_1
    :goto_0
    return-void

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mDot:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    if-eqz v12, :cond_1

    .line 1595
    const/high16 v0, 0x4391

    int-to-float v5, v12

    mul-float/2addr v0, v5

    const/high16 v5, 0x42c8

    div-float v2, v0, v5

    .line 1597
    .local v2, toDgree:F
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    .line 1599
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1600
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1601
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1602
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mIndicator:Landroid/view/View;

    iget-object v5, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1603
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    new-instance v5, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$21;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$21;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1621
    new-instance v5, Landroid/view/animation/RotateAnimation;

    sub-float v7, v1, v2

    move v6, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    .line 1623
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1624
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1625
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1626
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mDot:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1627
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    new-instance v1, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$22;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$22;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startScaleAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 1573
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->scale:Landroid/view/animation/Animation;

    .line 1576
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->scale:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1577
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->scale:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1578
    return-void
.end method

.method private startSummaryAnimation1()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1005
    iget-boolean v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->tmpSummary:Z

    if-nez v4, :cond_0

    .line 1006
    iput-boolean v6, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    .line 1007
    iput-boolean v6, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->tmpSummary:Z

    .line 1009
    const v4, 0x7f040011

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1010
    .local v0, anim1:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$9;

    invoke-direct {v4, p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$9;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1025
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummary:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1027
    const v4, 0x7f04000f

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1028
    .local v1, anim2:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;

    invoke-direct {v4, p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$10;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1042
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1045
    const v4, 0x7f04000d

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1046
    .local v2, anim3:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;

    invoke-direct {v4, p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$11;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1061
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1063
    const v4, 0x7f04000e

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1064
    .local v3, anim4:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$12;

    invoke-direct {v4, p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$12;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1078
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1083
    .end local v0           #anim1:Landroid/view/animation/Animation;
    .end local v1           #anim2:Landroid/view/animation/Animation;
    .end local v2           #anim3:Landroid/view/animation/Animation;
    .end local v3           #anim4:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private startSummaryAnimation2()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1086
    iget-boolean v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->tmpSummary:Z

    if-eqz v4, :cond_0

    .line 1087
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->summaryAnimLock:Z

    .line 1088
    iput-boolean v5, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->tmpSummary:Z

    .line 1090
    const v4, 0x7f040012

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1091
    .local v0, anim1:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$13;

    invoke-direct {v4, p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$13;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1106
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummary:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    const v4, 0x7f040010

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1109
    .local v1, anim2:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$14;

    invoke-direct {v4, p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$14;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1124
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mMainSummaryTmp:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    const v4, 0x7f04000e

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1127
    .local v2, anim3:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$15;

    invoke-direct {v4, p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$15;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1141
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1142
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrow:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    const v4, 0x7f04000d

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1145
    .local v3, anim4:Landroid/view/animation/Animation;
    new-instance v4, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$16;

    invoke-direct {v4, p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$16;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1160
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mArrowUp:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    .end local v0           #anim1:Landroid/view/animation/Animation;
    .end local v1           #anim2:Landroid/view/animation/Animation;
    .end local v2           #anim3:Landroid/view/animation/Animation;
    .end local v3           #anim4:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private stopAnim()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 788
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate1:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->rotate2:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->scale:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->scale:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->bgAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->bgAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 803
    :cond_3
    return-void
.end method

.method private stopHeartyService()V
    .locals 4

    .prologue
    .line 1541
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->isVipModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a038d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    new-instance v3, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    new-instance v3, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$19;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$19;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1557
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1558
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1559
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1564
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->finish()V

    .line 1562
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static stopRestartMonitor()V
    .locals 2

    .prologue
    .line 693
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sRestartHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mRestartIdler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 695
    return-void
.end method

.method private updateBatterySummary()V
    .locals 6

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batterySummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batterySummary:Landroid/widget/TextView;

    const v1, 0x7f0a04d1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getConsumptionTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    :cond_0
    return-void
.end method

.method private updateMemorySummary()V
    .locals 11

    .prologue
    .line 1745
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v3

    .line 1746
    .local v3, total:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v0

    .line 1747
    .local v0, available:J
    const/4 v2, 0x0

    .line 1748
    .local v2, percent:I
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 1749
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v0

    div-long/2addr v5, v3

    long-to-int v2, v5

    .line 1751
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->memorySummary:Landroid/widget/TextView;

    const v6, 0x7f0a04d4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    return-void
.end method

.method private updateNoticeSummary()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1759
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    .line 1760
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    .line 1761
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    .line 1762
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    .line 1763
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->virus:I

    .line 1764
    iput v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerAbnormal:I

    .line 1766
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v10

    iput v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    .line 1767
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v10

    iput v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    .line 1769
    iget-object v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v10}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v10

    iput v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->virus:I

    .line 1771
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v2

    .line 1772
    .local v2, interceptList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    if-eqz v2, :cond_2

    .line 1773
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    .line 1774
    .local v5, result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    iget v10, v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-nez v10, :cond_1

    .line 1775
    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    goto :goto_0

    .line 1776
    :cond_1
    iget v10, v5, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-ne v10, v9, :cond_0

    .line 1777
    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    goto :goto_0

    .line 1782
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    :cond_2
    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    if-gtz v10, :cond_3

    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    if-lez v10, :cond_7

    :cond_3
    move v6, v9

    .line 1783
    .local v6, showIntercept:Z
    :goto_1
    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    if-gtz v10, :cond_4

    iget v10, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    if-lez v10, :cond_8

    :cond_4
    move v7, v9

    .line 1813
    .local v7, showPrivacy:Z
    :goto_2
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->noticeSummary:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07006a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, notesArray:[Ljava/lang/String;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1817
    .local v4, random:Ljava/util/Random;
    array-length v0, v3

    .line 1818
    .local v0, Index:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1819
    array-length v9, v3

    add-int/lit8 v0, v9, -0x3

    .line 1821
    :cond_5
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1823
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->interceptSms:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->interceptCall:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1825
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->privacySms:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->privacyCall:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iCall:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->iMms:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pCall:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->pMms:I

    if-gtz v9, :cond_6

    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->virus:I

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v9}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getAdCount()I

    move-result v9

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-virtual {v9}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getPermissionCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 1831
    :cond_6
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->securityNotice:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    :goto_3
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getNewAbnormalPkgNum()I

    move-result v9

    iput v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerAbnormal:I

    .line 1837
    iget v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerAbnormal:I

    if-lez v9, :cond_a

    .line 1838
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerNotice:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :goto_4
    return-void

    .end local v0           #Index:I
    .end local v3           #notesArray:[Ljava/lang/String;
    .end local v4           #random:Ljava/util/Random;
    .end local v6           #showIntercept:Z
    .end local v7           #showPrivacy:Z
    :cond_7
    move v6, v8

    .line 1782
    goto/16 :goto_1

    .restart local v6       #showIntercept:Z
    :cond_8
    move v7, v8

    .line 1783
    goto/16 :goto_2

    .line 1833
    .restart local v0       #Index:I
    .restart local v3       #notesArray:[Ljava/lang/String;
    .restart local v4       #random:Ljava/util/Random;
    .restart local v7       #showPrivacy:Z
    :cond_9
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->securityNotice:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1840
    :cond_a
    iget-object v8, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerNotice:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateSummary()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateBatterySummary()V

    .line 807
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateTrafficSummary()V

    .line 808
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateMemorySummary()V

    .line 809
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateNoticeSummary()V

    .line 810
    return-void
.end method

.method private updateTrafficSummary()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 1719
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/heartyservice/msim/SimManager;->getDataSim()I

    move-result v4

    .line 1720
    .local v4, subscription:I
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->trafficSummary:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 1721
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v6

    .line 1722
    .local v6, utils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v2

    .line 1723
    .local v2, monthUsedStats:D
    invoke-virtual {v6, v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v0

    .line 1726
    .local v0, monthThreshold:J
    if-nez v4, :cond_1

    .line 1727
    const v7, 0x7f0a05cb

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1734
    .local v5, txt:Ljava/lang/String;
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_3

    .line 1735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a04d2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-double v11, v0

    sub-double/2addr v11, v2

    invoke-virtual {v6, v11, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1740
    :goto_1
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->trafficSummary:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    .end local v0           #monthThreshold:J
    .end local v2           #monthUsedStats:D
    .end local v5           #txt:Ljava/lang/String;
    .end local v6           #utils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    :cond_0
    return-void

    .line 1728
    .restart local v0       #monthThreshold:J
    .restart local v2       #monthUsedStats:D
    .restart local v6       #utils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    :cond_1
    if-ne v4, v9, :cond_2

    .line 1729
    const v7, 0x7f0a05cc

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #txt:Ljava/lang/String;
    goto :goto_0

    .line 1731
    .end local v5           #txt:Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .restart local v5       #txt:Ljava/lang/String;
    goto :goto_0

    .line 1738
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a04d3

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method protected addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I
    .locals 13
    .parameter "viewId"
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1167
    invoke-static {p2}, Lcom/zte/heartyservice/indicator/NoticeProvider;->registerCallback(Lcom/zte/heartyservice/main/ShortCutItem;)V

    .line 1168
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03011b

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1170
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    invoke-virtual {v8, p1}, Landroid/view/View;->setId(I)V

    .line 1172
    const v9, 0x7f0e00b8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1173
    .local v2, imageView:Landroid/widget/ImageView;
    iget v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    if-nez v9, :cond_1

    .line 1175
    const v9, 0x7f02016f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1181
    :goto_0
    const v9, 0x7f0e03aa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1182
    .local v6, textView:Landroid/widget/TextView;
    iget-object v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1183
    iget-object v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    :goto_1
    new-instance v9, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;

    invoke-direct {v9, p0, p2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$17;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Lcom/zte/heartyservice/main/ShortCutItem;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    const v9, 0x7f0e03ab

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1246
    .local v4, noticeImage1:Landroid/view/View;
    const v9, 0x7f0e03ad

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1250
    .local v5, noticeImage2:Landroid/view/View;
    const v9, 0x7f0e03ac

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1251
    .local v0, countText1:Landroid/widget/TextView;
    const v9, 0x7f0e03ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1254
    .local v1, countText2:Landroid/widget/TextView;
    iget v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    if-nez v9, :cond_0

    .line 1256
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    .line 1257
    .local v3, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    const-string v9, "HeartyServiceRealActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " =============NetTrafficSettingDatas===== "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v9

    if-lez v9, :cond_0

    .line 1260
    const v9, 0x7f0e03af

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1261
    .local v7, updateCount:Landroid/widget/TextView;
    const v9, 0x7f02019b

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1262
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    .end local v3           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .end local v7           #updateCount:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2, v4, v5, v0, v1}, Lcom/zte/heartyservice/main/ShortCutItem;->bindView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1280
    invoke-virtual {p2}, Lcom/zte/heartyservice/main/ShortCutItem;->updateNotice()V

    .line 1366
    iget-object v9, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->selectScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1367
    return p1

    .line 1179
    .end local v0           #countText1:Landroid/widget/TextView;
    .end local v1           #countText2:Landroid/widget/TextView;
    .end local v4           #noticeImage1:Landroid/view/View;
    .end local v5           #noticeImage2:Landroid/view/View;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1
    iget v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1185
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_2
    iget v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    if-nez v9, :cond_3

    .line 1187
    const v9, 0x7f0a0610

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1190
    :cond_3
    iget v9, p2, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    .line 1689
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1690
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 1417
    .local v6, viewId:I
    sparse-switch v6, :sswitch_data_0

    .line 1537
    :goto_0
    return-void

    .line 1419
    :sswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "intent.action.startActivity.SOFTWARE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v4, sfIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1423
    .end local v4           #sfIntent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "intent.action.startActivity.SECURITY"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v3, secIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1428
    .end local v3           #secIntent:Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1429
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.zte.heartyservice.intent.action.startActivity.SETTING"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1432
    :catch_0
    move-exception v1

    .line 1433
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1442
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1443
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->powerNotice:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1444
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/zte/heartyservice/power/PowerManagerPhoneActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1446
    const-string v7, "select_tab"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    const-string v7, "powermanager"

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "statics_spinner_position"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1455
    :goto_1
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1456
    :catch_1
    move-exception v1

    .line 1457
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1451
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v7, "com.zte.heartyservice.intent.action.startActivity.SAVE_ELECTRICITY"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1464
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1465
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "com.zte.heartyservice.intent.action.startActivity.NET_SCANNER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1468
    :catch_2
    move-exception v1

    .line 1469
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1475
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1476
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0010

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f020017

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a03b1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0173

    new-instance v9, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$18;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$18;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0174

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1494
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 1498
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1499
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "com.zte.heartyservice.intent.action.startActivity.EXAMINATION"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    .line 1502
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->circleDrawableView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1503
    :catch_3
    move-exception v1

    .line 1504
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1509
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1510
    .local v5, shortCutIntent:Landroid/content/Intent;
    const-string v7, "intent.action.startActivity.SHORTCUT_EDIT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1522
    .end local v5           #shortCutIntent:Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->finish()V

    goto/16 :goto_0

    .line 1525
    :sswitch_8
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->exitDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_2

    .line 1526
    iget-object v7, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->exitDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 1528
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopHeartyService()V

    goto/16 :goto_0

    .line 1531
    :sswitch_9
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation1()V

    goto/16 :goto_0

    .line 1534
    :sswitch_a
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startSummaryAnimation2()V

    goto/16 :goto_0

    .line 1417
    :sswitch_data_0
    .sparse-switch
        0x7f0e015f -> :sswitch_9
        0x7f0e0160 -> :sswitch_a
        0x7f0e0162 -> :sswitch_5
        0x7f0e0191 -> :sswitch_2
        0x7f0e02d8 -> :sswitch_3
        0x7f0e039b -> :sswitch_6
        0x7f0e03a0 -> :sswitch_4
        0x7f0e03a3 -> :sswitch_0
        0x7f0e03a6 -> :sswitch_1
        0x7f0e03b1 -> :sswitch_7
        0x7f0e03b2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->cancelStopHeartyService()V

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 344
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sHasStart:Z

    .line 345
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopRestartMonitor()V

    .line 346
    iput-object p0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 348
    const v2, 0x7f03009b

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->setContentView(I)V

    .line 349
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->inflater:Landroid/view/LayoutInflater;

    .line 350
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->eventInit()V

    .line 351
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->instance:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    .line 358
    invoke-static {p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->timeCalculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    .line 361
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNoticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;

    .line 362
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 364
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->checkCTUpdate(Landroid/content/Intent;)V

    .line 366
    const-string v0, "qqplaza.intent.action.GET_UPDATABLE_SUM"

    .line 367
    .local v0, ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v1, updateintent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    const-string v2, "HeartyServiceRealActivity"

    const-string v3, "send ==============xxx=yy============"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->isExistCrashLog()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUEImprove()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Lcom/zte/feedback/UEImprove;

    invoke-direct {v2, p0}, Lcom/zte/feedback/UEImprove;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mUE:Lcom/zte/feedback/UEImprove;

    .line 376
    iget-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mUE:Lcom/zte/feedback/UEImprove;

    invoke-virtual {v2}, Lcom/zte/feedback/UEImprove;->showDialog()V

    .line 379
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 650
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopRestartMonitor()V

    .line 651
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startRestartMonitor()V

    .line 652
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 653
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->checkCTUpdate(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 638
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->resetCallback()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->netAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 640
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 642
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopAnim()V

    .line 643
    const-string v0, "HeartyServiceRealActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug main mBackgroundImage width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 576
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 578
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 579
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    .line 582
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 583
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 586
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    .local v1, batteryIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryIntent:Landroid/content/Intent;

    .line 590
    const-string v0, "qqplaza.intent.action.GET_UPDATABLE_SUM"

    .line 591
    .local v0, ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 592
    .local v3, updateintent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryIntent:Landroid/content/Intent;

    const-string v5, "level"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryLevel:I

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateSummary()V

    .line 602
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startAnim()V

    .line 603
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addIdleAnim()V

    .line 605
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->initScrollView()V

    .line 608
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addHeartServiceShortCut()V

    .line 611
    return-void
.end method

.method readCrashInfo(I)Ljava/lang/String;
    .locals 11
    .parameter "size"

    .prologue
    .line 384
    const-string v3, "HeartyService-crash.log"

    .line 385
    .local v3, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    .local v2, file:Ljava/io/File;
    const-string v8, "HeartyServiceRealActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " file ============="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v6, ""

    .line 393
    .local v6, res:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 396
    .local v4, fin:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 397
    .local v5, length:I
    const/4 v7, 0x0

    .line 398
    .local v7, uploadSize:I
    const/16 v8, 0x1000

    if-ne p1, v8, :cond_0

    if-ge v5, p1, :cond_0

    .line 400
    move v7, v5

    .line 405
    :goto_0
    new-array v0, v7, [B

    .line 407
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 409
    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #buffer:[B
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #length:I
    .end local v7           #uploadSize:I
    :goto_1
    const-string v8, "HeartyServiceRealActivity"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v6

    .line 403
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v7       #uploadSize:I
    :cond_0
    move v7, p1

    goto :goto_0

    .line 413
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #length:I
    .end local v7           #uploadSize:I
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setExamLevel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1653
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getExamScore()I

    move-result v0

    .line 1654
    .local v0, score:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1656
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->needExam:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1657
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    const-string v2, "ZTE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->startScaleAnimation()V

    .line 1668
    return-void

    .line 1658
    :cond_0
    if-ltz v0, :cond_1

    .line 1659
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1660
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->needExam:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1661
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1663
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->needExam:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1664
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method submitCrashInfo(Z)V
    .locals 3
    .parameter "notifyUser"

    .prologue
    .line 426
    const-string v0, "HeartyServiceRealActivity"

    const-string v1, "submitCrashInfo ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v0, Lcom/zte/feedback/FeedbackPayload;

    const-string v1, "638c5fc37ba15bb6636f6c6c65637469"

    invoke-static {p0}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 430
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    const-string v1, "xxx@xxx.xxx"

    invoke-virtual {v0, v1}, Lcom/zte/feedback/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->readCrashInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/feedback/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lcom/zte/feedback/UploadException;

    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->readCrashInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/feedback/UploadException;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->uploadException:Lcom/zte/feedback/UploadException;

    .line 436
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$4;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Z)V

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$4;->start()V

    .line 473
    return-void
.end method

.method protected updateBatteryIndicator(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 327
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->batteryLevel:I

    .line 328
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->updateBatterySummary()V

    .line 329
    return-void
.end method
