.class public Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;,
        Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;,
        Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;,
        Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;,
        Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final BUNDLE_KEY_ACTIVITY_TITLE:Ljava/lang/String; = "AccountSettingsOutOfOfficeFragment.title"

.field private static final BUNDLE_KEY_NEED_RESUME:Ljava/lang/String; = "ResumeSave"

.field private static final BUNDLE_KEY_SAVE:Ljava/lang/String; = "save"

.field public static final CANCEL_ALERT_TAG:Ljava/lang/String; = "CancelAlert"

.field private static final OOF_KEY_FROM:Ljava/lang/String; = "from"

.field private static final OOF_KEY_TO:Ljava/lang/String; = "to"

.field private static final OOF_PARAMS:Ljava/lang/String; = "Oof_params"

.field private static final OOF_REPLY:Ljava/lang/String; = "oof_reply"

.field private static final OOF_TO_EXTERNAL:Ljava/lang/String; = "oof_external"

.field private static final PICK_FROM_DATE:I = 0x0

.field private static final PICK_FROM_TIME:I = 0x2

.field private static final PICK_TO_DATE:I = 0x1

.field private static final PICK_TO_TIME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountSettingsOutOfOfficeFragment"

.field private static final TO_DAY:Ljava/lang/String; = "to_day"

.field private static final TO_DAY_TIME:Ljava/lang/String; = "to_daytime"

.field private static final TO_HOUR:Ljava/lang/String; = "to_hour"

.field private static final TO_MINUTE:Ljava/lang/String; = "to_minute"

.field private static final TO_MONTH:Ljava/lang/String; = "to_month"

.field private static final TO_YEAR:Ljava/lang/String; = "to_year"

.field static sSavebutton:Landroid/view/View;


# instance fields
.field private callBack1:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private callBack2:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private callBack3:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private callBack4:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAutoReply:Landroid/widget/TextView;

.field private mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentDay:I

.field private mCurrentDayTime:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentMonth:I

.field private mCurrentWeekday:I

.field private mCurrentYear:I

.field private mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

.field private mExternalView:Landroid/view/View;

.field private mFrom:Landroid/widget/TextView;

.field private mFromDateButton:Landroid/widget/Button;

.field private mFromDay:I

.field private mFromDayTime:I

.field private mFromHour:I

.field private mFromMinute:I

.field private mFromMonth:I

.field private mFromTimeButton:Landroid/widget/Button;

.field private mFromWeekday:I

.field private mFromYear:I

.field private mNeedToResume:Z

.field private mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

.field private mOofParams:Lcom/android/emailcommon/service/OofParams;

.field private mOutOffice:Landroid/widget/CheckBox;

.field private mPaused:Z

.field private mReplySumm:Landroid/widget/TextView;

.field private mReplyView:Landroid/view/View;

.field private mSaveButton:Landroid/widget/Button;

.field private mSeverCheck:Landroid/widget/CheckBox;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSumm:Landroid/widget/TextView;

.field private mTitleView:Landroid/view/View;

.field private mTo:Landroid/widget/TextView;

.field private mToDateButton:Landroid/widget/Button;

.field private mToDay:I

.field private mToDayTime:I

.field private mToHour:I

.field private mToMinute:I

.field private mToMonth:I

.field private mToServer:Landroid/widget/TextView;

.field private mToTimeButton:Landroid/widget/Button;

.field private mToWeekday:I

.field private mToYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 824
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack1:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 879
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack2:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 958
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack3:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 1009
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack4:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    return p1
.end method

