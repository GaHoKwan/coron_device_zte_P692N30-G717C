.class public Lcom/android/calendar/EventInfoFragment;
.super Landroid/app/DialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_IDENTITY:I = 0x5

.field private static final ATTENDEES_INDEX_ID_NAMESPACE:I = 0x6

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field protected static final BUNDLE_KEY_ATTENDEE_RESPONSE:Ljava/lang/String; = "key_attendee_response"

.field protected static final BUNDLE_KEY_DELETE_DIALOG_VISIBLE:Ljava/lang/String; = "key_delete_dialog_visible"

.field protected static final BUNDLE_KEY_END_MILLIS:Ljava/lang/String; = "key_end_millis"

.field protected static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field protected static final BUNDLE_KEY_IS_DIALOG:Ljava/lang/String; = "key_fragment_is_dialog"

.field protected static final BUNDLE_KEY_ORIGINAL_REMINDERS:Ljava/lang/String; = "key_original_reminders"

.field protected static final BUNDLE_KEY_REMINDERS:Ljava/lang/String; = "key_reminders"

.field protected static final BUNDLE_KEY_START_MILLIS:Ljava/lang/String; = "key_start_millis"

.field protected static final BUNDLE_KEY_WHICH_DELETE:Ljava/lang/String; = "key_which_delete"

.field protected static final BUNDLE_KEY_WHICH_EVENTS:Ljava/lang/String; = "key_which_events"

.field protected static final BUNDLE_KEY_WINDOW_STYLE:Ljava/lang/String; = "key_window_style"

.field static final CALENDARS_DUPLICATE_NAME_WHERE:Ljava/lang/String; = "calendar_displayName=?"

.field static final CALENDARS_INDEX_ACCOUNT_NAME:I = 0x4

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_OWNER_CAN_RESPOND:I = 0x3

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_VISIBLE_WHERE:Ljava/lang/String; = "visible=?"

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=?"

.field public static final DEBUG:Z = false

.field private static DIALOG_TOP_MARGIN:I = 0x0

.field public static final DIALOG_WINDOW_STYLE:I = 0x1

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xa

.field private static final EVENT_INDEX_ACCOUNT_TYPE:I = 0x14

.field private static final EVENT_INDEX_ALLOWED_REMINDERS:I = 0x10

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_COLOR:I = 0xb

.field private static final EVENT_INDEX_CUSTOM_APP_PACKAGE:I = 0x11

.field private static final EVENT_INDEX_CUSTOM_APP_URI:I = 0x12

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xe

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xc

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_MAX_REMINDERS:I = 0xf

.field private static final EVENT_INDEX_ORGANIZER:I = 0xd

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final FADE_IN_TIME:I = 0x12c

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "fragment_tag"

.field public static final FULL_WINDOW_STYLE:I = 0x0

.field private static final LOADING_MSG_DELAY:I = 0x258

.field private static final LOADING_MSG_MIN_DISPLAY_TIME:I = 0x258

.field private static final NANP_ALLOWED_SYMBOLS:Ljava/lang/String; = "()+-*#."

.field private static final NANP_MAX_DIGITS:I = 0xb

.field private static final NANP_MIN_DIGITS:I = 0x7

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field private static final REMINDERS_INDEX_ID:I = 0x0

.field private static final REMINDERS_METHOD_ID:I = 0x2

.field private static final REMINDERS_MINUTES_ID:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final TAG:Ljava/lang/String; = "EventInfoFragment"

.field private static final TOKEN_INSERT_EXCEPTION_EVENT:I = 0x40

.field private static final TOKEN_QUERY_ALL:I = 0x3f

.field private static final TOKEN_QUERY_ATTENDEES:I = 0x4

.field private static final TOKEN_QUERY_CALENDARS:I = 0x2

.field private static final TOKEN_QUERY_DUPLICATE_CALENDARS:I = 0x8

.field private static final TOKEN_QUERY_EVENT:I = 0x1

.field private static final TOKEN_QUERY_REMINDERS:I = 0x10

.field private static final TOKEN_QUERY_VISIBLE_CALENDARS:I = 0x20

.field static final UPDATE_ALL:I = 0x1

.field static final UPDATE_SINGLE:I

.field private static final WILDCARD_PATTERN:Ljava/util/regex/Pattern;

.field private static mCustomAppIconSize:I

.field private static mDialogHeight:I

.field private static mDialogWidth:I

.field private static mScale:F


# instance fields
.field private emailAttendeesButton:Landroid/widget/Button;

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAddReminderBtn:Landroid/widget/Button;

.field private mAllDay:Z

.field private mAnimateAlpha:Landroid/animation/ObjectAnimator;

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarAllowedReminders:Ljava/lang/String;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field mCcEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentQuery:I

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultReminderMinutes:I

.field private mDeleteDialogVisible:Z

.field private mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDesc:Lcom/android/calendar/ExpandableTextView;

.field private mDismissOnResume:Z

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventDeletionStarted:Z

.field private mEventId:J

.field private mEventOrganizerDisplayName:Ljava/lang/String;

.field private mEventOrganizerEmail:Ljava/lang/String;

.field private mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

.field private mHasAlarm:Z

.field private mHasAttendeeData:Z

.field private mHeadlines:Landroid/view/View;

.field private mIsBusyFreeCalendar:Z

.field private mIsDialog:Z

.field private mIsOrganizer:Z

.field private mIsPaused:Z

.field private mIsRepeating:Z

.field private mIsTabletConfig:Z

.field private final mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

.field private mLoadingMsgStartTime:J

.field private mLoadingMsgView:Landroid/view/View;

.field private mLongAttendees:Lcom/android/calendar/event/AttendeesView;

.field private mMaxReminders:I

.field private mMenu:Landroid/view/Menu;

.field private mMinTop:I

.field private mNeedSaveEvent:Z

.field private mNoCrossFade:Z

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

.field private mOriginalAttendeeResponse:I

.field public mOriginalReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerCanRespond:Z

.field private mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

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

.field private final mReminderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersCursor:Landroid/database/Cursor;

.field private mSavedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStartMillis:J

.field private mSyncAccountName:Ljava/lang/String;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field mToEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mUserModifiedReminders:Z

.field private mUserSetResponse:I

.field private mView:Landroid/view/View;

.field private mWhenDateTime:Landroid/widget/TextView;

.field private mWhere:Landroid/widget/TextView;

