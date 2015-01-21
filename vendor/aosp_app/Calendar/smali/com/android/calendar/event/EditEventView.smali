.class public Lcom/android/calendar/event/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/mediatek/calendar/extension/IEditEventView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventView$DialogManager;,
        Lcom/android/calendar/event/EditEventView$TitleAdapter;,
        Lcom/android/calendar/event/EditEventView$CalendarsAdapter;,
        Lcom/android/calendar/event/EditEventView$DateClickListener;,
        Lcom/android/calendar/event/EditEventView$DateListener;,
        Lcom/android/calendar/event/EditEventView$TimeClickListener;,
        Lcom/android/calendar/event/EditEventView$TimeListener;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "local"

.field private static final DATE_TIME_TAG:Ljava/lang/String; = "EditEventView::date_time_debug_tag"

.field private static final DESCRIPTION_MAX_LENGTH:I = 0x2710

.field private static final EDIT_EVENT_TIME_DIALOG_FRAG:Ljava/lang/String; = "edit_event_time_dialog_frag"

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final GOOGLE_SECONDARY_CALENDAR:Ljava/lang/String; = "calendar.google.com"

.field private static final ID_END_DATE:I = 0x2

.field private static final ID_END_TIME:I = 0x4

.field static final ID_INVALID:I = 0x0

.field private static final ID_START_DATE:I = 0x1

.field private static final ID_START_TIME:I = 0x3

.field private static final LOCATION_MAX_LENGTH:I = 0x640

.field private static final MAX_MONTH_IN_MILLS:J = 0x9fa52400L

.field private static final MAX_TITLE_SUGGESTIONS:I = 0x4

.field private static final PC_SYNC:Ljava/lang/String; = "PC Sync"

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field private static final REPEATS_DAILY:I = 0x1

.field private static final REPEATS_MONTHLY:I = 0x3

.field private static final REPEATS_NEVER:I = 0x5

.field private static final REPEATS_WEEKLY:I = 0x2

.field private static final REPEATS_YEARLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EditEventView"

.field private static final TITLE_MAX_LENGTH:I = 0x640

.field private static final TITLE_WHERE:Ljava/lang/String; = "title LIKE ?"

.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field mAccessLevelSpinner:Landroid/widget/Spinner;

.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mAllDay:Z

.field mAllDayCheckBox:Landroid/widget/CheckBox;

.field mAttendeesGroup:Landroid/view/View;

.field mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mAvailabilityValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarSelectorWrapper:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field mDescriptionGroup:Landroid/view/View;

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

.field private mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field mEndDateButton:Landroid/widget/Button;

.field mEndDateHome:Landroid/widget/TextView;

.field mEndHomeGroup:Landroid/view/View;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeButton:Landroid/widget/Button;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

.field private mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

.field private mIsMultipane:Z

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationGroup:Landroid/view/View;