.method static synthetic access$1120(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    return p1
.end method

.method static synthetic access$1720(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mPaused:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->reportProgress(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    return p1
.end method

.method private getDayNums(III)Ljava/lang/Long;
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 1076
    const-wide/16 v0, 0x0

    add-int/lit16 v2, p1, -0x76b

    mul-int/lit16 v2, v2, 0x174

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p2, 0x1f

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    .locals 4
    .parameter "days"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 1080
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xa8c0

    mul-long/2addr v0, v2

    mul-int/lit8 v2, p2, 0x3c

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getSumMinute(IIIIII)J
    .locals 5
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "dayTime"

    .prologue
    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 450
    .local v1, sumOfDay:J
    const/16 v3, 0xc

    if-eq p4, v3, :cond_1

    .line 451
    if-nez p6, :cond_0

    move v0, p4

    .line 455
    .local v0, hourOf24:I
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3, v0, p5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    return-wide v3

    .line 451
    .end local v0           #hourOf24:I
    :cond_0
    add-int/lit8 v0, p4, 0xc

    goto :goto_0

    .line 453
    :cond_1
    move v0, p4

    .restart local v0       #hourOf24:I
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Long;Landroid/os/Parcelable;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
    .locals 5
    .parameter "accountID"
    .parameter "oofParams"

    .prologue
    .line 155
    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;-><init>()V

    .line 156
    .local v1, f:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "account_id"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    const-string v2, "Oof_params"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    return-object v1
.end method

.method private onCheckingDialogCancel()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    .line 260
    return-void
.end method

.method private reportProgress(I)V
    .locals 4
    .parameter "code"

    .prologue
    const v3, 0x7f080012

    .line 460
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    .line 461
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 464
    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    .line 465
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 466
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/UiUtilities;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    const v2, 0x7f080014

    invoke-static {v3, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->newInstance(II)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    move-result-object v0

    .line 475
    .local v0, ad:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AlertDialogFragment"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 486
    .end local v0           #ad:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    :goto_1
    return-void

    .line 471
    :cond_1
    const v2, 0x7f080013

    invoke-static {v3, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->newInstance(II)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    move-result-object v0

    .restart local v0       #ad:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    goto :goto_0

    .line 478
    .end local v0           #ad:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    :cond_2
    const v2, 0x7f08005c

    const v3, 0x7f08005d

    invoke-static {v2, v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->newInstance(II)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    move-result-object v1

    .line 481
    .local v1, adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AlertDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    .end local v1           #adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 485
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    invoke-interface {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;->onSettingFinished()V

    goto :goto_1
.end method


# virtual methods
.method public addChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleSumm:Landroid/widget/TextView;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1117
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1118
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1119
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1120
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$TextChangeWatcher;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1121
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$14;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$14;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1127
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$15;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$15;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1133
    return-void
.end method

.method public disableOutOfficeOption()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1100
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1101
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAutoReply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplySumm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1104
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToServer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1105
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1106
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1107
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1108
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1110
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1111
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1112
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleSumm:Landroid/widget/TextView;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1113
    return-void
.end method

.method public enableOutOfficeOption()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1084
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1085
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAutoReply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1087
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplySumm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1088
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToServer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1089
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1090
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1091
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1094
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1095
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1096
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleSumm:Landroid/widget/TextView;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1097
    return-void
.end method

.method public getCurrentTime()V
    .locals 2

    .prologue
    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 662
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    .line 663
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    .line 664
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    .line 665
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentWeekday:I

    .line 666
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    .line 667
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I

    .line 668
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    .line 669
    return-void
.end method

.method public init()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentWeekday:I

    invoke-static {v6, v9}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    invoke-static {v6, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, date:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    if-nez v5, :cond_0

    const/16 v5, 0xc

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, time:Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    .line 757
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    .line 758
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentWeekday:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I

    .line 759
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    .line 760
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    .line 761
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    .line 762
    iput v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    .line 763
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 764
    .local v0, c:Ljava/util/Calendar;
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    iget v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 765
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 766
    .local v3, timeMillis:J
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    .line 767
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 768
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    .line 769
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    .line 770
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    .line 771
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    .line 772
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    .line 773
    iput v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    .line 774
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    iput v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    .line 776
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    invoke-static {v6, v9}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    invoke-static {v6, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->disableOutOfficeOption()V

    .line 788
    :goto_1
    return-void

    .line 755
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #time:Ljava/lang/String;
    .end local v3           #timeMillis:J
    :cond_0
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    goto/16 :goto_0

    .line 787
    .restart local v0       #c:Ljava/util/Calendar;
    .restart local v2       #time:Ljava/lang/String;
    .restart local v3       #timeMillis:J
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->enableOutOfficeOption()V

    goto :goto_1
.end method

.method public initTimeDisplay(ZLandroid/os/Bundle;)V
    .locals 4
    .parameter "isOpen"
    .parameter "bundle"

    .prologue
    .line 693
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 694
    :cond_0
    if-eqz p1, :cond_1

    .line 695
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->enableOutOfficeOption()V

    .line 699
    :goto_0
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v3}, Lcom/android/emailcommon/service/OofParams;->getStartTimeInMillis()J

    move-result-wide v1

    .line 700
    .local v1, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 701
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 702
    const-string v3, "from"

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->setTimeByCalendar(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v3}, Lcom/android/emailcommon/service/OofParams;->getEndTimeInMillis()J

    move-result-wide v1

    .line 704
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 705
    const-string v3, "to"

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->setTimeByCalendar(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 709
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #time:J
    :goto_1
    return-void

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->disableOutOfficeOption()V

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->init()V

    goto :goto_1
.end method

.method public loadSettings(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "bundle"

    .prologue
    .line 288
    const v0, 0x7f0f0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitle:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0f000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleSumm:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleView:Landroid/view/View;

    .line 291
    const v0, 0x7f0f0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplyView:Landroid/view/View;

    .line 292
    const v0, 0x7f0f0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mExternalView:Landroid/view/View;

    .line 293
    const v0, 0x7f0f000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFrom:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTo:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAutoReply:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0f0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplySumm:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0f0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToServer:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0f000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    .line 299
    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    .line 300
    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    .line 301
    const v0, 0x7f0f0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    .line 302
    const v0, 0x7f0f0001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCancelButton:Landroid/widget/Button;

    .line 303
    const v0, 0x7f0f001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    sput-object v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->sSavebutton:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mTitleView:Landroid/view/View;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$1;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mExternalView:Landroid/view/View;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$2;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$2;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$3;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$3;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$4;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$4;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$5;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$5;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$6;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$6;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mReplyView:Landroid/view/View;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f0f000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    .line 373
    const v0, 0x7f0f0019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    .line 374
    invoke-virtual {p0, p2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->setDisplay(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->addChangeListener()V

    .line 377
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;

    invoke-direct {v1, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AccountSettingsOutOfOfficeFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    const-string v0, "ResumeSave"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mNeedToResume:Z

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 223
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 171
    const-string v3, "AccountSettingsOutOfOfficeFragment onCreate"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 173
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 176
    .local v2, args:Landroid/os/Bundle;
    const-string v3, "account_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 177
    .local v0, accountId:J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v3, "Oof_params"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/OofParams;

    iput-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    .line 180
    const-string v3, "to_year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    .line 181
    const-string v3, "to_month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    .line 182
    const-string v3, "to_day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    .line 183
    const-string v3, "to_hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    .line 184
    const-string v3, "to_minute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    .line 185
    const-string v3, "to_daytime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    .line 189
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    iput-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    .line 190
    return-void

    .line 187
    :cond_0
    const-string v3, "Oof_params"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/OofParams;

    iput-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 196
    const-string v2, "AccountSettingsOutOfOfficeFragment onCreateView"

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 198
    const v0, 0x7f040005

    .line 199
    .local v0, layoutId:I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p0, v1, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->loadSettings(Landroid/view/View;Landroid/os/Bundle;)V

    .line 202
    if-eqz p3, :cond_0

    .line 203
    const v2, 0x7f0f001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    .line 204
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    const-string v3, "save"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 254
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 228
    iput-boolean v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mPaused:Z

    .line 229
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    if-eqz v0, :cond_1

    .line 233
    iput-boolean v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mNeedToResume:Z

    .line 234
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->onCheckingDialogCancel()V

    .line 236
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 241
    iput-boolean v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mPaused:Z

    .line 242
    iget-boolean v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mNeedToResume:Z

    if-eqz v0, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mNeedToResume:Z

    .line 244
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    .line 245
    invoke-static {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;->newInstance(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    .line 247
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WaitingFetchOofDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    const/16 v7, 0xc

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 264
    const-string v3, "AccountSettingsOutOfOfficeFragment.title"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "save"

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    const-string v1, "ResumeSave"

    iget-boolean v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mNeedToResume:Z

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/service/OofParams;->setOofState(I)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/emailcommon/service/OofParams;->setIsExternal(I)V

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 270
    .local v0, calendar:Ljava/util/Calendar;
    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    :goto_2
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/service/OofParams;->setStartTimeInMillis(J)V

    .line 274
    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    :goto_3
    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/service/OofParams;->setEndTimeInMillis(J)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->onStarted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/service/OofParams;->setReplyMessage(Ljava/lang/String;)V

    .line 278
    const-string v1, "Oof_params"

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    const-string v1, "to_year"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v1, "to_month"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string v1, "to_day"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v1, "to_hour"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v1, "to_minute"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v1, "to_daytime"

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    return-void

    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_0
    move v1, v6

    .line 267
    goto/16 :goto_0

    :cond_1
    move v2, v6

    .line 268
    goto :goto_1

    .line 270
    .restart local v0       #calendar:Ljava/util/Calendar;
    :cond_2
    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    if-ne v4, v7, :cond_3

    move v4, v6

    :goto_4
    add-int/lit8 v4, v4, 0xc

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    goto :goto_4

    .line 274
    :cond_4
    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    if-ne v4, v7, :cond_5

    :goto_5
    add-int/lit8 v4, v6, 0xc

    goto :goto_3

    :cond_5
    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    goto :goto_5
.end method

.method public onStarted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oof_reply"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, pre:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oof_reply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setDisplay(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 672
    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v7}, Lcom/android/emailcommon/service/OofParams;->getOofState()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 673
    .local v2, isOpen:Z
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->initTimeDisplay(ZLandroid/os/Bundle;)V

    .line 674
    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 675
    if-eqz v2, :cond_3

    .line 676
    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v8}, Lcom/android/emailcommon/service/OofParams;->getIsExternal()I

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 677
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v5}, Lcom/android/emailcommon/service/OofParams;->getReplyMessage()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 679
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "oof_reply"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 681
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oof_reply"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 690
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .end local v2           #isOpen:Z
    :cond_1
    move v2, v6

    .line 672
    goto :goto_0

    .restart local v2       #isOpen:Z
    :cond_2
    move v5, v6

    .line 676
    goto :goto_1

    .line 685
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "oof_reply"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 687
    .local v3, pre:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oof_external"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 688
    .local v1, isExternal:Z
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public setTimeByCalendar(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 8
    .parameter "calendar"
    .parameter "tag"

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v2, 0xc

    const/16 v6, 0xa

    .line 714
    const-string v3, "from"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 715
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    .line 716
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    .line 717
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    .line 718
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I

    .line 719
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    .line 720
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    .line 721
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, date:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    if-ge v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    invoke-static {v3}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, time:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :goto_2
    return-void

    .line 725
    .end local v1           #time:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 732
    .end local v0           #date:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    .line 733
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    .line 734
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    .line 735
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    .line 736
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    .line 737
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    .line 738
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    .restart local v0       #date:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    if-ge v2, v6, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    invoke-static {v3}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .restart local v1       #time:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 742
    .end local v1           #time:Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4
.end method

.method protected showDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 808
    packed-switch p1, :pswitch_data_0

    .line 820
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 810
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack1:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I

    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 812
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack2:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 814
    :pswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack3:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    :goto_1
    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I

    add-int/lit8 v3, v3, 0xc

    goto :goto_1

    .line 817
    :pswitch_3
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->callBack4:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    :goto_2
    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    add-int/lit8 v3, v3, 0xc

    goto :goto_2

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected timeCheck()Z
    .locals 10

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 423
    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I

    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getSumMinute(IIIIII)J

    move-result-wide v8

    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I

    iget v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I

    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I

    iget v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I

    iget v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getSumMinute(IIIIII)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 427
    const v0, 0x7f08005c

    const v1, 0x7f08005d

    invoke-static {v0, v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->newInstance(II)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    move-result-object v7

    .line 430
    .local v7, adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AlertDialogFragment"

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x1

    .line 434
    .end local v7           #adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