.field private mWhichDelete:I

.field private mWindowStyle:I

.field private mX:I

.field private mY:I

.field private final onDeleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const-string v1, "dtstart"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "customAppUri"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 220
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    const-string v1, "attendeeIdentity"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "attendeeIdNamespace"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    .line 240
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 241
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 243
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    .line 244
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 253
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 264
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 296
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 352
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->WILDCARD_PATTERN:Ljava/util/regex/Pattern;

    .line 410
    const/16 v0, 0x1f4

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 411
    const/16 v0, 0x258

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 412
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 620
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 160
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 176
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 306
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 315
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 319
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 320
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 326
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 334
    iput-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 343
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mNeedSaveEvent:Z

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 369
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 389
    new-instance v0, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 413
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 414
    iput-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 416
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 417
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 887
    new-instance v0, Lcom/android/calendar/EventInfoFragment$9;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$9;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 2595
    iput-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    .line 2667
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    .line 621
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZI)V
    .locals 10
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"
    .parameter "isDialog"
    .parameter "windowStyle"

    .prologue
    .line 627
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V

    .line 629
    iput-wide p2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"
    .parameter "isDialog"
    .parameter "windowStyle"

    .prologue
    .line 594
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 160
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 304
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 306
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 319
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mNeedSaveEvent:Z

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 389
    new-instance v1, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 396
    new-instance v1, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 414
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 416
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 417
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 887
    new-instance v1, Lcom/android/calendar/EventInfoFragment$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$9;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 2595
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    .line 2667
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 597
    .local v0, r:Landroid/content/res/Resources;
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 599
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 600
    sget v1, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 601
    if-eqz p8, :cond_0

    .line 602
    sget v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    .line 606
    :cond_0
    if-eqz p8, :cond_1

    .line 607
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 609
    :cond_1
    iput-boolean p8, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 611
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 612
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 613
    iput-wide p3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 614
    iput-wide p5, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 615
    iput p7, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 616
    iput p9, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 617
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/EventInfoFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/EventInfoFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/EventInfoFragment$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/calendar/EventInfoFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    return v0
.end method