.field mLocationTextView:Landroid/widget/TextView;

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mOriginalSpinnerPadding:[I

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveAfterQueryComplete:Z

.field mScrollView:Landroid/widget/ScrollView;

.field mStartDateButton:Landroid/widget/Button;

.field mStartDateHome:Landroid/widget/TextView;

.field mStartHomeGroup:Landroid/view/View;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeButton:Landroid/widget/Button;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field mTimezoneLabel:Landroid/widget/TextView;

.field mTimezoneRow:Landroid/view/View;

.field mTimezoneTextView:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/AutoCompleteTextView;

.field private mToast:Landroid/widget/Toast;

.field private mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mWhenView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/event/EditEventView;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 241
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    .line 1931
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v1}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V
    .locals 8
    .parameter "activity"
    .parameter "view"
    .parameter "done"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 184
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    .line 185
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 227
    iput-boolean v3, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 232
    iput-boolean v3, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 233
    iput v3, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 235
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 243
    new-instance v1, Lcom/android/calendar/event/EditEventView$DialogManager;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/event/EditEventView$DialogManager;-><init>(Lcom/android/calendar/event/EditEventView;Lcom/android/calendar/event/EditEventView$1;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    .line 246
    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mToast:Landroid/widget/Toast;

    .line 1180
    invoke-static {p1, p0}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getEditEventViewExt(Landroid/app/Activity;Lcom/mediatek/calendar/extension/IEditEventView;)Lcom/mediatek/calendar/extension/IEditEventViewExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    .line 1183
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    .line 1184
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    .line 1185
    iput-object p3, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    .line 1188
    const v1, 0x7f100043

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 1189
    const v1, 0x7f100044

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 1192
    const v1, 0x7f10004a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 1193
    const v1, 0x7f100015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    .line 1194
    const v1, 0x7f10004f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 1195
    const v1, 0x7f10007b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 1196
    const v1, 0x7f10006c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    .line 1197
    const v1, 0x7f100057

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 1198
    const v1, 0x7f10005e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    .line 1199
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 1200
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    .line 1201
    const v1, 0x7f100058

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    .line 1202
    const v1, 0x7f10005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    .line 1203
    const v1, 0x7f100069

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 1204
    const v1, 0x7f100068

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    .line 1205
    const v1, 0x7f10005b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 1206
    const v1, 0x7f10005a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 1207
    const v1, 0x7f100062

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 1208
    const v1, 0x7f100061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 1209
    const v1, 0x7f100064

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 1210
    const v1, 0x7f10007d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 1211
    const v1, 0x7f100084

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 1212
    const v1, 0x7f100087

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    .line 1213
    const v1, 0x7f100049

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 1214
    const v1, 0x7f10006a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    .line 1215
    const v1, 0x7f10004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 1216
    const v1, 0x7f10007e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 1217
    const v1, 0x7f10006d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 1218
    const v1, 0x7f100073

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 1219
    const v1, 0x7f100076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    .line 1220
    const v1, 0x7f10004e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    .line 1221
    const v1, 0x7f100079

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    .line 1222
    const v1, 0x7f100059

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    .line 1223
    const v1, 0x7f100060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    .line 1224
    const v1, 0x7f100078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 1226
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1227
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/calendar/event/EditEventView$TitleAdapter;

    invoke-direct {v2, p1}, Lcom/android/calendar/event/EditEventView$TitleAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1228
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/calendar/event/EditEventView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$3;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1240
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1241
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1242
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1243
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1244
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, v1, v3

    .line 1245
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aput v2, v1, v5

    .line 1246
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    aput v2, v1, v6

    .line 1247
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    aput v2, v1, v7

    .line 1248
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, v1, v3

    .line 1249
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aput v2, v1, v5

    .line 1250
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    aput v2, v1, v6

    .line 1251
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    aput v2, v1, v7

    .line 1252
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100050

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100066

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100063

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100082

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100085

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f100055

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v2, 0x7f10005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    const v1, 0x7f10006f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 1270
    const v1, 0x7f100080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 1272
    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1273
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    .line 1274
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 1275
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 1276
    new-instance v1, Lcom/android/common/Rfc822Validator;

    invoke-direct {v1, v4}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 1277
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EditEventView;->initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;

    .line 1280
    invoke-static {}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getEditTextExt()Lcom/mediatek/calendar/edittext/IEditTextExt;

    move-result-object v0

    .line 1281
    .local v0, extension:Lcom/mediatek/calendar/edittext/IEditTextExt;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x640

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/calendar/edittext/IEditTextExt;->setLengthInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)V

    .line 1282
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x640

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/calendar/edittext/IEditTextExt;->setLengthInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)V

    .line 1283
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/calendar/edittext/IEditTextExt;->setLengthInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)V

    .line 1287
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 1288
    return-void
.end method

.method private ToastMsg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mToast:Landroid/widget/Toast;

    .line 2319
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2320
    return-void

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/EditEventView;)Lcom/mediatek/calendar/extension/IEditEventViewExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/calendar/event/EditEventView;->EVENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventView;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V

    return-void
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 10
    .parameter "b"
    .parameter "v"

    .prologue
    .line 1612
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1641
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1615
    .restart local p2
    :cond_1
    instance-of v8, p2, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 1616
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1617
    .local v6, tv:Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1618
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1620
    .end local v6           #tv:Ljava/lang/CharSequence;
    .restart local p2
    :cond_2
    instance-of v8, p2, Landroid/widget/RadioGroup;

    if-eqz v8, :cond_3

    move-object v3, p2

    .line 1621
    check-cast v3, Landroid/widget/RadioGroup;

    .line 1622
    .local v3, rg:Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 1623
    .local v2, id:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 1624
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1626
    .end local v2           #id:I
    .end local v3           #rg:Landroid/widget/RadioGroup;
    :cond_3
    instance-of v8, p2, Landroid/widget/Spinner;

    if-eqz v8, :cond_4

    move-object v4, p2

    .line 1627
    check-cast v4, Landroid/widget/Spinner;

    .line 1628
    .local v4, s:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 1629
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1630
    .local v5, str:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1634
    .end local v4           #s:Landroid/widget/Spinner;
    .end local v5           #str:Ljava/lang/String;
    :cond_4
    instance-of v8, p2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v7, p2

    .line 1635
    check-cast v7, Landroid/view/ViewGroup;

    .line 1636
    .local v7, vg:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1637
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1638
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1637
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addReminder()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1889
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 1902
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1903
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 1904
    return-void

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_0
.end method