.method static synthetic access$2576(Lcom/android/calendar/EventInfoFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/DeleteEventHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/EventInfoFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->emailAttendees()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->addReminder()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoFragment;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EventInfoFragment;->saveRemindersForEvent(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    return-void
.end method

.method private addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V
    .locals 2
    .parameter
    .parameter "tv"
    .parameter "etv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcom/android/calendar/ExpandableTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1822
    .local p1, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p2, :cond_1

    .line 1823
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1830
    .local v0, cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1832
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1833
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    const-string v1, ". "

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 1824
    :cond_1
    if-eqz p3, :cond_0

    .line 1825
    invoke-virtual {p3}, Lcom/android/calendar/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private addReminder()V
    .locals 11

    .prologue
    .line 2346
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 2359
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2360
    return-void

    .line 2353
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_0
.end method

.method private applyDialogParams()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 666
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 667
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 669
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 670
    .local v2, window:Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 672
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 673
    .local v0, a:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 675
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 676
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 682
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    if-eq v3, v4, :cond_2

    .line 683
    :cond_0
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 684
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 685
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    if-ge v3, v4, :cond_1

    .line 686
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 688
    :cond_1
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 690
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 691
    return-void
.end method

.method private createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 2518
    new-instance v0, Lcom/android/calendar/EventInfoFragment$14;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$14;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    return-object v0
.end method

.method private createExceptionResponse(JI)V
    .locals 9
    .parameter "eventId"
    .parameter "status"

    .prologue
    .line 1220
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1221
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "originalInstanceTime"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1222
    const-string v0, "selfAttendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1223
    const-string v0, "eventStatus"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1228
    .local v7, exceptionUri:Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1234
    return-void
.end method

.method private doEdit()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 1269
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 1272
    .local v14, c:Landroid/content/Context;
    if-eqz v14, :cond_0

    .line 1273
    invoke-static {v14}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v6, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v8, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    const-wide/16 v12, -0x1

    move-object v1, p0

    move v11, v10

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 1277
    :cond_0
    return-void
.end method

.method private emailAttendees()V
    .locals 4

    .prologue
    .line 2484
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2485
    .local v0, i:Landroid/content/Intent;
    const-string v1, "eventId"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2486
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2487
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2488
    return-void
.end method

.method public static findButtonIdForResponse(I)I
    .locals 1
    .parameter "response"

    .prologue
    .line 1252
    packed-switch p0, :pswitch_data_0

    .line 1263
    :pswitch_0
    const/4 v0, -0x1

    .line 1265
    .local v0, buttonId:I
    :goto_0
    return v0

    .line 1254
    .end local v0           #buttonId:I
    :pswitch_1
    const v0, 0x7f100070

    .line 1255
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 1257
    .end local v0           #buttonId:I
    :pswitch_2
    const v0, 0x7f100071

    .line 1258
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 1260
    .end local v0           #buttonId:I
    :pswitch_3
    const v0, 0x7f100072

    .line 1261
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static findNanpMatchEnd(Ljava/lang/CharSequence;I)I
    .locals 12
    .parameter "text"
    .parameter "startPos"

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x7

    const/4 v6, -0x1

    const/16 v9, 0x31

    .line 1544
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v8, p1, 0x4

    if-le v7, v8, :cond_0

    add-int/lit8 v7, p1, 0x4

    invoke-interface {p0, p1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1546
    add-int/lit8 p1, p1, 0x4

    .line 1549
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1550
    .local v2, endPos:I
    move v1, p1

    .line 1551
    .local v1, curPos:I
    const/4 v4, 0x0

    .line 1552
    .local v4, foundDigits:I
    const/16 v3, 0x78

    .line 1553
    .local v3, firstDigit:C
    const/4 v5, 0x0

    .line 1555
    .local v5, foundWhiteSpaceAfterAreaCode:Z
    :goto_0
    if-gt v1, v2, :cond_b

    .line 1557
    if-ge v1, v2, :cond_3

    .line 1558
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1563
    .local v0, ch:C
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1564
    if-nez v4, :cond_1

    .line 1565
    move v3, v0

    .line 1567
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1568
    if-le v4, v11, :cond_7

    move v1, v6

    .line 1596
    .end local v0           #ch:C
    .end local v1           #curPos:I
    :cond_2
    :goto_2
    return v1

    .line 1560
    .restart local v1       #curPos:I
    :cond_3
    const/16 v0, 0x1b

    .restart local v0       #ch:C
    goto :goto_1

    .line 1572
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1573
    if-ne v3, v9, :cond_5

    const/4 v7, 0x4

    if-eq v4, v7, :cond_6

    :cond_5
    const/4 v7, 0x3

    if-ne v4, v7, :cond_8

    .line 1575
    :cond_6
    const/4 v5, 0x1

    .line 1587
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 1588
    goto :goto_0

    .line 1576
    :cond_8
    if-ne v3, v9, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_7

    .line 1577
    :cond_9
    if-eqz v5, :cond_b

    if-ne v3, v9, :cond_a

    if-eq v4, v10, :cond_7

    :cond_a
    const/4 v7, 0x6

    if-eq v4, v7, :cond_7

    .line 1590
    .end local v0           #ch:C
    :cond_b
    :goto_3
    if-eq v3, v9, :cond_c

    if-eq v4, v10, :cond_2

    const/16 v7, 0xa

    if-eq v4, v7, :cond_2

    :cond_c
    if-ne v3, v9, :cond_d

    if-eq v4, v11, :cond_2

    :cond_d
    move v1, v6

    .line 1596
    goto :goto_2

    .line 1582
    .restart local v0       #ch:C
    :cond_e
    const-string v7, "()+-*#."

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v6, :cond_7

    goto :goto_3
.end method

.method static findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I
    .locals 7
    .parameter "text"

    .prologue
    .line 1478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1481
    .local v5, startPos:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    add-int/lit8 v0, v6, 0x1

    .line 1482
    .local v0, endPos:I
    if-gez v0, :cond_2

    .line 1483
    const/4 v6, 0x0

    new-array v4, v6, [I

    .line 1517
    :cond_0
    return-object v4

    .line 1500
    :cond_1
    invoke-static {p0, v5}, Lcom/android/calendar/EventInfoFragment;->findNanpMatchEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1501
    .local v3, matchEnd:I
    if-le v3, v5, :cond_5

    .line 1502
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    move v5, v3

    .line 1490
    .end local v3           #matchEnd:I
    :cond_2
    if-ge v5, v0, :cond_4

    .line 1492
    :goto_0
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge v5, v0, :cond_3

    .line 1493
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1495
    :cond_3
    if-ne v5, v0, :cond_1

    .line 1513
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 1514
    .local v4, result:[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 1515
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v1

    .line 1514
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1507
    .end local v1           #i:I
    .end local v4           #result:[I
    .restart local v3       #matchEnd:I
    :cond_5
    :goto_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    if-ge v5, v0, :cond_2

    .line 1508
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V
    .locals 8
    .parameter
    .parameter "sb"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2057
    .local p1, attendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 2094
    :goto_0
    :pswitch_0
    return-void

    .line 2061
    :cond_0
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 2062
    .local v1, begin:I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 2064
    .local v2, firstTime:Z
    :goto_1
    if-nez v2, :cond_1

    .line 2065
    add-int/lit8 v1, v1, 0x2

    .line 2068
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 2069
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    if-eqz v2, :cond_3

    .line 2070
    const/4 v2, 0x0

    .line 2075
    :goto_3
    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2076
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 2062
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v2           #firstTime:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2072
    .restart local v0       #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .restart local v2       #firstTime:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    const-string v5, ", "

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 2079
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    :cond_4
    packed-switch p3, :pswitch_data_0

    .line 2090
    :goto_4
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x666667

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x22

    invoke-virtual {p2, v5, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 2083
    :pswitch_1
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {p2, v5, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 2079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getResponseFromButtonId(I)I
    .locals 2
    .parameter "buttonId"

    .prologue
    .line 1238
    const v1, 0x7f100070

    if-ne p0, v1, :cond_0

    .line 1239
    const/4 v0, 0x1

    .line 1247
    .local v0, response:I
    :goto_0
    return v0

    .line 1240
    .end local v0           #response:I
    :cond_0
    const v1, 0x7f100071

    if-ne p0, v1, :cond_1

    .line 1241
    const/4 v0, 0x4

    .restart local v0       #response:I
    goto :goto_0

    .line 1242
    .end local v0           #response:I
    :cond_1
    const v1, 0x7f100072

    if-ne p0, v1, :cond_2

    .line 1243
    const/4 v0, 0x2

    .restart local v0       #response:I
    goto :goto_0

    .line 1245
    .end local v0           #response:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #response:I
    goto :goto_0
.end method

.method private hasEmailableAttendees()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1973
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1974
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1993
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    :goto_0
    return v2

    .line 1978
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1979
    .restart local v0       #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1983
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1984
    .restart local v0       #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1988
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1989
    .restart local v0       #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 1993
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasEmailableOrganizer()Z
    .locals 2

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexFirstNonWhitespaceChar(Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 1600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1601
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1605
    .end local v0           #i:I
    :goto_1
    return v0

    .line 1600
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1605
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static indexLastNonWhitespaceChar(Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 1609
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1610
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1614
    .end local v0           #i:I
    :goto_1
    return v0

    .line 1609
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1614
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initAttendeesCursor(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    .line 930
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 931
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 933
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 935
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 939
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 943
    .local v6, status:I
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, email:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 950
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 951
    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 952
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_1

    .line 953
    const v0, 0x7f10009c

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 954
    const v0, 0x7f100075

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 959
    :cond_1
    iget-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 961
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    iput-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 962
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 997
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateAttendees(Landroid/view/View;)V

    .line 1003
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v6           #status:I
    :cond_2
    return-void

    .line 964
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #email:Ljava/lang/String;
    .restart local v6       #status:I
    :cond_3
    const/4 v4, 0x0

    .line 965
    .local v4, identity:Ljava/lang/String;
    const/4 v5, 0x0

    .line 967
    .local v5, idNamespace:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 968
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 969
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 975
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 992
    :pswitch_0
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 977
    :pswitch_1
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 982
    :pswitch_2
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    :pswitch_3
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initEventCursor()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 915
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v3, v2

    .line 925
    :goto_0
    return v3

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 919
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 920
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, rRule:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    .line 922
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    .line 923
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    .line 924
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 921
    goto :goto_1

    :cond_3
    move v2, v3

    .line 922
    goto :goto_2
.end method

.method private static linkifyTextView(Landroid/widget/TextView;)V
    .locals 27
    .parameter "textView"

    .prologue
    .line 1630
    const-string v24, "user.region"

    const-string v25, "US"

    invoke-static/range {v24 .. v25}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1631
    .local v5, defaultPhoneRegion:Ljava/lang/String;
    const-string v24, "US"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 1632
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 1633
    .local v15, origText:Ljava/lang/CharSequence;
    const/16 v24, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    .line 1638
    .local v20, spanText:Landroid/text/Spannable;
    const/16 v24, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v25

    const-class v26, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/URLSpan;

    .line 1639
    .local v21, spans:[Landroid/text/style/URLSpan;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1640
    const/16 v24, 0x0

    aget-object v24, v21, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1641
    .local v11, linkStart:I
    const/16 v24, 0x0

    aget-object v24, v21, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1642
    .local v10, linkEnd:I
    invoke-static {v15}, Lcom/android/calendar/EventInfoFragment;->indexFirstNonWhitespaceChar(Ljava/lang/CharSequence;)I

    move-result v24

    move/from16 v0, v24

    if-gt v11, v0, :cond_1

    invoke-static {v15}, Lcom/android/calendar/EventInfoFragment;->indexLastNonWhitespaceChar(Ljava/lang/CharSequence;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    if-lt v10, v0, :cond_1

    .line 1767
    .end local v10           #linkEnd:I
    .end local v11           #linkStart:I
    .end local v15           #origText:Ljava/lang/CharSequence;
    .end local v20           #spanText:Landroid/text/Spannable;
    .end local v21           #spans:[Landroid/text/style/URLSpan;
    :cond_0
    :goto_0
    return-void

    .line 1650
    .restart local v15       #origText:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    sget-object v24, Lcom/android/calendar/EventInfoFragment;->WILDCARD_PATTERN:Ljava/util/regex/Pattern;

    const-string v25, "geo:0,0?q="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    .end local v15           #origText:Ljava/lang/CharSequence;
    :cond_2
    const/16 v24, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v12

    .line 1685
    .local v12, linkifyFoundLinks:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    .line 1686
    .local v23, text:Ljava/lang/CharSequence;
    invoke-static/range {v23 .. v23}, Lcom/android/calendar/EventInfoFragment;->findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I

    move-result-object v17

    .line 1695
    .local v17, phoneSequences:[I
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/text/SpannableString;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v20, v23

    .line 1696
    check-cast v20, Landroid/text/SpannableString;

    .line 1704
    .restart local v20       #spanText:Landroid/text/Spannable;
    :goto_1
    const/16 v24, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v25

    const-class v26, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 1709
    .local v8, existingSpans:[Landroid/text/style/URLSpan;
    const/16 v16, 0x0

    .line 1710
    .local v16, phoneCount:I
    const/4 v13, 0x0

    .local v13, match:I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    if-ge v13, v0, :cond_9

    .line 1711
    mul-int/lit8 v24, v13, 0x2

    aget v22, v17, v24

    .line 1712
    .local v22, start:I
    mul-int/lit8 v24, v13, 0x2

    add-int/lit8 v24, v24, 0x1

    aget v7, v17, v24

    .line 1714
    .local v7, end:I
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v8, v1, v7}, Lcom/android/calendar/EventInfoFragment;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1715
    const-string v24, "EventInfoFragment"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1716
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1717
    .local v18, seq:Ljava/lang/CharSequence;
    const-string v24, "EventInfoFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Not linkifying "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " as phone number due to overlap"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    .end local v18           #seq:Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1698
    .end local v7           #end:I
    .end local v8           #existingSpans:[Landroid/text/style/URLSpan;
    .end local v13           #match:I
    .end local v16           #phoneCount:I
    .end local v20           #spanText:Landroid/text/Spannable;
    .end local v22           #start:I
    :cond_4
    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v20

    .restart local v20       #spanText:Landroid/text/Spannable;
    goto :goto_1

    .line 1731
    .restart local v7       #end:I
    .restart local v8       #existingSpans:[Landroid/text/style/URLSpan;
    .restart local v13       #match:I
    .restart local v16       #phoneCount:I
    .restart local v22       #start:I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1732
    .local v6, dialBuilder:Ljava/lang/StringBuilder;
    move/from16 v9, v22

    .local v9, i:I
    :goto_4
    if-ge v9, v7, :cond_8

    .line 1733
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    .line 1734
    .local v4, ch:C
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1735
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1732
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1738
    .end local v4           #ch:C
    :cond_8
    new-instance v19, Landroid/text/style/URLSpan;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tel:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v19, span:Landroid/text/style/URLSpan;
    const/16 v24, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1741
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1744
    .end local v6           #dialBuilder:Ljava/lang/StringBuilder;
    .end local v7           #end:I
    .end local v9           #i:I
    .end local v19           #span:Landroid/text/style/URLSpan;
    .end local v22           #start:I
    :cond_9
    if-eqz v16, :cond_c

    .line 1746
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 1747
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v14

    .line 1754
    .local v14, mm:Landroid/text/method/MovementMethod;
    if-eqz v14, :cond_b

    instance-of v0, v14, Landroid/text/method/LinkMovementMethod;

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 1755
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1756
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1761
    .end local v14           #mm:Landroid/text/method/MovementMethod;
    :cond_c
    if-nez v12, :cond_0

    if-nez v16, :cond_0

    .line 1762
    const-string v24, "EventInfoFragment"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1763
    const-string v24, "EventInfoFragment"

    const-string v25, "No linkification matches, using geo default"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_d
    sget-object v24, Lcom/android/calendar/EventInfoFragment;->WILDCARD_PATTERN:Ljava/util/regex/Pattern;

    const-string v25, "geo:0,0?q="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto/16 :goto_0
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
    .line 2494
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 2495
    .local v3, vals:[I
    array-length v2, v3

    .line 2496
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2498
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2499
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2502
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
    .line 2508
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2510
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private declared-synchronized prepareReminders()V
    .locals 4

    .prologue
    .line 2365
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2393
    :goto_0
    monitor-exit p0

    return-void

    .line 2375
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2376
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f070003

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 2377
    const v1, 0x7f070002

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2378
    const v1, 0x7f070001

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 2379
    const/high16 v1, 0x7f07

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 2383
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2384
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2387
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2388
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2392
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateAddReminderBtnVisibility()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2365
    .end local v0           #r:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private removeDuplicate(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2462
    .local p1, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 2476
    :cond_0
    return-void

    .line 2466
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2467
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2468
    .local v2, prev:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2469
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2470
    .local v0, cur:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2472
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2474
    :cond_2
    move-object v2, v0

    .line 2468
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private saveReminders()Z
    .locals 3

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 2399
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/EventInfoFragment;->saveRemindersForEvent(J)Z

    move-result v0

    return v0
.end method

.method private saveRemindersForEvent(J)Z
    .locals 16
    .parameter "eventId"

    .prologue
    .line 2408
    const-string v3, "EventInfoFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save reminders for event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2412
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v15, remendersBack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/EventInfoFragment;->removeDuplicate(Ljava/util/ArrayList;)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/EventInfoFragment;->removeDuplicate(Ljava/util/ArrayList;)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v12

    .line 2430
    .local v12, changed:Z
    if-nez v12, :cond_0

    .line 2431
    const/4 v3, 0x0

    .line 2453
    :goto_0
    return v3

    .line 2436
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 2438
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2439
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2440
    .local v14, len:I
    if-lez v14, :cond_2

    const/4 v13, 0x1

    .line 2441
    .local v13, hasAlarm:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eq v13, v3, :cond_1

    .line 2442
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2443
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "hasAlarm"

    if-eqz v13, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 2448
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2450
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2453
    const/4 v3, 0x1

    goto :goto_0

    .line 2440
    .end local v13           #hasAlarm:Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 2443
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v13       #hasAlarm:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private saveResponse()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1150
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 1191
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1154
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 1155
    .local v6, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v5

    .line 1156
    .local v5, status:I
    if-eqz v5, :cond_0

    .line 1161
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-eq v5, v1, :cond_0

    .line 1166
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1170
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v1, :cond_2

    .line 1172
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 1173
    goto :goto_0

    .line 1177
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v7

    .line 1178
    .local v7, whichEvents:I
    packed-switch v7, :pswitch_data_0

    .line 1188
    const-string v1, "EventInfoFragment"

    const-string v2, "Unexpected choice for updating invitation response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1182
    :pswitch_1
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-direct {p0, v0, v1, v5}, Lcom/android/calendar/EventInfoFragment;->createExceptionResponse(JI)V

    move v0, v8

    .line 1183
    goto :goto_0

    .line 1185
    :pswitch_2
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 1186
    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendAccessibilityEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1791
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1793
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1797
    :cond_0
    const/16 v5, 0x8

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1798
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1799
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1800
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v4

    .line 1802
    .local v4, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1803
    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1804
    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1805
    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-direct {p0, v4, v7, v5}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 1807
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 1808
    .local v3, response:Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1809
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 1810
    .local v2, id:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1811
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    .end local v2           #id:I
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityEventIfQueryDone(I)V
    .locals 2
    .parameter "token"

    .prologue
    .line 587
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 588
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEvent()V

    .line 591
    :cond_0
    return-void
.end method

.method private setDialogSize(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 2541
    const v0, 0x7f0a0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 2542
    const v0, 0x7f0a0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 2543
    return-void
.end method

.method private setSNSData(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 10
    .parameter "view"
    .parameter "tv"

    .prologue
    .line 2163
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->initialize(Landroid/content/Context;)Z

    .line 2166
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v9, 0x14

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2168
    .local v0, accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2170
    .local v7, userId:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->isAccountTypeSupported(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2171
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2174
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 2176
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v2, v8

    .line 2178
    .local v2, calendarId:I
    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getBirthdayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2180
    .local v1, birthday:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2182
    const-string v8, " "

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2183
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2187
    :cond_0
    const/4 v5, 0x1

    .line 2189
    .local v5, pad:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 2192
    .local v6, size:I
    const v8, 0x7f100094

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2193
    .local v4, im:Landroid/widget/ImageView;
    if-eqz v4, :cond_1

    .line 2194
    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2195
    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2196
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2197
    new-instance v8, Lcom/android/calendar/EventInfoFragment$13;

    invoke-direct {v8, p0, v0, v7}, Lcom/android/calendar/EventInfoFragment$13;-><init>(Lcom/android/calendar/EventInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2214
    .end local v1           #birthday:Ljava/lang/String;
    .end local v2           #calendarId:I
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #im:Landroid/widget/ImageView;
    .end local v5           #pad:I
    .end local v6           #size:I
    :cond_1
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 2139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2140
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2143
    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2151
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v1, :cond_0

    const v1, 0x7f100015

    if-ne p2, v1, :cond_0

    .line 2152
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/EventInfoFragment;->setSNSData(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 2218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2219
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2222
    :cond_0
    return-void
.end method

.method private static spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z
    .locals 7
    .parameter "spanText"
    .parameter "spanList"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x0

    .line 1774
    if-ne p2, p3, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v6

    .line 1778
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1779
    .local v5, span:Landroid/text/style/URLSpan;
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1780
    .local v2, existingStart:I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1781
    .local v1, existingEnd:I
    if-lt p2, v2, :cond_2

    if-lt p2, v1, :cond_3

    :cond_2
    if-le p3, v2, :cond_4

    if-gt p3, v1, :cond_4

    .line 1783
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 1778
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateAddReminderBtnVisibility()V
    .locals 2

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    if-lt v0, v1, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2593
    :goto_0
    return-void

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAttendees(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const v3, 0x7f10009e

    const/4 v2, 0x0

    .line 1941
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeesView;->clearAttendees()V

    .line 1944
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1945
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1946
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1947
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 1948
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/AttendeesView;->setEnabled(Z)V

    .line 1949
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1954
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->hasEmailableAttendees()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1955
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1956
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1967
    :cond_0
    :goto_1
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1959
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->hasEmailableOrganizer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1960
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1961
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1965
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_1
.end method

.method private updateCalendar(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 1840
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 1841
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    .line 1842
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1843
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1844
    .local v11, tempAccount:Ljava/lang/String;
    if-nez v11, :cond_0

    const-string v11, ""

    .end local v11           #tempAccount:Ljava/lang/String;
    :cond_0
    iput-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 1845
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    .line 1846
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    .line 1848
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1851
    .local v10, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "visible=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "1"

    aput-object v12, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 1855
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    .line 1857
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    const-string v1, "calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 1862
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1863
    const v0, 0x7f100075

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1864
    const v0, 0x7f10009c

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1868
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    .line 1869
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    .line 1872
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    .line 1873
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    .line 1876
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_2

    .line 1878
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1879
    .local v8, b:Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1880
    new-instance v0, Lcom/android/calendar/EventInfoFragment$12;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$12;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    .end local v8           #b:Landroid/view/View;
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_3

    .line 1897
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1898
    .local v9, button:Landroid/view/View;
    if-eqz v9, :cond_3

    .line 1899
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1900
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1903
    .end local v9           #button:Landroid/view/View;
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-eqz v0, :cond_4

    .line 1904
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1905
    .restart local v9       #button:Landroid/view/View;
    if-eqz v9, :cond_4

    .line 1906
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1907
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1911
    .end local v9           #button:Landroid/view/View;
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_7

    .line 1913
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1919
    .end local v10           #displayName:Ljava/lang/String;
    :cond_7
    :goto_6
    return-void

    .line 1845
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1866
    .restart local v10       #displayName:Ljava/lang/String;
    :cond_9
    const v0, 0x7f10009c

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 1868
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1869
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1872
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1873
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 1916
    .end local v10           #displayName:Ljava/lang/String;
    :cond_e
    const v0, 0x7f100033

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1917
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    goto :goto_6
.end method

.method private updateCustomAppButton()V
    .locals 15

    .prologue
    .line 1399
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f1000a1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1400
    .local v8, launchButton:Landroid/widget/Button;
    if-nez v8, :cond_1

    .line 1466
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f1000a0

    const/16 v13, 0x8

    invoke-direct {p0, v11, v12, v13}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1467
    :goto_1
    return-void

    .line 1403
    :cond_1
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v12, 0x11

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, customAppPackage:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v12, 0x12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, customAppUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1409
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1410
    .local v9, pm:Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_0

    .line 1415
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v0, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1416
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 1422
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1423
    .local v10, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

    invoke-direct {v6, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1424
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    const-string v11, "customAppUri"

    invoke-virtual {v6, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const-string v11, "beginTime"

    iget-wide v12, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1429
    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1432
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1433
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 1435
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1436
    .local v2, d:[Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    sget v14, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1437
    const/4 v11, 0x1

    aget-object v11, v2, v11

    const/4 v12, 0x2

    aget-object v12, v2, v12

    const/4 v13, 0x3

    aget-object v13, v2, v13

    invoke-virtual {v8, v4, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1440
    .end local v2           #d:[Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1441
    .local v7, label:Ljava/lang/CharSequence;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1442
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    :cond_3
    new-instance v11, Lcom/android/calendar/EventInfoFragment$11;

    invoke-direct {v11, p0, v6}, Lcom/android/calendar/EventInfoFragment$11;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v11, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v12, 0x7f1000a0

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 1418
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #label:Ljava/lang/CharSequence;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1419
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 1443
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #label:Ljava/lang/CharSequence;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_4
    if-nez v4, :cond_3

    goto/16 :goto_0
.end method

.method private updateEvent(Landroid/view/View;)V
    .locals 28
    .parameter "view"

    .prologue
    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1285
    .local v11, context:Landroid/content/Context;
    if-eqz v11, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1290
    .local v16, eventName:Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1291
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1294
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1296
    .local v20, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1297
    .local v13, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1298
    .local v21, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1300
    .local v18, eventTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1304
    if-eqz v16, :cond_4

    .line 1305
    const v3, 0x7f100015

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v3, v2}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1310
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 1312
    .local v9, localTimezone:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 1313
    .local v23, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    invoke-static/range {v3 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 1316
    .local v14, displayedDatetime:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1317
    .local v15, displayedTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-nez v3, :cond_5

    .line 1318
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-object/from16 v0, v18

    invoke-static {v3, v4, v9, v0}, Lcom/android/calendar/Utils;->getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1322
    :cond_5
    if-nez v15, :cond_c

    .line 1323
    const v3, 0x7f100098

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1336
    :goto_2
    const/16 v22, 0x0

    .line 1337
    .local v22, repeatString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1338
    new-instance v17, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 1339
    .local v17, eventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1340
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v12, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v12, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v3, :cond_6

    .line 1343
    const-string v3, "UTC"

    iput-object v3, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1345
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/calendarcommon2/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 1346
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon2/EventRecurrence;)Ljava/lang/String;

    move-result-object v22

    .line 1348
    .end local v12           #date:Landroid/text/format/Time;
    .end local v17           #eventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    :cond_7
    if-nez v22, :cond_d

    .line 1349
    const v3, 0x7f100099

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :goto_3
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 1359
    :cond_8
    const v3, 0x7f100017

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1387
    :cond_9
    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-virtual {v3, v13}, Lcom/android/calendar/ExpandableTextView;->setText(Ljava/lang/String;)V

    .line 1392
    :cond_a
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->updateCustomAppButton()V

    goto/16 :goto_0

    .line 1294
    .end local v9           #localTimezone:Ljava/lang/String;
    .end local v13           #description:Ljava/lang/String;
    .end local v14           #displayedDatetime:Ljava/lang/String;
    .end local v15           #displayedTimezone:Ljava/lang/String;
    .end local v18           #eventTimezone:Ljava/lang/String;
    .end local v20           #location:Ljava/lang/String;
    .end local v21           #rRule:Ljava/lang/String;
    .end local v22           #repeatString:Ljava/lang/String;
    .end local v23           #resources:Landroid/content/res/Resources;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1325
    .restart local v9       #localTimezone:Ljava/lang/String;
    .restart local v13       #description:Ljava/lang/String;
    .restart local v14       #displayedDatetime:Ljava/lang/String;
    .restart local v15       #displayedTimezone:Ljava/lang/String;
    .restart local v18       #eventTimezone:Ljava/lang/String;
    .restart local v20       #location:Ljava/lang/String;
    .restart local v21       #rRule:Ljava/lang/String;
    .restart local v23       #resources:Landroid/content/res/Resources;
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v26

    .line 1326
    .local v26, timezoneIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1327
    new-instance v24, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1328
    .local v24, sb:Landroid/text/SpannableStringBuilder;
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f080044

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1330
    .local v27, transparentColorSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1332
    const v3, 0x7f100098

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1351
    .end local v24           #sb:Landroid/text/SpannableStringBuilder;
    .end local v26           #timezoneIndex:I
    .end local v27           #transparentColorSpan:Landroid/text/style/ForegroundColorSpan;
    .restart local v22       #repeatString:Ljava/lang/String;
    :cond_d
    const v3, 0x7f100099

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v3, v2}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1361
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    move-object/from16 v25, v0

    .line 1362
    .local v25, textView:Landroid/widget/TextView;
    if-eqz v25, :cond_9

    .line 1363
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1364
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    :try_start_0
    invoke-static/range {v25 .. v25}, Lcom/android/calendar/EventInfoFragment;->linkifyTextView(Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_5
    new-instance v3, Lcom/android/calendar/EventInfoFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EventInfoFragment$10;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_4

    .line 1367
    :catch_0
    move-exception v19

    .line 1369
    .local v19, ex:Ljava/lang/Exception;
    const-string v3, "EventInfoFragment"

    const-string v4, "Linkification failed"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private updateMenu()V
    .locals 4

    .prologue
    .line 1925
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 1938
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f1000d1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1929
    .local v0, delete:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f1000d0

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1930
    .local v1, edit:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1931
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1932
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1934
    :cond_2
    if-eqz v1, :cond_0

    .line 1935
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1936
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateResponse(JJI)V
    .locals 9
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1197
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1199
    .local v4, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    const-string v0, "attendeeEmail"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_0
    const-string v0, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1207
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 1209
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 903
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUIReminder()V
    .locals 14

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 2559
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoFragment;->removeDuplicate(Ljava/util/ArrayList;)V

    .line 2560
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f100080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 2561
    .local v12, parent:Landroid/widget/LinearLayout;
    if-eqz v12, :cond_0

    .line 2562
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2565
    :cond_0
    iget-object v13, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 2566
    .local v13, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2567
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2568
    .local v8, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2575
    .end local v8           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2576
    .restart local v8       #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_1

    .line 2580
    .end local v8           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_2
    return-void
.end method


# virtual methods
.method public eventsChanged()V
    .locals 0

    .prologue
    .line 2306
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 2538
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 2531
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 2535
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 2310
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2315
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 2317
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->reloadEvents()V

    .line 2319
    :cond_0
    return-void
.end method

.method public initReminders(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 2004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2006
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2007
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2008
    .local v14, minutes:I
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2010
    .local v13, method:I
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-static {v14, v13}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2015
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v14, v13}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2019
    .end local v13           #method:I
    .end local v14           #minutes:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2021
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    if-eqz v1, :cond_3

    .line 2054
    :cond_2
    :goto_1
    return-void

    .line 2027
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v2, 0x7f100080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 2029
    .local v15, parent:Landroid/widget/LinearLayout;
    if-eqz v15, :cond_4

    .line 2030
    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2032
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2036
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eqz v1, :cond_2

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 2039
    .local v16, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2040
    .local v9, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 2046
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2047
    .restart local v9       #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v10, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v11}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_3

    .line 2051
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 634
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 636
    new-instance v0, Lcom/android/calendar/EventInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$3;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 653
    if-eqz p1, :cond_0

    .line 654
    const-string v0, "key_fragment_is_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 655
    const-string v0, "key_window_style"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 659
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 662
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    .line 663
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 725
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 726
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 727
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 729
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 732
    :cond_0
    new-instance v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    .line 733
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_1

    .line 734
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 736
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 704
    invoke-static {p2}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 705
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 2330
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2331
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2332
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2333
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 2335
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2336
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1038
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1040
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_2

    .line 1041
    :cond_1
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1042
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 1043
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateMenu()V

    .line 1045
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v1, v2}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getEventInfoOptionsMenuExt(Landroid/content/Context;J)Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    .line 1046
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    invoke-interface {v0, p1}, Lcom/mediatek/calendar/extension/IOptionsMenuExt;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1049
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 742
    if-eqz p3, :cond_0

    .line 743
    const-string v1, "key_fragment_is_dialog"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 744
    const-string v1, "key_window_style"

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 746
    const-string v1, "key_delete_dialog_visible"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 749
    const-string v1, "key_attendee_response"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 751
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    const-string v2, "key_which_events"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 752
    const-string v1, "key_original_reminders"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 754
    const-string v1, "key_reminders"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSavedReminders:Ljava/util/ArrayList;

    .line 757
    const-string v1, "key_which_delete"

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    .line 760
    :cond_0
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 761
    const v1, 0x7f040028

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100092

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 766
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    .line 767
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    .line 768
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    .line 769
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 770
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ExpandableTextView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    .line 771
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    .line 772
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/AttendeesView;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    .line 773
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090006

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    .line 775
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 777
    const-string v1, "key_event_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 778
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 779
    const-string v1, "key_start_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 780
    const-string v1, "key_end_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const-string v2, "Alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    .line 784
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 785
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/calendar/EventInfoFragment$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoFragment$4;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 812
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 813
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 814
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 822
    .local v10, b:Landroid/view/View;
    new-instance v1, Lcom/android/calendar/EventInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$5;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v1, :cond_2

    .line 839
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 840
    .local v11, c:Landroid/view/View;
    new-instance v1, Lcom/android/calendar/EventInfoFragment$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$6;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    .end local v11           #c:Landroid/view/View;
    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v1, :cond_5

    .line 851
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f10009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    .line 856
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 857
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->emailAttendeesButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/calendar/EventInfoFragment$7;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventInfoFragment$7;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v2, 0x7f100081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    .line 867
    new-instance v9, Lcom/android/calendar/EventInfoFragment$8;

    invoke-direct {v9, p0}, Lcom/android/calendar/EventInfoFragment$8;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    .line 874
    .local v9, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAddReminderBtn:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 879
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_default_reminder"

    const-string v2, "-1"

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 881
    .local v12, defaultReminderString:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    .line 882
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    .line 884
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v1

    .line 763
    .end local v9           #addReminderOnClickListener:Landroid/view/View$OnClickListener;
    .end local v10           #b:Landroid/view/View;
    .end local v12           #defaultReminderString:Ljava/lang/String;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    :cond_7
    const v1, 0x7f040027

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 783
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onDeleteStarted()V
    .locals 1

    .prologue
    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 2515
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1140
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1141
    return-void
.end method

.method public onDestroyView()V
    .locals 7

    .prologue
    const v6, 0x7f0c0066

    const/4 v5, 0x0

    .line 1106
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mNeedSaveEvent:Z

    if-eqz v2, :cond_0

    .line 1107
    iput-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mNeedSaveEvent:Z

    .line 1108
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveResponse()Z

    move-result v1

    .line 1112
    .local v1, responseSaved:Z
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 1117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1126
    .end local v1           #responseSaved:Z
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 1127
    return-void

    .line 1119
    .restart local v1       #responseSaved:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveReminders()Z

    move-result v0

    .line 1120
    .local v0, remindersSaved:Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1121
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
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
    .line 721
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1055
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v2, :cond_0

    .line 1100
    :goto_0
    return v0

    .line 1066
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    .line 1067
    .local v10, itemId:I
    const v2, 0x102002c

    if-ne v10, v2, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 1069
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 1070
    goto :goto_0

    .line 1071
    :cond_1
    const v2, 0x7f1000d0

    if-ne v10, v2, :cond_4

    .line 1073
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveReminders()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1074
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0066

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1077
    :cond_2
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1078
    .local v11, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {v9, v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1079
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "beginTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1080
    const-string v0, "endTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1081
    const-string v0, "allDay"

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1082
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1083
    const-string v0, "editMode"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1084
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1085
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1100
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1086
    :cond_4
    const v0, 0x7f1000d1

    if-ne v10, v0, :cond_5

    .line 1087
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 1089
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0, p0}, Lcom/android/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 1090
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1091
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 1092
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_1

    .line 1096
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_3

    .line 1097
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOptionsMenuExt:Lcom/mediatek/calendar/extension/IOptionsMenuExt;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/calendar/extension/IOptionsMenuExt;->onOptionsItemSelected(I)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2264
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2268
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/android/calendar/DeleteEventHelper;->getWhichDelete()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    .line 2271
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/android/calendar/DeleteEventHelper;->dismissAlertDialog()V

    .line 2272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 2275
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2276
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 2280
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2281
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v1, :cond_0

    .line 2282
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 2283
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 2286
    :cond_0
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v1, :cond_1

    .line 2287
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    .line 2290
    :cond_1
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2291
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    if-eqz v1, :cond_2

    .line 2292
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2295
    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v1, :cond_4

    .line 2296
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 2299
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2300
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget v7, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    .line 2302
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 1007
    const-string v1, "key_event_id"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1008
    const-string v1, "key_start_millis"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1009
    const-string v1, "key_end_millis"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1010
    const-string v1, "key_fragment_is_dialog"

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1011
    const-string v1, "key_window_style"

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    const-string v1, "key_delete_dialog_visible"

    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    if-eqz v1, :cond_0

    .line 1016
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 1022
    .local v0, response:I
    :goto_0
    const-string v1, "key_attendee_response"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    const-string v1, "key_which_events"

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    const-string v1, "key_original_reminders"

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1025
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 1027
    const-string v1, "key_reminders"

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1030
    const-string v1, "key_which_delete"

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mWhichDelete:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1033
    return-void

    .line 1017
    .end local v0           #response:I
    :cond_0
    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v1, :cond_1

    .line 1018
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .restart local v0       #response:I
    goto :goto_0

    .line 1020
    .end local v0           #response:I
    :cond_1
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .restart local v0       #response:I
    goto :goto_0
.end method

.method public reloadEvents()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2322
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    return-void
.end method

.method public restoreReminders(Ljava/util/ArrayList;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2617
    .local p1, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2618
    .local v18, tempReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2619
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2620
    .local v14, len:I
    if-nez v14, :cond_0

    .line 2662
    :goto_0
    return-void

    .line 2623
    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v14, :cond_2

    .line 2624
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v16

    .line 2625
    .local v16, minutes:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v15

    .line 2627
    .local v15, method:I
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2632
    :cond_1
    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2636
    .end local v15           #method:I
    .end local v16           #minutes:I
    :cond_2
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v2, 0x7f100080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2640
    .local v17, parent:Landroid/widget/LinearLayout;
    if-eqz v17, :cond_3

    .line 2641
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2643
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2648
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2649
    .local v9, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_3

    .line 2655
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2656
    .restart local v9       #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v10, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v11}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_4

    .line 2660
    .end local v9           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public setDialogParams(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "minTop"

    .prologue
    .line 694
    iput p1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 695
    iput p2, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 696
    iput p3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    .line 697
    return-void
.end method

.method public setNeedSaveEvent(Z)V
    .locals 0
    .parameter "need"

    .prologue
    .line 2608
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mNeedSaveEvent:Z

    .line 2609
    return-void
.end method

.method public showContactInfo(Lcom/android/calendar/CalendarEventModel$Attendee;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "attendee"
    .parameter "rect"

    .prologue
    const/4 v10, 0x0

    .line 2232
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2233
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 2234
    .local v0, address:Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2236
    .local v1, dataUri:Landroid/net/Uri;
    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2238
    .local v3, lookupUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, p2, v3, v9, v10}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 2259
    :goto_0
    return-void

    .line 2244
    :cond_0
    const-string v8, "mailto"

    invoke-static {v8, v0, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2245
    .local v4, mailUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2248
    .local v2, intent:Landroid/content/Intent;
    new-instance v6, Landroid/text/util/Rfc822Token;

    iget-object v8, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {v6, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    .local v6, sender:Landroid/text/util/Rfc822Token;
    const-string v8, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2252
    iget-object v7, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 2253
    .local v7, senderPersonal:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2254
    const-string v8, "name"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2257
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateResponse(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const v9, 0x7f10009d

    .line 2109
    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x14

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2110
    .local v0, accountType:Ljava/lang/String;
    const-string v5, "LOCAL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2113
    .local v2, isLocalAccount:Z
    iget-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    :cond_0
    iget-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    if-eqz v5, :cond_2

    :cond_1
    if-nez v2, :cond_2

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 2116
    :cond_2
    const/16 v5, 0x8

    invoke-direct {p0, p1, v9, v5}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2136
    :goto_0
    return-void

    .line 2120
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, p1, v9, v5}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2124
    iget v5, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    if-eqz v5, :cond_4

    .line 2125
    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 2132
    .local v4, response:I
    :goto_1
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 2133
    .local v1, buttonToCheck:I
    const v5, 0x7f10006f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 2134
    .local v3, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 2135
    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 2126
    .end local v1           #buttonToCheck:I
    .end local v3           #radioGroup:Landroid/widget/RadioGroup;
    .end local v4           #response:I
    :cond_4
    iget v5, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v5, :cond_5

    .line 2127
    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .restart local v4       #response:I
    goto :goto_1

    .line 2129
    .end local v4           #response:I
    :cond_5
    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .restart local v4       #response:I
    goto :goto_1
.end method