.method private fillModelFromUI()Z
    .locals 13

    .prologue
    .line 1057
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v8, :cond_0

    .line 1058
    const/4 v8, 0x0

    .line 1175
    :goto_0
    return v8

    .line 1060
    :cond_0
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v9, v10, v11}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 1062
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1063
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    .line 1064
    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v9, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1065
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1066
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1067
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1068
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1069
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1070
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1072
    :cond_1
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1073
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1076
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v8}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v8

    invoke-static {v8}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v7

    .line 1078
    .local v7, status:I
    if-eqz v7, :cond_3

    .line 1079
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v7, v8, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 1082
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v8, :cond_6

    .line 1083
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 1084
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 1085
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 1087
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-direct {p0, v0, v8}, Lcom/android/calendar/event/EditEventView;->isHasInvalidAddress(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1089
    const v8, 0x7f0c000b

    invoke-direct {p0, v8}, Lcom/android/calendar/event/EditEventView;->ToastMsg(I)V

    .line 1092
    :cond_4
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v8, v9, v10}, Lcom/android/calendar/CalendarEventModel;->addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V

    .line 1094
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 1095
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 1098
    :cond_5
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 1102
    .end local v0           #address:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 1103
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1104
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 1105
    .local v1, calendarCursorPosition:I
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1106
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, defaultCalendar:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v9, "preference_defaultCalendar"

    invoke-static {v8, v9, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v2, v8, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1111
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v2, v8, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1112
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1116
    .end local v1           #calendarCursorPosition:I
    .end local v2           #defaultCalendar:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v8, v8, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v8, :cond_b

    .line 1118
    const-string v8, "EditEventView"

    const-string v9, "all-day event, mTimezone set to UTC"

    invoke-static {v8, v9}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v8, "UTC"

    iput-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1123
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1124
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1125
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1126
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v9, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1127
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1129
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1130
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1131
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1132
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v9, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1135
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long v3, v8, v10

    .line 1137
    .local v3, normalizedEndTimeMillis:J
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v8, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_a

    .line 1139
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v9, v9, Lcom/android/calendar/CalendarEventModel;->mStart:J

    const-wide/32 v11, 0x5265c00

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 1149
    .end local v3           #normalizedEndTimeMillis:J
    :goto_2
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1150
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v9

    iput v9, v8, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 1152
    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v9, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 1158
    iget v8, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 1159
    const/4 v6, 0x0

    .line 1165
    .local v6, selection:I
    :goto_3
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 1169
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v8, v8, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-nez v8, :cond_8

    .line 1171
    const-string v8, "EditEventView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is set to recent time zone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 1175
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1064
    .end local v6           #selection:I
    .end local v7           #status:I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1141
    .restart local v3       #normalizedEndTimeMillis:J
    .restart local v7       #status:I
    :cond_a
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v3, v8, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_2

    .line 1144
    .end local v3           #normalizedEndTimeMillis:J
    :cond_b
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v9, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1145
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v9, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1146
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1147
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto/16 :goto_2

    .line 1161
    :cond_c
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 1162
    .local v5, position:I
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6       #selection:I
    goto :goto_3
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 11
    .parameter "calendarsCursor"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1815
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_1

    move v5, v7

    .line 1852
    :cond_0
    :goto_0
    return v5

    .line 1819
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v10, "preference_defaultCalendar"

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-static {v9, v10, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1822
    .local v4, defaultCalendar:Ljava/lang/String;
    const-string v6, "ownerAccount"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1825
    .local v3, calendarsOwnerColumn:I
    if-gez v3, :cond_2

    .line 1826
    const-string v6, "EditEventView"

    const-string v7, "getColumnIndexOrThrow(Calendar.OWNER_ACCOUNT) failed, return 0"

    invoke-static {v6, v7}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 1827
    goto :goto_0

    .line 1831
    :cond_2
    const-string v6, "account_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1832
    .local v0, accountNameIndex:I
    const-string v6, "account_type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1833
    .local v1, accountTypeIndex:I
    const/4 v5, 0x0

    .line 1834
    .local v5, position:I
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1835
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1836
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1837
    .local v2, calendarOwner:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 1840
    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "LOCAL"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1850
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1851
    goto :goto_1

    .line 1846
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .end local v2           #calendarOwner:Ljava/lang/String;
    :cond_5
    move v5, v8

    .line 1852
    goto :goto_0
.end method

.method private findMinReapeatMode(J)I
    .locals 2
    .parameter "duration"

    .prologue
    .line 2243
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x7528ad000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2244
    :cond_0
    const/4 v0, 0x5

    .line 2252
    :goto_0
    return v0

    .line 2245
    :cond_1
    const-wide v0, 0x9fa52400L

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 2246
    const/4 v0, 0x4

    goto :goto_0

    .line 2247
    :cond_2
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 2248
    const/4 v0, 0x3

    goto :goto_0

    .line 2249
    :cond_3
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 2250
    const/4 v0, 0x2

    goto :goto_0

    .line 2252
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .parameter "list"

    .prologue
    .line 1908
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    new-instance v0, Lcom/android/calendar/RecipientAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/RecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1910
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1911
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnFocusListShrinkRecipients(Z)V

    .line 1916
    :goto_0
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1917
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1920
    sget-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1922
    return-object p1

    .line 1913
    :cond_0
    new-instance v0, Lcom/android/calendar/EmailAddressAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1914
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 695
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 730
    :cond_2
    :goto_0
    :pswitch_0
    return v0

    .line 701
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    if-eqz v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_4
    move v0, v1

    .line 730
    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 711
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 716
    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon2/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_2

    .line 719
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    if-lez v2, :cond_4

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isHasInvalidAddress(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Z
    .locals 5
    .parameter "list"
    .parameter "validator"

    .prologue
    .line 2327
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2328
    .local v2, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p1, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 2329
    if-nez p2, :cond_1

    .line 2330
    const/4 v3, 0x0

    .line 2341
    :cond_0
    return v3

    .line 2333
    :cond_1
    const/4 v3, 0x0

    .line 2334
    .local v3, isHasInvalidAttendee:Z
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2335
    .local v1, addressIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 2337
    .local v0, address:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2338
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 735
    const/4 v0, 0x1

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 1296
    .local v3, vals:[I
    array-length v2, v3

    .line 1297
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1299
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1300
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_0
    return-object v1
.end method

.method private static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 3
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private populateRepeats()V
    .locals 26

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v19, v0

    .line 533
    .local v19, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 535
    .local v16, r:Landroid/content/res/Resources;
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v5, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x2

    const/16 v23, 0x3

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x3

    const/16 v23, 0x4

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x4

    const/16 v23, 0x5

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x5

    const/16 v23, 0x6

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x6

    const/16 v23, 0x7

    const/16 v24, 0x14

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    .line 543
    .local v5, days:[Ljava/lang/String;
    const v22, 0x7f07000d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 548
    .local v14, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isCustomRecurrence()Z

    move-result v10

    .line 549
    .local v10, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v11

    .line 551
    .local v11, isWeekdayEvent:Z
    new-instance v18, Ljava/util/ArrayList;

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    .local v18, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v17, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v24

    sub-long v6, v22, v24

    .line 562
    .local v6, duration:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 563
    const-wide/32 v22, 0x5265c00

    add-long v6, v6, v22

    .line 565
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/calendar/event/EditEventView;->findMinReapeatMode(J)I

    move-result v13

    .line 567
    .local v13, minRepeatMode:I
    const v22, 0x7f0c009d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v13, v0, :cond_1

    .line 571
    const v22, 0x7f0c009e

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    if-eqz v11, :cond_1

    .line 574
    const v22, 0x7f0c009f

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v13, v0, :cond_2

    .line 580
    const v22, 0x7f0c00a0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 581
    .local v9, format:Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "%A"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v9           #format:Ljava/lang/String;
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v22

    if-gt v13, v0, :cond_3

    .line 588
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    div-int/lit8 v4, v22, 0x7

    .line 589
    .local v4, dayNumber:I
    const v22, 0x7f0c00a1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 590
    .restart local v9       #format:Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v24, v14, v4

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v24, v0

    aget-object v24, v5, v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    const v22, 0x7f0c00a4

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 594
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v4           #dayNumber:I
    .end local v9           #format:Ljava/lang/String;
    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 598
    .local v20, when:J
    const v22, 0x7f0c00a5

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 599
    .restart local v9       #format:Ljava/lang/String;
    const/4 v8, 0x0

    .line 600
    .local v8, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 601
    or-int/lit16 v8, v8, 0x80

    .line 603
    :cond_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-gt v13, v0, :cond_5

    .line 604
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    if-eqz v10, :cond_6

    .line 610
    const v22, 0x7f0c00a6

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const/16 v22, 0x7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_6
    const/4 v12, -0x1

    .line 617
    .local v12, lastRepeatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 623
    :cond_7
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 624
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 634
    .local v15, position:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_8

    .line 635
    if-eqz v10, :cond_b

    .line 636
    const/16 v22, 0x7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 674
    :cond_8
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 676
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const v23, 0x1090008

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 678
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v22, 0x1090009

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v13, v0, :cond_e

    .line 686
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 691
    :goto_2
    return-void

    .line 626
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v15           #position:I
    :cond_a
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .restart local v15       #position:I
    goto/16 :goto_0

    .line 638
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 668
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    goto/16 :goto_1

    .line 640
    :pswitch_0
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 641
    goto/16 :goto_1

    .line 643
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 644
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    goto/16 :goto_1

    .line 647
    :cond_c
    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 650
    goto/16 :goto_1

    .line 652
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/calendarcommon2/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 653
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    goto/16 :goto_1

    .line 656
    :cond_d
    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 659
    goto/16 :goto_1

    .line 661
    :pswitch_3
    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 662
    goto/16 :goto_1

    .line 688
    .restart local v3       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_2

    .line 638
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone(J)V
    .locals 3
    .parameter "eventStartTime"

    .prologue
    .line 460
    const-string v0, "EditEventView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "populateTimezone, eventStartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimezone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    if-nez v0, :cond_1

    .line 463
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/event/EditEventView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$1;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 485
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/TimezoneAdapter;->setTime(J)V

    goto :goto_0
.end method

.method private populateWhen()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 443
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 444
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 445
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 446
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 448
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 449
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 451
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    return-void
.end method

.method private prepareAvailability()V
    .locals 5

    .prologue
    .line 1316
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1318
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f07000b

    invoke-static {v1, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    .line 1319
    const v2, 0x7f07000a

    invoke-static {v1, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 1321
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1322
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1326
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1328
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1329
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1330
    return-void
.end method

.method private prepareReminders()V
    .locals 17

    .prologue
    .line 1340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1341
    .local v13, model:Lcom/android/calendar/CalendarEventModel;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1348
    .local v15, r:Landroid/content/res/Resources;
    const v1, 0x7f070003

    invoke-static {v15, v1}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 1349
    const v1, 0x7f070002

    invoke-static {v15, v1}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 1350
    const v1, 0x7f070001

    invoke-static {v15, v1}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 1351
    const/high16 v1, 0x7f07

    invoke-static {v15, v1}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 1355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1360
    :cond_0
    const/4 v14, 0x0

    .line 1361
    .local v14, numReminders:I
    iget-boolean v1, v13, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v1, :cond_5

    .line 1362
    iget-object v0, v13, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1363
    .local v16, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1365
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1366
    .local v9, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1375
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1376
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1377
    .restart local v9       #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_4

    .line 1379
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v11}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_1

    .line 1384
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1389
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 1391
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 6

    .prologue
    .line 1593
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1595
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v4, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1599
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1600
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1602
    .local v3, msg:Ljava/lang/CharSequence;
    const/16 v4, 0x8

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1603
    .local v2, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1605
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1608
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private setAttendeesGroupVisibility(Ljava/lang/String;)V
    .locals 2
    .parameter "accountType"

    .prologue
    .line 2346
    const-string v0, "local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2351
    :goto_0
    return-void

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 4
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1934
    const v1, 0x18016

    .line 1946
    .local v1, flags:I
    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    .line 1947
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1950
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    invoke-interface {v2, p2, p3}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->getDateStringFromMillis(J)Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, dateString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1953
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1956
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1957
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1959
    return-void

    .line 1957
    .end local v0           #dateString:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setDateTimeViewId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2393
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/calendar/event/EditEventActivity;

    if-eqz v1, :cond_0

    .line 2394
    const-string v1, "EditEventView::date_time_debug_tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDateTimeViewId(), id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/calendar/event/EditEventActivity;

    .line 2397
    .local v0, eea:Lcom/android/calendar/event/EditEventActivity;
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/EditEventActivity;->setDateTimeViewId(I)V

    .line 2399
    .end local v0           #eea:Lcom/android/calendar/event/EditEventActivity;
    :cond_0
    return-void
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 4
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1962
    const/4 v0, 0x1

    .line 1963
    .local v0, flags:I
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1964
    or-int/lit16 v0, v0, 0x80

    .line 1975
    :cond_0
    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    .line 1976
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1977
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, timeString:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1979
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1981
    return-void

    .line 1979
    .end local v1           #timeString:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setTimeZoneHint()V
    .locals 3

    .prologue
    const v2, 0x7f0c0041

    .line 2228
    const-string v0, "EditEventView"

    const-string v1, "timezone is not permitted, Default string is set to TimeZone button"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 2230
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 2232
    return-void
.end method

.method private setTimezone(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1984
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1986
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->setTimeZoneHint()V

    .line 1999
    :goto_0
    return-void

    .line 1990
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1991
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1994
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1995
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1996
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1997
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1998
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStates(I)V
    .locals 11
    .parameter "mode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 1738
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1739
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->setWhenString()V

    .line 1741
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1742
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1744
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1745
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1747
    .end local v1           #v:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1748
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1749
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1751
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1753
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1754
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1755
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1756
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1761
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1764
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1804
    return-void

    .line 1758
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1767
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1768
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1770
    .end local v1           #v:Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1771
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1773
    .end local v1           #v:Landroid/view/View;
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1774
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1775
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1776
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1777
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7

    .line 1781
    .end local v1           #v:Landroid/view/View;
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1782
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1783
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    :goto_8
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1789
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v6, v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1793
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1795
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1785
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private showTimezoneDialog()V
    .locals 7

    .prologue
    .line 488
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 490
    .local v0, alertDialogContext:Landroid/content/Context;
    const v4, 0x7f0c0041

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 491
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 495
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 497
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 499
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04003a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 502
    .local v3, timezoneFooterView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    new-instance v4, Lcom/android/calendar/event/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/calendar/event/EditEventView$2;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/TimezoneAdapter;->isAllTimezonesShown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 525
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 528
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    invoke-virtual {v4}, Lcom/android/calendar/event/EditEventView$DialogManager;->dialogShown()V

    .line 529
    return-void
.end method

.method private updateAttendees(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1856
    .local p1, attendeesList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1863
    :cond_0
    return-void

    .line 1859
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1861
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHomeTime()V
    .locals 23

    .prologue
    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 2110
    .local v9, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/EditEventView;->mModification:I

    if-eqz v2, :cond_5

    .line 2112
    const/4 v8, 0x1

    .line 2113
    .local v8, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    .line 2114
    .local v18, is24Format:Z
    if-eqz v18, :cond_0

    .line 2115
    or-int/lit16 v8, v8, 0x80

    .line 2117
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 2118
    .local v4, millisStart:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 2120
    .local v12, millisEnd:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_3

    const/16 v20, 0x1

    .line 2121
    .local v20, isDSTStart:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_4

    const/16 v19, 0x1

    .line 2124
    .local v19, isDSTEnd:Z
    :goto_1
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 2126
    .local v22, tzDisplay:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    .local v21, time:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2134
    const v8, 0x80016

    .line 2136
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2142
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2143
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 2146
    :cond_1
    const/4 v8, 0x1

    .line 2147
    if-eqz v18, :cond_2

    .line 2148
    or-int/lit16 v8, v8, 0x80

    .line 2152
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2153
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    const v8, 0x80016

    .line 2160
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2170
    .end local v4           #millisStart:J
    .end local v8           #flags:I
    .end local v12           #millisEnd:J
    .end local v18           #is24Format:Z
    .end local v19           #isDSTEnd:Z
    .end local v20           #isDSTStart:Z
    .end local v21           #time:Ljava/lang/StringBuilder;
    .end local v22           #tzDisplay:Ljava/lang/String;
    :goto_2
    return-void

    .line 2120
    .restart local v4       #millisStart:J
    .restart local v8       #flags:I
    .restart local v12       #millisEnd:J
    .restart local v18       #is24Format:Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2121
    .restart local v20       #isDSTStart:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2167
    .end local v4           #millisStart:J
    .end local v8           #flags:I
    .end local v12           #millisEnd:J
    .end local v18           #is24Format:Z
    .end local v20           #isDSTStart:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateRemindersVisibility(I)V
    .locals 5
    .parameter "numReminders"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1866
    if-nez p1, :cond_0

    .line 1867
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1874
    .local v0, reminderAddButton:Landroid/view/View;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    if-lt p1, v1, :cond_1

    .line 1875
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    :goto_1
    return-void

    .line 1869
    .end local v0           #reminderAddButton:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1877
    .restart local v0       #reminderAddButton:Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public doOnResume()V
    .locals 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    invoke-interface {v0}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->updateDatePickerSelection()V

    .line 2218
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V

    .line 2222
    :cond_0
    return-void
.end method

.method public fillModelFromReadOnlyUi()Z
    .locals 5

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 956
    :cond_0
    const/4 v1, 0x0

    .line 967
    :goto_0
    return v1

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 960
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 961
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    .line 962
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    .line 964
    .local v0, status:I
    if-eqz v0, :cond_2

    .line 965
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v0, v1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 967
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getDateTimeOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 2

    .prologue
    .line 2382
    const-string v0, "EditEventView::date_time_debug_tag"

    const-string v1, "getDateTimeOnDismissListener()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    return-object v0
.end method

.method getDateTimeOnTimeSetListener(Landroid/view/View;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "v"

    .prologue
    .line 2402
    new-instance v0, Lcom/android/calendar/event/EditEventView$TimeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/EditEventView$TimeListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V

    return-object v0
.end method

.method getDateTimeView(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 2413
    const-string v0, "EditEventView::date_time_debug_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDateTimeView(), id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 2428
    :goto_0
    return-object v0

    .line 2418
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2419
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    goto :goto_0

    .line 2421
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    goto :goto_0

    .line 2424
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 2425
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    goto :goto_0

    .line 2428
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModel()Lcom/android/calendar/CalendarEventModel;
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    return-object v0
.end method

.method public getOnDateSetListener(Landroid/view/View;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "view"

    .prologue
    .line 2196
    new-instance v0, Lcom/android/calendar/event/EditEventView$DateListener;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/EditEventView$DateListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V

    return-object v0
.end method

.method public getRecurrenceIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method isAnyDialogShown()Z
    .locals 2

    .prologue
    .line 2368
    const-string v0, "EditEventView::date_time_debug_tag"

    const-string v1, "isAnyDialogShown()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1035
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_1

    .line 1036
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1037
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    .line 1038
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1039
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, nextIntent:Landroid/content/Intent;
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 1041
    .local v0, array:[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1044
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_0

    .line 1047
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1048
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 1049
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1050
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 978
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 979
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 980
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 981
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 982
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 983
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2049
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 2050
    .local v5, c:Landroid/database/Cursor;
    if-nez v5, :cond_1

    .line 2052
    const-string v14, "EditEventView"

    const-string v15, "Cursor not set on calendar item"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    const-string v14, "calendar_color"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2057
    .local v9, colorColumn:I
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2058
    .local v8, color:I
    invoke-static {v8}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v10

    .line 2060
    .local v10, displayColor:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v14, :cond_2

    .line 2061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2067
    :goto_1
    const-string v14, "_id"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2068
    .local v11, idColumn:I
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2069
    .local v6, calendarId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v14, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v14, v6, v14

    if-eqz v14, :cond_0

    .line 2072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v6, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 2073
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v8, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 2075
    const-string v14, "maxReminders"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2076
    .local v12, maxRemindersColumn:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 2077
    const-string v14, "allowedReminders"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2078
    .local v4, allowedRemindersColumn:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 2079
    const-string v14, "allowedAttendeeTypes"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2080
    .local v2, allowedAttendeeTypesColumn:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 2081
    const-string v14, "allowedAvailability"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2082
    .local v3, allowedAvailabilityColumn:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 2087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v14, v14, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v14, v14, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v15, v15, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v14, v14, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v15, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 2092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const v15, 0x7f100080

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 2095
    .local v13, reminderLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2096
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 2097
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    invoke-interface {v14, v5}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->onAccountItemSelected(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2063
    .end local v2           #allowedAttendeeTypesColumn:I
    .end local v3           #allowedAvailabilityColumn:I
    .end local v4           #allowedRemindersColumn:I
    .end local v6           #calendarId:J
    .end local v11           #idColumn:I
    .end local v12           #maxRemindersColumn:I
    .end local v13           #reminderLayout:Landroid/widget/LinearLayout;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 2089
    .restart local v2       #allowedAttendeeTypesColumn:I
    .restart local v3       #allowedAvailabilityColumn:I
    .restart local v4       #allowedRemindersColumn:I
    .restart local v6       #calendarId:J
    .restart local v11       #idColumn:I
    .restart local v12       #maxRemindersColumn:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2174
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public prepareForSave()Z
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 949
    :cond_0
    const/4 v0, 0x0

    .line 951
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 991
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 993
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 994
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 996
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 999
    :cond_1
    const-string v2, "EditEventView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no calendar account, dismiss inputmethod. focusView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v0           #focusView:Landroid/view/View;
    :goto_0
    return-void

    .line 1004
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1007
    const-string v2, "EditEventView"

    const-string v3, "mTitleTextView no focus, request it."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    .line 1009
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1010
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 1013
    :cond_3
    const-string v2, "EditEventView"

    const-string v3, "mTitleTextView have focus, just do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetDateButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2185
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 2186
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 2187
    return-void
.end method

.method protected setAllDayViewsVisibility(Z)V
    .locals 7
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2005
    if-eqz p1, :cond_3

    .line 2006
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_2

    .line 2007
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_0

    .line 2008
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 2011
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 2016
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2017
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2018
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 2020
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 2021
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 2024
    .end local v0           #endMillis:J
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2025
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2026
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    :goto_0
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 2042
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 2043
    return-void

    .line 2028
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_5

    .line 2029
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_4

    .line 2030
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 2033
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 2034
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 2035
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 2037
    .end local v0           #endMillis:J
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2038
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAttendeesGroupVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    return-void
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "cursor"
    .parameter "userVisible"

    .prologue
    const/4 v3, 0x1

    .line 1678
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 1679
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 1681
    :cond_0
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v4, :cond_1

    .line 1682
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    .line 1684
    :cond_1
    if-nez p2, :cond_3

    .line 1720
    :cond_2
    :goto_0
    return-void

    .line 1689
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1690
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0076

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0077

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0079

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1694
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1698
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v2

    .line 1701
    .local v2, defaultCalendarPosition:I
    new-instance v0, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4, p1}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1702
    .local v0, adapter:Lcom/android/calendar/event/EditEventView$CalendarsAdapter;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1703
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1704
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1706
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v4, :cond_2

    .line 1707
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    .line 1708
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1709
    if-eqz p2, :cond_5

    .line 1710
    .local v3, exit:I
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v5, v3, 0x2

    invoke-interface {v4, v5}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1711
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v4}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0

    .line 1709
    .end local v3           #exit:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1712
    :cond_6
    if-eqz p2, :cond_7

    .line 1713
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v4, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1714
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v4}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 1715
    :cond_7
    const-string v4, "EditEventView"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1716
    const-string v4, "EditEventView"

    const-string v5, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method setDialogShown()V
    .locals 2

    .prologue
    .line 2374
    const-string v0, "EditEventView::date_time_debug_tag"

    const-string v1, "getDateTimeOnDismissListener()"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView$DialogManager;->onShow(Landroid/content/DialogInterface;)V

    .line 2377
    return-void
.end method

.method public setModel(Lcom/android/calendar/CalendarEventModel;)V
    .locals 22
    .parameter "model"

    .prologue
    .line 1402
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/calendar/EmailAddressAdapter;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual/range {v20 .. v20}, Lcom/android/common/widget/CompositeCursorAdapter;->close()V

    .line 1407
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1410
    :cond_0
    if-nez p1, :cond_1

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    :goto_0
    return-void

    .line 1417
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v9

    .line 1419
    .local v9, canRespond:Z
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1420
    .local v5, begin:J
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 1421
    .local v12, end:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 1448
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1449
    .local v18, rrule:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1454
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditEventView;->setAttendeesGroupVisibility(Ljava/lang/String;)V

    .line 1458
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/calendar/event/EditEventView$4;

    invoke-direct/range {v21 .. v22}, Lcom/android/calendar/event/EditEventView$4;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v15

    .line 1470
    .local v15, prevAllDay:Z
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1471
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 1483
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    if-ne v15, v0, :cond_4

    .line 1484
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1487
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1490
    .local v14, prefs:Landroid/content/SharedPreferences;
    const-string v20, "preferences_default_reminder"

    const-string v21, "-1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1492
    .local v10, defaultReminderString:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    .line 1494
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1495
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100081

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1498
    .local v16, reminderAddButton:Landroid/view/View;
    new-instance v3, Lcom/android/calendar/event/EditEventView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/event/EditEventView$5;-><init>(Lcom/android/calendar/event/EditEventView;)V

    .line 1504
    .local v3, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100065

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/android/calendar/event/EditEventView$6;

    invoke-direct/range {v21 .. v22}, Lcom/android/calendar/event/EditEventView$6;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1520
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "calendar.google.com"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1522
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100074

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100075

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1533
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1537
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1538
    .local v4, availIndex:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_a

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1541
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10006e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1544
    .local v17, responseLabel:Landroid/view/View;
    if-eqz v9, :cond_e

    .line 1545
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v7

    .line 1547
    .local v7, buttonToCheck:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    .end local v7           #buttonToCheck:I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v11

    .line 1557
    .local v11, displayColor:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100049

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1561
    .local v8, calendarGroup:Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10004c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1563
    .local v19, tv:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10004d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1565
    .restart local v19       #tv:Landroid/widget/TextView;
    if-eqz v19, :cond_b

    .line 1566
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10004c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1578
    .end local v19           #tv:Landroid/widget/TextView;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->populateWhen()V

    .line 1579
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1580
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditEventView;->updateAttendees(Ljava/util/HashMap;)V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->sendAccessibilityEvent()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mExt:Lcom/mediatek/calendar/extension/IEditEventViewExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/calendar/extension/IEditEventViewExt;->setExtUI(Lcom/android/calendar/CalendarEventModel;)V

    goto/16 :goto_0

    .line 1479
    .end local v3           #addReminderOnClickListener:Landroid/view/View$OnClickListener;
    .end local v4           #availIndex:I
    .end local v8           #calendarGroup:Landroid/view/View;
    .end local v10           #defaultReminderString:Ljava/lang/String;
    .end local v11           #displayColor:I
    .end local v14           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #reminderAddButton:Landroid/view/View;
    .end local v17           #responseLabel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1526
    .restart local v3       #addReminderOnClickListener:Landroid/view/View$OnClickListener;
    .restart local v10       #defaultReminderString:Ljava/lang/String;
    .restart local v14       #prefs:Landroid/content/SharedPreferences;
    .restart local v16       #reminderAddButton:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f100075

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1551
    .restart local v4       #availIndex:I
    .restart local v17       #responseLabel:Landroid/view/View;
    :cond_e
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1571
    .restart local v8       #calendarGroup:Landroid/view/View;
    .restart local v11       #displayColor:I
    .restart local v19       #tv:Landroid/widget/TextView;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10004b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 1574
    .end local v8           #calendarGroup:Landroid/view/View;
    .end local v19           #tv:Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f10004b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1575
    .restart local v8       #calendarGroup:Landroid/view/View;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setModification(I)V
    .locals 0
    .parameter "modifyWhich"

    .prologue
    .line 1807
    iput p1, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 1808
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1809
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1810
    return-void
.end method

.method protected setWhenString()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1648
    const/16 v6, 0x10

    .line 1649
    .local v6, flags:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1650
    .local v7, tz:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_1

    .line 1651
    or-int/lit8 v6, v6, 0x2

    .line 1652
    const-string v7, "UTC"

    .line 1659
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1660
    .local v2, startMillis:J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1661
    .local v4, endMillis:J
    sget-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1664
    .local v8, when:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    return-void

    .line 1654
    .end local v2           #startMillis:J
    .end local v4           #endMillis:J
    .end local v8           #when:Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 1655
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v0, :cond_0

    .line 1734
    :goto_0
    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0

    .line 1732
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0
.end method
