.class public Lcom/android/calendar/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayView$ScrollInterpolator;,
        Lcom/android/calendar/DayView$CalendarGestureListener;,
        Lcom/android/calendar/DayView$UpdateCurrentTime;,
        Lcom/android/calendar/DayView$DismissPopup;,
        Lcom/android/calendar/DayView$ContinueScroll;,
        Lcom/android/calendar/DayView$ContextMenuHandler;,
        Lcom/android/calendar/DayView$GotoBroadcaster;,
        Lcom/android/calendar/DayView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static final ACCESS_LEVEL_DELETE:I = 0x1

.field private static final ACCESS_LEVEL_EDIT:I = 0x2

.field private static final ACCESS_LEVEL_NONE:I = 0x0

.field private static ALLDAY_TOP_MARGIN:I = 0x0

.field private static ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I = 0x0

.field private static AMPM_TEXT_SIZE:F = 0.0f

.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final ANIMATION_SECONDARY_DURATION:J = 0xc8L

.field private static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDAR_APPUPDATE:Ljava/lang/String; = "AppUpdate"

.field private static CALENDAR_COLOR_SQUARE_SIZE:I = 0x0

.field private static final CLICK_DISPLAY_DURATION:I = 0x32

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I = 0x0

.field private static CURRENT_TIME_LINE_TOP_OFFSET:I = 0x0

.field private static DATE_HEADER_FONT_SIZE:F = 0.0f

.field private static final DAY_GAP:I = 0x1

.field private static DAY_HEADER_BOTTOM_MARGIN:I = 0x0

.field private static DAY_HEADER_FONT_SIZE:F = 0.0f

.field private static DAY_HEADER_HEIGHT:I = 0x0

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I = 0x0

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:I = 0x0

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I = 0x0

.field private static DAY_HEADER_RIGHT_MARGIN:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static DEFAULT_CELL_HEIGHT:I = 0x0

.field private static final EVENTS_CROSS_FADE_DURATION:I = 0x190

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I = 0x0

.field private static EVENT_LINE_PADDING:I = 0x0

.field private static EVENT_RECT_ALPHA:I = 0x0

.field private static EVENT_RECT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_RECT_LEFT_MARGIN:I = 0x0

.field private static EVENT_RECT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_RECT_STROKE_WIDTH:I = 0x0

.field private static EVENT_RECT_TOP_MARGIN:I = 0x0

.field private static EVENT_SQUARE_WIDTH:I = 0x0

.field private static EVENT_TEXT_BOTTOM_MARGIN:I = 0x0

.field private static EVENT_TEXT_FONT_SIZE:F = 0.0f

.field private static EVENT_TEXT_LEFT_MARGIN:I = 0x0

.field private static EVENT_TEXT_RIGHT_MARGIN:I = 0x0

.field private static EVENT_TEXT_TOP_MARGIN:I = 0x0

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I = 0x0

.field private static final FROM_ABOVE:I = 0x1

.field private static final FROM_BELOW:I = 0x2

.field private static final FROM_LEFT:I = 0x4

.field private static final FROM_NONE:I = 0x0

.field private static final FROM_RIGHT:I = 0x8

.field private static final GOTO_SCROLL_DURATION:I = 0xc8

.field private static final GRID_LINE_INNER_WIDTH:F = 1.0f

.field private static GRID_LINE_LEFT_MARGIN:F = 0.0f

.field private static HOURS_LEFT_MARGIN:I = 0x0

.field private static HOURS_MARGIN:I = 0x0

.field private static HOURS_RIGHT_MARGIN:I = 0x0

.field private static HOURS_TEXT_SIZE:F = 0.0f

.field private static HOURS_TOP_MARGIN:I = 0x0

.field private static final HOUR_GAP:I = 0x1

.field private static final INVALID_EVENT_ID:J = -0x1L

.field private static MAX_CELL_HEIGHT:I = 0x0

.field private static final MAX_EVENT_TEXT_LEN:I = 0x1f4

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I = 0x0

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I = 0x0

.field private static final MENU_AGENDA:I = 0x2

.field private static final MENU_DAY:I = 0x3

.field private static final MENU_EVENT_CREATE:I = 0x6

.field private static final MENU_EVENT_DELETE:I = 0x8

.field private static final MENU_EVENT_EDIT:I = 0x7

.field private static final MENU_EVENT_SHARE:I = 0x9

.field private static final MENU_EVENT_VIEW:I = 0x5

.field static final MILLIS_PER_DAY:I = 0x5265c00

.field static final MILLIS_PER_HOUR:I = 0x36ee80

.field static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field private static MIN_CELL_WIDTH_FOR_TEXT:I = 0x0

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static MIN_HOURS_HEIGHT:I = 0x0

.field private static MIN_HOURS_WIDTH:I = 0x0

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F = 0.0f

.field private static MIN_Y_SPAN:I = 0x0

.field private static final MORE_EVENTS_MAX_ALPHA:I = 0x4c

.field private static MULTI_DAY_HEADER_HEIGHT:I = 0x0

.field private static NEW_EVENT_HINT_FONT_SIZE:I = 0x0

.field private static NEW_EVENT_MARGIN:I = 0x0

.field private static NEW_EVENT_MAX_LENGTH:I = 0x0

.field private static NEW_EVENT_WIDTH:I = 0x0

.field private static NORMAL_FONT_SIZE:F = 0.0f

.field private static ONE_DAY_HEADER_HEIGHT:I = 0x0

.field private static final PERIOD_SPACE:Ljava/lang/String; = ". "

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static SINGLE_ALLDAY_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DayView"

.field private static THEME_ALPHA_GRID_AREA_SELECTED:I = 0x0

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static final UPDATE_CURRENT_TIME_DELAY:I = 0x493e0

.field private static mBgColor:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mClickedColor:I

.field private static mEventTextColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mFutureBgColor:I

.field private static mFutureBgColorRes:I

.field private static mHorizontalSnapBackThreshold:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mNewEventHintColor:I

.field private static mOnDownDelay:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mScaledPagingTouchSlop:I

.field private static mShowAllAllDayEvents:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;

.field private static mUseExpandIcon:Z

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private final OVERFLING_DISTANCE:I

.field private final drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmPmLeftMargin:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field mBaseDate:Landroid/text/format/Time;

.field private final mBold:Landroid/graphics/Typeface;

.field private mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

.field private mCallEdgeEffectOnAbsorb:Z

.field private final mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field private final mClearClick:Ljava/lang/Runnable;

.field private mClickedEvent:Lcom/android/calendar/Event;

.field private mClickedYLocation:I

.field protected final mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private final mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

.field private final mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

.field private final mController:Lcom/android/calendar/CalendarController;

.field private final mCreateNewEventString:Ljava/lang/String;

.field private mCurrentTime:Landroid/text/format/Time;

.field protected final mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

.field protected final mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mDateStrWidth:I

.field private mDateStrWidth2letter:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private final mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private final mDestRect:Landroid/graphics/Rect;

.field private final mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

.field private mDownTouchTime:J

.field private mEarliestStartHour:[I

.field private final mEdgeEffectBottom:Landroid/widget/EdgeEffect;

.field private final mEdgeEffectTop:Landroid/widget/EdgeEffect;

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private final mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsAlpha:I

.field private mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

.field private final mExpandAllDayRect:Landroid/graphics/Rect;

.field protected final mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mGestureCenterHour:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private final mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mIsAccessibilityEnabled:Z

.field private mIsSelectionFocusShow:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

.field private mLastSelectionDayForAccessibility:I

.field private mLastSelectionHourForAccessibility:I

.field private mLastVelocity:F

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mLoadedFirstJulianDay:I

.field private final mLongPressItems:[Ljava/lang/CharSequence;

.field private mLongPressTitle:Ljava/lang/String;

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field private final mNewEventHintString:Ljava/lang/String;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field protected mPaused:Z

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private final mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mRecalCenterHour:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mSavedClickedEvent:Lcom/android/calendar/Event;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEventForAccessibility:Lcom/android/calendar/Event;

.field private final mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionDayForAccessibility:I

.field private mSelectionHour:I

.field private mSelectionHourForAccessibility:I

.field private mSelectionMode:I

.field private final mSelectionPaint:Landroid/graphics/Paint;

.field private final mSelectionRect:Landroid/graphics/Rect;

.field private final mSetClick:Ljava/lang/Runnable;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTodayAnimator:Landroid/animation/ObjectAnimator;

.field private final mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

.field protected final mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchExplorationEnabled:Z

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private final mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private final mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x4140

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 142
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 143
    const/16 v0, 0x96

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 144
    const/16 v0, 0x64

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 146
    const/16 v0, 0xe6

    sput v0, Lcom/android/calendar/DayView;->THEME_ALPHA_GRID_AREA_SELECTED:I

    .line 148
    const/16 v0, 0xa0

    sput v0, Lcom/android/calendar/DayView;->EVENT_RECT_ALPHA:I

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v5

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 188
    const/16 v0, 0x80

    sput v0, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 224
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    .line 385
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 391
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 398
    const/high16 v0, 0x41e0

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 403
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 409
    const/16 v0, 0xb4

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    .line 410
    sput v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 412
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 414
    sput v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 415
    sput v4, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 416
    sput v6, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 417
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 418
    sput v6, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 419
    sput v4, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 420
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 422
    sput v6, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 423
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 433
    sput v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 434
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 435
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 436
    sput v6, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 437
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 438
    const/high16 v0, 0x4160

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 439
    const/high16 v0, 0x4200

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 440
    sput v7, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 441
    sput v7, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 442
    sput v7, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 443
    const/high16 v0, 0x4110

    sput v0, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 444
    const/16 v0, 0x60

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 445
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 448
    const/high16 v0, 0x41c0

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 449
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 450
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 451
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 452
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 453
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 454
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 455
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 456
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 457
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 458
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 459
    sput v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 460
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 461
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 462
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 463
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 465
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 467
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 468
    sput v6, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 469
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 488
    const/16 v0, 0x4c

    sput v0, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 497
    sput v3, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 498
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 501
    sput v3, Lcom/android/calendar/DayView;->mScaledPagingTouchSlop:I

    .line 538
    sput-boolean v5, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    .line 542
    const/16 v0, 0x2d

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 546
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 550
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 566
    sput-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 602
    sput v3, Lcom/android/calendar/DayView;->sCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V
    .locals 8
    .parameter "context"
    .parameter "controller"
    .parameter "viewSwitcher"
    .parameter "eventLoader"
    .parameter "numDays"

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 684
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 151
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 190
    new-instance v2, Lcom/android/calendar/DayView$ContinueScroll;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    .line 197
    new-instance v2, Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$UpdateCurrentTime;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    .line 200
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    .line 202
    iput v3, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    .line 219
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 226
    new-instance v2, Lcom/android/calendar/DayView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$1;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 238
    new-instance v2, Lcom/android/calendar/DayView$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$2;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    .line 248
    new-instance v2, Lcom/android/calendar/DayView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$3;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    .line 262
    new-instance v2, Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$TodayAnimatorListener;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    .line 309
    new-instance v2, Lcom/android/calendar/DayView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$4;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 339
    iput-object v6, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 340
    iput-object v6, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 360
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 361
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 364
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 366
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 367
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 368
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 378
    new-instance v2, Lcom/android/calendar/DayView$DismissPopup;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$DismissPopup;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    .line 380
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 490
    iput v7, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 496
    iput v3, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 507
    iput v7, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 511
    iput v7, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 513
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 520
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 530
    iput v5, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 534
    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 562
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 568
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 569
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 578
    iput v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 591
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 604
    new-instance v2, Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    .line 629
    iput v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 639
    iput v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 641
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 647
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 648
    iput v5, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 659
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 661
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 674
    iput-object v6, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 675
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 676
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 680
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/calendar/DayView;->mAmPmLeftMargin:I

    .line 2076
    new-instance v2, Lcom/android/calendar/DayView$5;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$5;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 2622
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mIsSelectionFocusShow:Z

    .line 3699
    const-string v2, "[\t\n],"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 685
    iput-object p1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    .line 686
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    .line 689
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    .line 690
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    .line 691
    iput p5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 693
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 694
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 695
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 696
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 697
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 698
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 699
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 700
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 701
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 702
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 703
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 705
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v4, :cond_2

    .line 706
    const v0, 0x7f0a0008

    .line 710
    .local v0, eventTextSizeId:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 711
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 712
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 713
    sget v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    sput v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 714
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 715
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 716
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 717
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 719
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 721
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 722
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 723
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 725
    sget v2, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    .line 727
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/calendar/DayView;->mScale:F

    .line 728
    sget v2, Lcom/android/calendar/DayView;->mScale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 729
    sget v2, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 730
    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 731
    sget v2, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 733
    sget v2, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 734
    sget v2, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 735
    sget v2, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 736
    sget v2, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 737
    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 738
    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 740
    sget v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 741
    sget v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 743
    sget v2, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 744
    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 745
    sget v2, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 746
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 747
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 748
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 749
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 750
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 751
    sget v2, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 752
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 753
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 754
    sget v2, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 755
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 756
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 757
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 758
    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 759
    sget v2, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 760
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 761
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 762
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 765
    :cond_0
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v3, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 766
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v4, :cond_3

    sget v2, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    :goto_1
    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 768
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 769
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 771
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 772
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 774
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    .line 776
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getCalendarTheme(Landroid/content/Context;)Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    .line 778
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 781
    iput-object p4, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 782
    new-instance v2, Lcom/android/calendar/EventGeometry;

    invoke-direct {v2}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 783
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v3, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 784
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 785
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v2, v4}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 786
    new-array v2, v4, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    .line 789
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 790
    new-instance v2, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v2, p1, v6, v5}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 791
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 792
    iput-object p2, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    .line 793
    iput-object p3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 794
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/DayView$CalendarGestureListener;

    invoke-direct {v3, p0}, Lcom/android/calendar/DayView$CalendarGestureListener;-><init>(Lcom/android/calendar/DayView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 795
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 796
    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    if-nez v2, :cond_1

    .line 797
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v3, "preferences_default_cell_height"

    sget v4, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 800
    :cond_1
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 801
    new-instance v2, Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$ScrollInterpolator;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    .line 802
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    .line 803
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    .line 804
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 805
    .local v1, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mScaledPagingTouchSlop:I

    .line 806
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mOnDownDelay:I

    .line 807
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    .line 809
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->init(Landroid/content/Context;)V

    .line 812
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mAmPmLeftMargin:I

    .line 813
    return-void

    .line 708
    .end local v0           #eventTextSizeId:I
    .end local v1           #vc:Landroid/view/ViewConfiguration;
    :cond_2
    const v0, 0x7f0a0009

    .restart local v0       #eventTextSizeId:I
    goto/16 :goto_0

    .line 766
    :cond_3
    sget v2, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1104()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/DayView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/calendar/DayView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    return p0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/calendar/DayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return v0
.end method

.method static synthetic access$3302(Lcom/android/calendar/DayView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return p1
.end method

.method static synthetic access$3400(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/calendar/DayView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mClickedYLocation:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/DayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$5100(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    return-void
.end method

.method private adjustHourSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2017
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 2018
    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 2019
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_0

    .line 2020
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2021
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 2025
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 2026
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 2031
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 2039
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 2040
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 2042
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2043
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 2044
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 2070
    .end local v0           #daynum:I
    :cond_2
    :goto_0
    return-void

    .line 2048
    .restart local v0       #daynum:I
    :cond_3
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 2049
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 2050
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 2051
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 2052
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 2058
    .end local v0           #daynum:I
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_2

    .line 2059
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_5

    .line 2060
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 2061
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 2062
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 2063
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 2066
    :cond_5
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 2067
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1272
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1273
    .local v0, dayOfWeek:I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1274
    .local v1, diff:I
    if-eqz v1, :cond_1

    .line 1275
    if-gez v1, :cond_0

    .line 1276
    add-int/lit8 v1, v1, 0x7

    .line 1278
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1279
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1281
    :cond_1
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V
    .locals 7
    .parameter "b"
    .parameter "calEvent"

    .prologue
    .line 1851
    invoke-virtual {p2}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    const/16 v5, 0x10

    .line 1855
    .local v5, flags:I
    iget-boolean v0, p2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_1

    .line 1856
    or-int/lit16 v5, v5, 0x2002

    .line 1863
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, p2, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 1864
    .local v6, when:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    return-void

    .line 1858
    .end local v6           #when:Ljava/lang/String;
    :cond_1
    or-int/lit8 v5, v5, 0x1

    .line 1859
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    or-int/lit16 v5, v5, 0x80

    goto :goto_0
.end method

.method private calculateDuration(FFF)J
    .locals 8
    .parameter "delta"
    .parameter "width"
    .parameter "velocity"

    .prologue
    .line 5204
    const/high16 v6, 0x4000

    div-float v5, p2, v6

    .line 5205
    .local v5, halfScreenSize:F
    div-float v2, p1, p2

    .line 5206
    .local v2, distanceRatio:F
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v1

    .line 5207
    .local v1, distanceInfluenceForSnapDuration:F
    mul-float v6, v5, v1

    add-float v0, v5, v6

    .line 5209
    .local v0, distance:F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 5210
    const v6, 0x45098000

    invoke-static {v6, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 5218
    const/high16 v6, 0x447a

    div-float v7, v0, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    int-to-long v3, v6

    .line 5225
    .local v3, duration:J
    return-wide v3
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4248
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 4249
    .local v0, in:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 4251
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4253
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 4254
    .local v1, out:Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    .line 4256
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4258
    :cond_1
    return-void
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 3199
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3200
    .local v3, len:I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_1

    .line 3254
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3206
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3207
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3208
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3209
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3210
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3220
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 3221
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3222
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 3224
    :cond_3
    const/4 v4, -0x1

    .line 3225
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 3226
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 3227
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 3228
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3229
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 3230
    .local v8, position:I
    if-ne v8, v10, :cond_6

    .line 3231
    move-object v9, v0

    .line 3236
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 3237
    if-ne v2, v1, :cond_7

    .line 3236
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3232
    .end local v2           #jj:I
    :cond_6
    if-le v8, v4, :cond_4

    .line 3233
    move-object v5, v0

    .line 3234
    move v4, v8

    goto :goto_3

    .line 3240
    .restart local v2       #jj:I
    :cond_7
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 3241
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 3242
    .local v7, neighborPosition:I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_8

    .line 3243
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_5

    .line 3244
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 3245
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_5

    .line 3227
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3249
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_a
    if-eqz v9, :cond_b

    .line 3250
    invoke-direct {p0, v9}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto :goto_0

    .line 3252
    :cond_b
    invoke-direct {p0, v5}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto :goto_0
.end method

.method private computeDayLeftPosition(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 2409
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2410
    .local v0, effectiveWidth:I
    mul-int v1, p1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeEventRelations()V
    .locals 15

    .prologue
    .line 2211
    const/4 v12, 0x0

    .line 2212
    .local v12, maxAllDayEvents:I
    iget-object v5, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 2213
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2215
    .local v11, len:I
    iget v13, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 2216
    .local v6, eventsCount:[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 2217
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_0
    if-ge v9, v11, :cond_8

    .line 2218
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2219
    .local v4, event:Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_0

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_1

    .line 2217
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2222
    :cond_1
    invoke-virtual {v4}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2224
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2225
    .local v7, firstDay:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2226
    .local v10, lastDay:I
    move v1, v7

    .local v1, day:I
    :goto_2
    if-gt v1, v10, :cond_3

    .line 2227
    iget v13, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 2228
    .local v0, count:I
    if-ge v12, v0, :cond_2

    .line 2229
    move v12, v0

    .line 2226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2233
    .end local v0           #count:I
    :cond_3
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2234
    .local v2, daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2235
    .local v3, durationDays:I
    if-gez v2, :cond_4

    .line 2236
    add-int/2addr v3, v2

    .line 2237
    const/4 v2, 0x0

    .line 2239
    :cond_4
    add-int v13, v2, v3

    iget v14, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v13, v14, :cond_5

    .line 2240
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2242
    :cond_5
    move v1, v2

    :goto_3
    if-lez v3, :cond_0

    .line 2243
    iget-object v13, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 2242
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2246
    .end local v1           #day:I
    .end local v2           #daynum:I
    .end local v3           #durationDays:I
    .end local v7           #firstDay:I
    .end local v10           #lastDay:I
    :cond_6
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2247
    .restart local v2       #daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2248
    .local v8, hour:I
    if-ltz v2, :cond_7

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_7

    .line 2249
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 2254
    :cond_7
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2255
    iget v13, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2256
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_0

    .line 2257
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_1

    .line 2261
    .end local v2           #daynum:I
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v8           #hour:I
    :cond_8
    iput v12, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 2262
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 2263
    return-void
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 2012
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 2013
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 2014
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 2903
    const/4 v3, 0x0

    .line 2905
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 2906
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2907
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2908
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2910
    .end local v4           #width:F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2911
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1

    .line 2912
    move v2, p1

    .line 2914
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 45

    .prologue
    .line 3316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3317
    .local v20, len:I
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1

    .line 3598
    :cond_0
    :goto_0
    return-void

    .line 3322
    :cond_1
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 3324
    .local v14, ev:Lcom/android/calendar/Event;
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3325
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3326
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3327
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3322
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3330
    .end local v14           #ev:Lcom/android/calendar/Event;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/calendar/Event;

    .line 3331
    .local v36, startEvent:Lcom/android/calendar/Event;
    const v37, 0x186a0

    .line 3332
    .local v37, startEventDistance1:I
    const v38, 0x186a0

    .line 3333
    .local v38, startEventDistance2:I
    const/16 v30, 0x0

    .line 3338
    .local v30, prevLocation:I
    const/16 v28, 0x0

    .line 3339
    .local v28, prevCenter:I
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 3340
    .local v3, box:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_f

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v32, v0

    .line 3342
    .local v32, prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 3343
    .local v27, prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 3344
    .local v29, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v31, v0

    .line 3348
    .local v31, prevRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    .line 3350
    :cond_3
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .line 3373
    :cond_4
    :goto_2
    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_10

    .line 3375
    const/16 v30, 0x8

    .line 3376
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    .line 3394
    :cond_5
    :goto_3
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_32

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 3397
    .restart local v14       #ev:Lcom/android/calendar/Event;
    iget v0, v14, Lcom/android/calendar/Event;->startTime:I

    move/from16 v39, v0

    .line 3398
    .local v39, startTime:I
    iget v13, v14, Lcom/android/calendar/Event;->endTime:I

    .line 3399
    .local v13, endTime:I
    iget v0, v14, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3400
    .local v17, left:I
    iget v0, v14, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3401
    .local v33, right:I
    iget v0, v14, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 3402
    .local v40, top:I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    .line 3403
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    .line 3405
    :cond_6
    iget v0, v14, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v2, v0

    .line 3406
    .local v2, bottom:I
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-le v2, v0, :cond_7

    .line 3407
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 3420
    :cond_7
    const/16 v41, 0x2710

    .line 3421
    .local v41, upDistanceMin:I
    const/16 v11, 0x2710

    .line 3422
    .local v11, downDistanceMin:I
    const/16 v18, 0x2710

    .line 3423
    .local v18, leftDistanceMin:I
    const/16 v34, 0x2710

    .line 3424
    .local v34, rightDistanceMin:I
    const/16 v42, 0x0

    .line 3425
    .local v42, upEvent:Lcom/android/calendar/Event;
    const/4 v12, 0x0

    .line 3426
    .local v12, downEvent:Lcom/android/calendar/Event;
    const/16 v19, 0x0

    .line 3427
    .local v19, leftEvent:Lcom/android/calendar/Event;
    const/16 v35, 0x0

    .line 3431
    .local v35, rightEvent:Lcom/android/calendar/Event;
    const/4 v9, 0x0

    .line 3432
    .local v9, distance1:I
    const/4 v10, 0x0

    .line 3433
    .local v10, distance2:I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 3434
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 3435
    sub-int v9, v17, v28

    .line 3439
    :cond_8
    :goto_5
    sub-int v10, v40, v27

    .line 3462
    :cond_9
    :goto_6
    move/from16 v0, v37

    if-lt v9, v0, :cond_a

    move/from16 v0, v37

    if-ne v9, v0, :cond_b

    move/from16 v0, v38

    if-ge v10, v0, :cond_b

    .line 3464
    :cond_a
    move-object/from16 v36, v14

    .line 3465
    move/from16 v37, v9

    .line 3466
    move/from16 v38, v10

    .line 3471
    :cond_b
    const/16 v16, 0x0

    .local v16, jj:I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_31

    .line 3472
    move/from16 v0, v16

    if-ne v0, v15, :cond_1d

    .line 3471
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 3357
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 3360
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_4

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 3366
    .end local v27           #prevBottom:I
    .end local v29           #prevLeft:I
    .end local v31           #prevRight:I
    .end local v32           #prevTop:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 3367
    .restart local v32       #prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 3368
    .restart local v27       #prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 3369
    .restart local v29       #prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .restart local v31       #prevRight:I
    goto/16 :goto_2

    .line 3377
    :cond_10
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_11

    .line 3379
    const/16 v30, 0x4

    .line 3380
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3381
    :cond_11
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-gt v0, v1, :cond_12

    .line 3383
    const/16 v30, 0x1

    .line 3384
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3385
    :cond_12
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_5

    .line 3387
    const/16 v30, 0x2

    .line 3388
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3436
    .restart local v2       #bottom:I
    .restart local v9       #distance1:I
    .restart local v10       #distance2:I
    .restart local v11       #downDistanceMin:I
    .restart local v12       #downEvent:Lcom/android/calendar/Event;
    .restart local v13       #endTime:I
    .restart local v14       #ev:Lcom/android/calendar/Event;
    .restart local v17       #left:I
    .restart local v18       #leftDistanceMin:I
    .restart local v19       #leftEvent:Lcom/android/calendar/Event;
    .restart local v33       #right:I
    .restart local v34       #rightDistanceMin:I
    .restart local v35       #rightEvent:Lcom/android/calendar/Event;
    .restart local v39       #startTime:I
    .restart local v40       #top:I
    .restart local v41       #upDistanceMin:I
    .restart local v42       #upEvent:Lcom/android/calendar/Event;
    :cond_13
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    .line 3437
    sub-int v9, v28, v33

    goto/16 :goto_5

    .line 3440
    :cond_14
    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 3441
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 3442
    sub-int v9, v17, v28

    .line 3446
    :cond_15
    :goto_9
    sub-int v10, v32, v2

    goto/16 :goto_6

    .line 3443
    :cond_16
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 3444
    sub-int v9, v28, v33

    goto :goto_9

    .line 3447
    :cond_17
    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 3448
    move/from16 v0, v28

    if-gt v2, v0, :cond_19

    .line 3449
    sub-int v9, v28, v2

    .line 3453
    :cond_18
    :goto_a
    sub-int v10, v17, v31

    goto/16 :goto_6

    .line 3450
    :cond_19
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 3451
    sub-int v9, v40, v28

    goto :goto_a

    .line 3454
    :cond_1a
    const/16 v43, 0x8

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 3455
    move/from16 v0, v28

    if-gt v2, v0, :cond_1c

    .line 3456
    sub-int v9, v28, v2

    .line 3460
    :cond_1b
    :goto_b
    sub-int v10, v29, v33

    goto/16 :goto_6

    .line 3457
    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    .line 3458
    sub-int v9, v40, v28

    goto :goto_b

    .line 3475
    .restart local v16       #jj:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/Event;

    .line 3476
    .local v21, neighbor:Lcom/android/calendar/Event;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3477
    .local v24, neighborLeft:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3478
    .local v25, neighborRight:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v39

    if-gt v0, v1, :cond_25

    .line 3481
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 3482
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    sub-int v8, v39, v43

    .line 3483
    .local v8, distance:I
    move/from16 v0, v41

    if-ge v8, v0, :cond_20

    .line 3484
    move/from16 v41, v8

    .line 3485
    move-object/from16 v42, v21

    .line 3542
    .end local v8           #distance:I
    :cond_1e
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_2d

    .line 3545
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 3546
    .local v4, center:I
    const/4 v8, 0x0

    .line 3547
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 3548
    .local v22, neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3549
    .local v26, neighborTop:I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2b

    .line 3550
    sub-int v8, v4, v22

    .line 3554
    :cond_1f
    :goto_d
    move/from16 v0, v34

    if-ge v8, v0, :cond_2c

    .line 3555
    move/from16 v34, v8

    .line 3556
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 3486
    .end local v4           #center:I
    .end local v22           #neighborBottom:I
    .end local v26           #neighborTop:I
    :cond_20
    move/from16 v0, v41

    if-ne v8, v0, :cond_1e

    .line 3487
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 3488
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 3489
    .local v5, currentDistance:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 3490
    .local v6, currentLeft:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 3491
    .local v7, currentRight:I
    if-gt v7, v4, :cond_23

    .line 3492
    sub-int v5, v4, v7

    .line 3497
    :cond_21
    :goto_e
    const/16 v23, 0x0

    .line 3498
    .local v23, neighborDistance:I
    move/from16 v0, v25

    if-gt v0, v4, :cond_24

    .line 3499
    sub-int v23, v4, v25

    .line 3503
    :cond_22
    :goto_f
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 3504
    move/from16 v41, v8

    .line 3505
    move-object/from16 v42, v21

    goto :goto_c

    .line 3493
    .end local v23           #neighborDistance:I
    :cond_23
    if-lt v6, v4, :cond_21

    .line 3494
    sub-int v5, v6, v4

    goto :goto_e

    .line 3500
    .restart local v23       #neighborDistance:I
    :cond_24
    move/from16 v0, v24

    if-lt v0, v4, :cond_22

    .line 3501
    sub-int v23, v24, v4

    goto :goto_f

    .line 3509
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v8           #distance:I
    .end local v23           #neighborDistance:I
    :cond_25
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-lt v0, v13, :cond_1e

    .line 3512
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 3513
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    sub-int v8, v43, v13

    .line 3514
    .restart local v8       #distance:I
    if-ge v8, v11, :cond_26

    .line 3515
    move v11, v8

    .line 3516
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 3517
    :cond_26
    if-ne v8, v11, :cond_1e

    .line 3518
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 3519
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 3520
    .restart local v5       #currentDistance:I
    iget v0, v12, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 3521
    .restart local v6       #currentLeft:I
    iget v0, v12, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 3522
    .restart local v7       #currentRight:I
    if-gt v7, v4, :cond_29

    .line 3523
    sub-int v5, v4, v7

    .line 3528
    :cond_27
    :goto_10
    const/16 v23, 0x0

    .line 3529
    .restart local v23       #neighborDistance:I
    move/from16 v0, v25

    if-gt v0, v4, :cond_2a

    .line 3530
    sub-int v23, v4, v25

    .line 3534
    :cond_28
    :goto_11
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 3535
    move v11, v8

    .line 3536
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 3524
    .end local v23           #neighborDistance:I
    :cond_29
    if-lt v6, v4, :cond_27

    .line 3525
    sub-int v5, v6, v4

    goto :goto_10

    .line 3531
    .restart local v23       #neighborDistance:I
    :cond_2a
    move/from16 v0, v24

    if-lt v0, v4, :cond_28

    .line 3532
    sub-int v23, v24, v4

    goto :goto_11

    .line 3551
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v23           #neighborDistance:I
    .restart local v22       #neighborBottom:I
    .restart local v26       #neighborTop:I
    :cond_2b
    move/from16 v0, v26

    if-lt v0, v4, :cond_1f

    .line 3552
    sub-int v8, v26, v4

    goto/16 :goto_d

    .line 3557
    :cond_2c
    move/from16 v0, v34

    if-ne v8, v0, :cond_c

    .line 3559
    sub-int v23, v24, v33

    .line 3560
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v43, v33

    .line 3561
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 3562
    move/from16 v34, v8

    .line 3563
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 3566
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v26           #neighborTop:I
    :cond_2d
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 3569
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 3570
    .restart local v4       #center:I
    const/4 v8, 0x0

    .line 3571
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 3572
    .restart local v22       #neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3573
    .restart local v26       #neighborTop:I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2f

    .line 3574
    sub-int v8, v4, v22

    .line 3578
    :cond_2e
    :goto_12
    move/from16 v0, v18

    if-ge v8, v0, :cond_30

    .line 3579
    move/from16 v18, v8

    .line 3580
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 3575
    :cond_2f
    move/from16 v0, v26

    if-lt v0, v4, :cond_2e

    .line 3576
    sub-int v8, v26, v4

    goto :goto_12

    .line 3581
    :cond_30
    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    .line 3583
    sub-int v23, v17, v25

    .line 3584
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v17, v43

    .line 3585
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 3586
    move/from16 v18, v8

    .line 3587
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 3592
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v21           #neighbor:Lcom/android/calendar/Event;
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v24           #neighborLeft:I
    .end local v25           #neighborRight:I
    .end local v26           #neighborTop:I
    :cond_31
    move-object/from16 v0, v42

    iput-object v0, v14, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3593
    iput-object v12, v14, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3594
    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3595
    move-object/from16 v0, v35

    iput-object v0, v14, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3394
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 3597
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto/16 :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 5236
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 5237
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 5238
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3847
    iput v3, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3848
    iput v6, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3849
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3850
    iget-object v7, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 3852
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 3857
    .local v5, y:I
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3858
    .local v0, oldSelectedEvent:Lcom/android/calendar/Event;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3859
    .local v1, oldSelectionDay:I
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 3860
    .local v2, oldSelectionHour:I
    invoke-direct {p0, v4, v5, v6}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3864
    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v1, v7, :cond_1

    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ne v2, v7, :cond_1

    .line 3866
    .local v3, pressedSelected:Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v6, :cond_2

    .line 3867
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v6, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    .line 3868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/calendar/DayView;->mDownTouchTime:J

    .line 3869
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    sget v7, Lcom/android/calendar/DayView;->mOnDownDelay:I

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3874
    .end local v3           #pressedSelected:Z
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3875
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3876
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 3877
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3878
    return-void

    :cond_1
    move v3, v6

    .line 3864
    goto :goto_0

    .line 3871
    .restart local v3       #pressedSelected:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    goto :goto_1
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    .line 2566
    iget-object v5, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2567
    .local v5, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2569
    .local v1, r:Landroid/graphics/Rect;
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v0, :cond_0

    .line 2570
    invoke-direct {p0, v1, p1, v5}, Lcom/android/calendar/DayView;->drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2572
    :cond_0
    invoke-direct {p0, v1, p1, v5}, Lcom/android/calendar/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2573
    invoke-direct {p0, v1, p1, v5}, Lcom/android/calendar/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2576
    iget v7, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2577
    .local v7, cell:I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2578
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 2579
    .local v12, alpha:I
    iget v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2580
    const/4 v2, 0x0

    .local v2, day:I
    :goto_0
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_3

    .line 2583
    const/4 v3, 0x0

    .line 2585
    .local v3, lineY:I
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v7, v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    add-int/lit8 v3, v0, 0x1

    .line 2589
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ge v3, v0, :cond_1

    move-object v0, p0

    move-object v4, p1

    .line 2590
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1
    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2596
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2599
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v7, v0, :cond_2

    .line 2601
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ge v3, v0, :cond_2

    .line 2602
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_2

    .line 2603
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2604
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2605
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, v3, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2606
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2607
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2608
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2609
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2580
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2615
    .end local v3           #lineY:I
    :cond_3
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2616
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2618
    invoke-direct {p0, v1, p1, v5}, Lcom/android/calendar/DayView;->drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2619
    return-void
.end method

.method private doExpandAllDayClick()V
    .locals 10

    .prologue
    const/16 v3, 0x4c

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 3882
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 3884
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 3887
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_0

    .line 3888
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v8, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v8, v8

    sub-int/2addr v0, v8

    :goto_1
    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3892
    :cond_0
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3893
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3894
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3896
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 3897
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3899
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 3900
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3902
    :cond_3
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3904
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 3905
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 3906
    const-string v8, "moreAllDayEventsTextAlpha"

    const/4 v0, 0x2

    new-array v9, v0, [I

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    aput v0, v9, v2

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_8

    :goto_3
    aput v2, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 3912
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_9

    move-wide v0, v4

    :goto_4
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3913
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3914
    iget-object v2, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a

    move-wide v0, v6

    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3915
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3916
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3917
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 3919
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_b

    :goto_6
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3921
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3923
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 3882
    goto/16 :goto_0

    .line 3888
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_1

    :cond_7
    move v0, v2

    .line 3906
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move-wide v0, v6

    .line 3912
    goto :goto_4

    .line 3914
    :cond_a
    const-wide/16 v0, 0x190

    goto :goto_5

    :cond_b
    move-wide v4, v6

    .line 3919
    goto :goto_6
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 13
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4261
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 4263
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4264
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 4266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 4268
    iget v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    .line 4271
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int v12, v1, v2

    .line 4274
    .local v12, deltaX:I
    if-gez v12, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v3, v3

    move/from16 v0, p3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4275
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4309
    .end local v12           #deltaX:I
    :cond_0
    :goto_1
    return-void

    .line 4274
    .restart local v12       #deltaX:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4279
    .end local v12           #deltaX:I
    :cond_2
    iget v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 4285
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4286
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4294
    iget-object v1, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    const/4 v4, 0x0

    move/from16 v0, p4

    neg-float v5, v0

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iget v10, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    iget v11, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4300
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-eqz v1, :cond_4

    .line 4301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    .line 4308
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4305
    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-eq v1, v2, :cond_3

    .line 4306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    goto :goto_2
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 4116
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 4117
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 4138
    :cond_0
    :goto_0
    return-void

    .line 4122
    :cond_1
    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 4126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 4127
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 4129
    .local v2, y:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v0

    .line 4130
    .local v0, validPosition:Z
    if-eqz v0, :cond_0

    .line 4135
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4137
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 4141
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 4142
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    if-eqz v8, :cond_0

    .line 4143
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4144
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4145
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4148
    :cond_0
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    add-float/2addr v8, p3

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4149
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    add-float/2addr v8, p4

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4150
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    float-to-int v3, v8

    .line 4151
    .local v3, distanceX:I
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    float-to-int v4, v8

    .line 4153
    .local v4, distanceY:I
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->getAverageY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 4154
    .local v5, focusY:F
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    if-eqz v8, :cond_1

    .line 4156
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4158
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4163
    :cond_1
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 4164
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4165
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4166
    .local v1, absDistanceY:I
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v8, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 4167
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    .line 4169
    if-le v0, v1, :cond_8

    .line 4170
    iget-object v8, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v7, 0x14

    .line 4171
    .local v7, slopFactor:I
    :goto_0
    sget v8, Lcom/android/calendar/DayView;->mScaledPagingTouchSlop:I

    mul-int/2addr v8, v7

    if-le v0, v8, :cond_2

    .line 4172
    const/16 v8, 0x40

    iput v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4173
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4174
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v8, v8

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 4195
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    .end local v7           #slopFactor:I
    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_6

    .line 4198
    iget v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4202
    iget v8, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    int-to-float v8, v8

    add-float/2addr v8, p4

    float-to-int v6, v8

    .line 4203
    .local v6, pulledToY:I
    if-gez v6, :cond_b

    .line 4204
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v9, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v9, v9

    div-float v9, p4, v9

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4205
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4206
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4215
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v8, :cond_c

    .line 4216
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4217
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4222
    :cond_4
    :goto_3
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    if-eqz v8, :cond_5

    .line 4224
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4226
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4228
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4231
    .end local v6           #pulledToY:I
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4233
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4234
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4235
    return-void

    .line 4170
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_7
    const/4 v7, 0x2

    goto :goto_0

    .line 4177
    :cond_8
    const/16 v8, 0x20

    iput v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    goto :goto_1

    .line 4179
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_9
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2

    .line 4183
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4184
    if-eqz v3, :cond_2

    .line 4185
    if-lez v3, :cond_a

    const/4 v2, 0x1

    .line 4186
    .local v2, direction:I
    :goto_4
    iget v8, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    if-eq v2, v8, :cond_2

    .line 4189
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v8, v8

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 4190
    iput v2, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    goto/16 :goto_1

    .line 4185
    .end local v2           #direction:I
    :cond_a
    const/4 v2, -0x1

    goto :goto_4

    .line 4208
    .restart local v6       #pulledToY:I
    :cond_b
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v6, v8, :cond_3

    .line 4209
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v9, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v9, v9

    div-float v9, p4, v9

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4210
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4211
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 4218
    :cond_c
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v8, v9, :cond_4

    .line 4219
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4220
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    goto :goto_3
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 52
    .parameter "ev"

    .prologue
    .line 4020
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 4113
    :cond_0
    :goto_0
    return-void

    .line 4024
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v49, v0

    .line 4025
    .local v49, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v50, v0

    .line 4026
    .local v50, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v44, v0

    .line 4027
    .local v44, selectedDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v45, v0

    .line 4028
    .local v45, selectedHour:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v4, :cond_4

    .line 4030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move/from16 v37, v0

    .line 4031
    .local v37, bottom:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v0, v49

    if-ge v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v50

    if-le v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v4

    move/from16 v0, v50

    if-lt v0, v3, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_4

    move/from16 v0, v50

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    move/from16 v0, v50

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 4034
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->doExpandAllDayClick()V

    goto :goto_0

    .line 4039
    .end local v37           #bottom:I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v48

    .line 4040
    .local v48, validPosition:Z
    if-nez v48, :cond_5

    .line 4041
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v50

    if-ge v0, v3, :cond_0

    .line 4042
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 4044
    .local v9, selectedTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v9, v3}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 4046
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v3, v9, Landroid/text/format/Time;->hour:I

    .line 4047
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 4048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 4054
    .end local v9           #selectedTime:Landroid/text/format/Time;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_8

    const/16 v42, 0x1

    .line 4055
    .local v42, hasSelection:Z
    :goto_1
    if-nez v42, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v44

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v0, v45

    if-ne v0, v3, :cond_9

    const/16 v43, 0x1

    .line 4058
    .local v43, pressedSelected:Z
    :goto_2
    if-eqz v43, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    if-nez v3, :cond_a

    .line 4061
    const-wide/16 v22, 0x0

    .line 4062
    .local v22, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_7

    .line 4063
    const-wide/16 v22, 0x10

    .line 4065
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4067
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v46

    .line 4068
    .local v46, startMillis:J
    const-wide/32 v3, 0x36ee80

    add-long v40, v46, v3

    .line 4070
    .local v40, endMillis:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v12, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    const-wide/16 v24, -0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 4112
    .end local v22           #extraLong:J
    .end local v40           #endMillis:J
    .end local v46           #startMillis:J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 4054
    .end local v42           #hasSelection:Z
    .end local v43           #pressedSelected:Z
    :cond_8
    const/16 v42, 0x0

    goto :goto_1

    .line 4055
    .restart local v42       #hasSelection:Z
    :cond_9
    const/16 v43, 0x0

    goto :goto_2

    .line 4073
    .restart local v43       #pressedSelected:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_e

    .line 4075
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_b

    .line 4076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 4079
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v51, v0

    .line 4085
    .local v51, yLocation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_c

    .line 4086
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v3, v4

    add-int v51, v51, v3

    .line 4088
    :cond_c
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mClickedYLocation:I

    .line 4089
    sget v3, Lcom/android/calendar/DayView;->mOnDownDelay:I

    add-int/lit8 v3, v3, 0x32

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/DayView;->mDownTouchTime:J

    sub-long/2addr v5, v7

    sub-long v38, v3, v5

    .line 4091
    .local v38, clearDelay:J
    const-wide/16 v3, 0x0

    cmp-long v3, v38, v3

    if-lez v3, :cond_d

    .line 4092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 4094
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 4098
    .end local v38           #clearDelay:J
    .end local v51           #yLocation:I
    :cond_e
    new-instance v28, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 4100
    .local v28, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 4102
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move-object/from16 v0, v28

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 4103
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 4105
    new-instance v29, Landroid/text/format/Time;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 4106
    .local v29, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 4108
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x20

    const-wide/16 v30, -0x1

    const/16 v32, 0x0

    const-wide/16 v33, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v36}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_3
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2352
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2354
    .local v1, r:Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2355
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_0

    .line 2356
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2357
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2360
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2361
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2364
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    .line 2365
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2367
    :cond_1
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 38
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3022
    sget v3, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3023
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3024
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3026
    .local v7, eventTextPaint:Landroid/graphics/Paint;
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v3

    move/from16 v34, v0

    .line 3027
    .local v34, startY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v3, v3

    add-float v3, v3, v34

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float v35, v3, v5

    .line 3028
    .local v35, stopY:F
    const/16 v36, 0x0

    .line 3029
    .local v36, x:F
    const/16 v28, 0x0

    .line 3032
    .local v28, linesIndex:I
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3033
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v36, v0

    .line 3034
    const/high16 v3, 0x3f80

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28           #linesIndex:I
    .local v29, linesIndex:I
    sget v5, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v5, v3, v28

    .line 3037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29           #linesIndex:I
    .restart local v28       #linesIndex:I
    aput v34, v3, v29

    .line 3038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28           #linesIndex:I
    .restart local v29       #linesIndex:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v28

    .line 3039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29           #linesIndex:I
    .restart local v28       #linesIndex:I
    aput v34, v3, v29

    .line 3041
    const/16 v20, 0x0

    .local v20, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v0, v20

    if-gt v0, v3, :cond_0

    .line 3042
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v36, v0

    .line 3043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28           #linesIndex:I
    .restart local v29       #linesIndex:I
    aput v36, v3, v28

    .line 3044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29           #linesIndex:I
    .restart local v28       #linesIndex:I
    aput v34, v3, v29

    .line 3045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28           #linesIndex:I
    .restart local v29       #linesIndex:I
    aput v36, v3, v28

    .line 3046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29           #linesIndex:I
    .restart local v28       #linesIndex:I
    aput v35, v3, v29

    .line 3041
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 3048
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, p4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 3050
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3052
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v37, v3, v5

    .line 3053
    .local v37, y:I
    add-int v3, p1, p2

    add-int/lit8 v27, v3, -0x1

    .line 3054
    .local v27, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 3055
    .local v24, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 3057
    .local v30, numEvents:I
    const/16 v25, 0x0

    .line 3059
    .local v25, hasMoreEvents:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v0, v3

    move/from16 v21, v0

    .line 3061
    .local v21, drawHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v0, v3

    move/from16 v31, v0

    .line 3063
    .local v31, numRectangles:F
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v18, v3, v5

    .line 3065
    .local v18, allDayEventClip:I
    move/from16 v0, p2

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    .line 3066
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_3

    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_3

    .line 3070
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v31, v0

    .line 3072
    move/from16 v0, v18

    int-to-float v3, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v18, v0

    .line 3073
    const/16 v25, 0x1

    .line 3079
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v19

    .line 3080
    .local v19, alpha:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3081
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move/from16 v0, v30

    if-ge v10, v0, :cond_c

    .line 3082
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 3083
    .local v4, event:Lcom/android/calendar/Event;
    iget v0, v4, Lcom/android/calendar/Event;->startDay:I

    move/from16 v32, v0

    .line 3084
    .local v32, startDay:I
    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    move/from16 v22, v0

    .line 3085
    .local v22, endDay:I
    move/from16 v0, v32

    move/from16 v1, v27

    if-gt v0, v1, :cond_2

    move/from16 v0, v22

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 3081
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3074
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v10           #i:I
    .end local v19           #alpha:I
    .end local v22           #endDay:I
    .end local v32           #startDay:I
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_1

    .line 3076
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v18, v3, v5

    goto :goto_1

    .line 3088
    .restart local v4       #event:Lcom/android/calendar/Event;
    .restart local v10       #i:I
    .restart local v19       #alpha:I
    .restart local v22       #endDay:I
    .restart local v32       #startDay:I
    :cond_4
    move/from16 v0, v32

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 3089
    move/from16 v32, p1

    .line 3091
    :cond_5
    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 3092
    move/from16 v22, v27

    .line 3094
    :cond_6
    sub-int v33, v32, p1

    .line 3095
    .local v33, startIndex:I
    sub-int v23, v22, p1

    .line 3096
    .local v23, endIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    int-to-float v0, v3

    move/from16 v26, v0

    .line 3100
    .local v26, height:F
    :goto_4
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v3, v3

    cmpl-float v3, v26, v3

    if-lez v3, :cond_7

    .line 3101
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v3

    move/from16 v26, v0

    .line 3106
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->left:F

    .line 3107
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->right:F

    .line 3108
    move/from16 v0, v37

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/android/calendar/Event;->getColumn()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v26

    add-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->top:F

    .line 3109
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    add-float v3, v3, v26

    sget v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 3110
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_b

    .line 3114
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v18

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_9

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 3096
    .end local v26           #height:F
    :cond_8
    div-float v26, v21, v31

    goto :goto_4

    .line 3117
    .restart local v26       #height:F
    :cond_9
    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    move/from16 v0, v18

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    .line 3118
    if-eqz v25, :cond_a

    .line 3119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 3122
    :cond_a
    move/from16 v0, v18

    int-to-float v3, v0

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 3125
    :cond_b
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    float-to-int v8, v3

    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v9, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 3127
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 3128
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v12

    .line 3129
    .local v12, layout:Landroid/text/StaticLayout;
    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 3132
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    .line 3133
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v32

    if-gt v0, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v22

    if-lt v0, v3, :cond_2

    .line 3134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3138
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v12           #layout:Landroid/text/StaticLayout;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v22           #endDay:I
    .end local v23           #endIndex:I
    .end local v26           #height:F
    .end local v32           #startDay:I
    .end local v33           #startIndex:I
    :cond_c
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3140
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    if-eqz v3, :cond_f

    .line 3142
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v19

    .line 3143
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3144
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v3, v3, 0x18

    sget v5, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    and-int/2addr v3, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3145
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    array-length v3, v3

    if-ge v10, v3, :cond_e

    .line 3146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    if-lez v3, :cond_d

    .line 3147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v10, v2}, Lcom/android/calendar/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 3145
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3150
    :cond_e
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3153
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_10

    .line 3156
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeAllDayNeighbors()V

    .line 3160
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v8}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 3162
    :cond_10
    return-void
.end method

.method private drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 2414
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v3, :cond_1

    .line 2416
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2417
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2418
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2419
    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2420
    sget v3, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2421
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2422
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2424
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2425
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2426
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2427
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2428
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2430
    const/4 v1, -0x1

    .line 2432
    .local v1, startIndex:I
    iget v3, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v3, v4

    .line 2433
    .local v2, todayIndex:I
    if-gez v2, :cond_3

    .line 2435
    const/4 v1, 0x0

    .line 2441
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    .line 2443
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2444
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2445
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2447
    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2448
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2449
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2450
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2454
    .end local v1           #startIndex:I
    .end local v2           #todayIndex:I
    :cond_1
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_2

    .line 2456
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2457
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2458
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v3, v4

    .line 2459
    .local v0, daynum:I
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2460
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2461
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2462
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2464
    .end local v0           #daynum:I
    :cond_2
    return-void

    .line 2436
    .restart local v1       #startIndex:I
    .restart local v2       #todayIndex:I
    :cond_3
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v3, v4, :cond_0

    .line 2438
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v4, 0xc

    .line 2525
    sget v2, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2526
    sget v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2527
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2528
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2529
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2530
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 2531
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lt v2, v4, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2534
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2536
    .local v1, y:I
    iget v2, p0, Lcom/android/calendar/DayView;->mAmPmLeftMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2538
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    if-le v2, v4, :cond_1

    .line 2540
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2541
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    rsub-int/lit8 v3, v3, 0xc

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2544
    iget v2, p0, Lcom/android/calendar/DayView;->mAmPmLeftMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2546
    :cond_1
    return-void
.end method

.method private drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2812
    iget v2, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2814
    .local v1, todayIndex:I
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2815
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2816
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2817
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2818
    sget v2, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2819
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2820
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2821
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2824
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 2826
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2828
    .local v0, lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 2829
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2830
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2831
    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2832
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2833
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2834
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2835
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2869
    .end local v0           #lineY:I
    :cond_0
    :goto_0
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2870
    return-void

    .line 2837
    :cond_1
    if-ltz v1, :cond_3

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v1, v2, :cond_3

    .line 2839
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2841
    .restart local v0       #lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 2842
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2843
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2844
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2845
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2846
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2847
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2848
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2852
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v3, :cond_0

    .line 2853
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2854
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2855
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2856
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2857
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2858
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2860
    .end local v0           #lineY:I
    :cond_3
    if-gez v1, :cond_0

    .line 2862
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2863
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2864
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2865
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2866
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2867
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "day"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2550
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2551
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2553
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2554
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2556
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2557
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2558
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2560
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2561
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2563
    :cond_0
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 14
    .parameter "dayStr"
    .parameter "day"
    .parameter "cell"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2701
    iget v11, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    add-int v3, v11, p2

    .line 2703
    .local v3, dateNum:I
    iget v11, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    if-le v3, v11, :cond_0

    .line 2704
    iget v11, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    sub-int/2addr v3, v11

    .line 2706
    :cond_0
    const/4 v11, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2708
    iget v11, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v12, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v8, v11, v12

    .line 2710
    .local v8, todayIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2711
    .local v4, dateNumStr:Ljava/lang/String;
    iget v11, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2713
    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 2714
    .local v5, dayHeaderFontSize:F
    sget v2, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 2715
    .local v2, dateHeaderFontSize:F
    iget v11, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v12, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-lt v11, v12, :cond_1

    iget v11, p0, Lcom/android/calendar/DayView;->mDateStrWidth2letter:I

    iget v12, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-lt v11, v12, :cond_1

    .line 2716
    const/high16 v11, 0x4000

    sub-float/2addr v5, v11

    .line 2717
    const/high16 v11, 0x4080

    sub-float/2addr v2, v11

    .line 2721
    :cond_1
    sget v11, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v12, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    sub-int/2addr v11, v12

    int-to-float v10, v11

    .line 2725
    .local v10, y:F
    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2726
    sget v11, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2728
    move/from16 v0, p2

    if-ne v8, v0, :cond_2

    iget-object v11, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v7, v11

    .line 2731
    .local v7, textWidth:I
    iget v11, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-le v11, v7, :cond_3

    iget v11, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    sub-int/2addr v11, v7

    div-int/lit8 v6, v11, 0x2

    .line 2733
    .local v6, margin:I
    :goto_1
    add-int/lit8 v11, p2, 0x1

    invoke-direct {p0, v11}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v11

    sub-int v9, v11, v6

    .line 2735
    .local v9, x:I
    int-to-float v11, v9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v11, v10, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2738
    int-to-float v11, v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 2739
    sget v11, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2740
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2741
    int-to-float v11, v9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, p1, v11, v10, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2759
    .end local v2           #dateHeaderFontSize:F
    .end local v5           #dayHeaderFontSize:F
    .end local v6           #margin:I
    .end local v7           #textWidth:I
    :goto_2
    return-void

    .line 2728
    .end local v9           #x:I
    .restart local v2       #dateHeaderFontSize:F
    .restart local v5       #dayHeaderFontSize:F
    :cond_2
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 2731
    .restart local v7       #textWidth:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2743
    .end local v2           #dateHeaderFontSize:F
    .end local v5           #dayHeaderFontSize:F
    .end local v7           #textWidth:I
    .end local v10           #y:F
    :cond_4
    sget v11, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    sget v12, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v11, v12

    int-to-float v10, v11

    .line 2744
    .restart local v10       #y:F
    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2748
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v11

    sget v12, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    add-int v9, v11, v12

    .line 2749
    .restart local v9       #x:I
    sget v11, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2750
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2751
    int-to-float v11, v9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, p1, v11, v10, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2754
    int-to-float v11, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sget v13, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v9, v11

    .line 2755
    sget v11, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2756
    move/from16 v0, p2

    if-ne v8, v0, :cond_5

    iget-object v11, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2757
    int-to-float v11, v9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v11, v10, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 2756
    :cond_5
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_3
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    .line 2480
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_0

    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    if-nez v0, :cond_0

    .line 2522
    :goto_0
    return-void

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2485
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2486
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2489
    .local v3, cell:I
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-ge v0, v1, :cond_3

    .line 2490
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 2495
    .local v8, dayNames:[Ljava/lang/String;
    :goto_1
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2496
    const/4 v2, 0x0

    .local v2, day:I
    :goto_2
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_7

    .line 2497
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    add-int v9, v2, v0

    .line 2498
    .local v9, dayOfWeek:I
    const/16 v0, 0xe

    if-lt v9, v0, :cond_1

    .line 2499
    add-int/lit8 v9, v9, -0xe

    .line 2502
    :cond_1
    sget v6, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 2503
    .local v6, color:I
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_5

    .line 2504
    const/4 v0, 0x6

    if-ne v9, v0, :cond_4

    .line 2505
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 2518
    :cond_2
    :goto_3
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2519
    aget-object v1, v8, v9

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2496
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2492
    .end local v2           #day:I
    .end local v6           #color:I
    .end local v8           #dayNames:[Ljava/lang/String;
    .end local v9           #dayOfWeek:I
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v8       #dayNames:[Ljava/lang/String;
    goto :goto_1

    .line 2506
    .restart local v2       #day:I
    .restart local v6       #color:I
    .restart local v9       #dayOfWeek:I
    :cond_4
    if-nez v9, :cond_2

    .line 2507
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2510
    :cond_5
    rem-int/lit8 v7, v2, 0x7

    .line 2511
    .local v7, column:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2512
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    goto :goto_3

    .line 2513
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2514
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2521
    .end local v6           #color:I
    .end local v7           #column:I
    .end local v9           #dayOfWeek:I
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;
    .locals 8
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"
    .parameter "visibleTop"
    .parameter "visibleBot"

    .prologue
    .line 3603
    iget-object v5, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3604
    .local v5, r:Landroid/graphics/Rect;
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    invoke-static {v6, p5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3605
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    invoke-static {v6, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3606
    iget v6, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3607
    iget v6, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3610
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-ne p1, v6, :cond_5

    .line 3611
    sget v2, Lcom/android/calendar/DayView;->mClickedColor:I

    .line 3616
    .local v2, color:I
    :goto_0
    iget v6, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v6, :pswitch_data_0

    .line 3630
    :cond_0
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3634
    :cond_1
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3636
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 3637
    .local v3, floorHalfStroke:I
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 3638
    .local v1, ceilHalfStroke:I
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-static {v6, p5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3639
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-static {v6, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3641
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3642
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3643
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3644
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3645
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3647
    .local v0, alpha:I
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_ALPHA:I

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3648
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3649
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3650
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3653
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v6, p1, :cond_4

    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eqz v6, :cond_4

    .line 3654
    const/4 v4, 0x0

    .line 3655
    .local v4, paintIt:Z
    const/4 v2, 0x0

    .line 3656
    iget v6, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3658
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3659
    sget v2, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3660
    const/4 v4, 0x1

    .line 3668
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 3669
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3670
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3672
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3692
    .end local v4           #paintIt:Z
    :cond_4
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3693
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3694
    iget v6, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3695
    iget v6, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3696
    return-object v5

    .line 3613
    .end local v0           #alpha:I
    .end local v1           #ceilHalfStroke:I
    .end local v2           #color:I
    .end local v3           #floorHalfStroke:I
    :cond_5
    iget v2, p1, Lcom/android/calendar/Event;->color:I

    .restart local v2       #color:I
    goto/16 :goto_0

    .line 3618
    :pswitch_0
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eq p1, v6, :cond_1

    .line 3619
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_2

    .line 3623
    :pswitch_1
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eq p1, v6, :cond_0

    .line 3624
    invoke-static {v2}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v2

    goto/16 :goto_1

    .line 3661
    .restart local v0       #alpha:I
    .restart local v1       #ceilHalfStroke:I
    .restart local v3       #floorHalfStroke:I
    .restart local v4       #paintIt:Z
    :cond_6
    iget v6, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 3663
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3664
    sget v2, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3665
    const/4 v4, 0x1

    goto :goto_3

    .line 3616
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V
    .locals 9
    .parameter "eventLayout"
    .parameter "rect"
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"
    .parameter "center"

    .prologue
    .line 3724
    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 3725
    .local v6, width:I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 3728
    .local v0, height:I
    if-eqz p1, :cond_0

    sget v7, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    if-ge v6, v7, :cond_1

    .line 3764
    :cond_0
    :goto_0
    return-void

    .line 3732
    :cond_1
    const/4 v5, 0x0

    .line 3733
    .local v5, totalLineHeight:I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 3734
    .local v3, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3735
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 3736
    .local v2, lineBottom:I
    if-gt v2, v0, :cond_2

    .line 3737
    move v5, v2

    .line 3734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3743
    .end local v2           #lineBottom:I
    :cond_2
    if-eqz v5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-gt v7, p5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    if-lt v7, p4, :cond_0

    .line 3748
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 3750
    if-eqz p6, :cond_3

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    div-int/lit8 v4, v7, 0x2

    .line 3751
    .local v4, padding:I
    :goto_2
    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3752
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->left:I

    .line 3753
    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 3754
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->top:I

    .line 3755
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 3761
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3762
    invoke-virtual {p1, p3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3763
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 3750
    .end local v4           #padding:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 28
    .parameter "date"
    .parameter "dayIndex"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3258
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 3259
    .local v4, left:I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 3260
    .local v6, cellWidth:I
    sget v23, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3263
    .local v23, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 3264
    .local v27, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v5, v23, 0x1

    mul-int/2addr v3, v5

    add-int v3, v3, p3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3265
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v23

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3266
    move-object/from16 v0, v27

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3267
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 3270
    .local v24, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 3271
    .local v26, numEvents:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 3273
    .local v2, geometry:Lcom/android/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v14, v3, v5

    .line 3275
    .local v14, viewEndY:I
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v22

    .line 3276
    .local v22, alpha:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3277
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 3278
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .local v7, event:Lcom/android/calendar/Event;
    move/from16 v3, p1

    move/from16 v5, p3

    .line 3279
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3277
    :cond_0
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 3284
    :cond_1
    iget v3, v7, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    iget v3, v7, Lcom/android/calendar/Event;->top:F

    int-to-float v5, v14

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 3288
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v27

    invoke-virtual {v2, v7, v0}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 3294
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 3297
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gt v3, v14, :cond_0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v5, :cond_0

    .line 3300
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move/from16 v10, v25

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 3302
    .local v16, layout:Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v21}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    goto/16 :goto_1

    .line 3305
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v16           #layout:Landroid/text/StaticLayout;
    :cond_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3307
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_4

    .line 3309
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeNeighbors()V

    .line 3311
    :cond_4
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2762
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 2764
    .local v7, savedStyle:Landroid/graphics/Paint$Style;
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v13}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v9, v13

    .line 2765
    .local v9, stopX:F
    const/4 v12, 0x0

    .line 2766
    .local v12, y:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    int-to-float v3, v13

    .line 2767
    .local v3, deltaY:F
    const/4 v5, 0x0

    .line 2768
    .local v5, linesIndex:I
    const/4 v8, 0x0

    .line 2769
    .local v8, startY:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    int-to-float v10, v13

    .line 2770
    .local v10, stopY:F
    iget v13, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v11, v13

    .line 2773
    .local v11, x:F
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2774
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2775
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2776
    const/4 v12, 0x0

    .line 2777
    const/4 v5, 0x0

    .line 2778
    const/4 v4, 0x0

    .local v4, hour:I
    move v6, v5

    .end local v5           #linesIndex:I
    .local v6, linesIndex:I
    :goto_0
    const/16 v13, 0x18

    if-gt v4, v13, :cond_0

    .line 2779
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v14, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v14, v13, v6

    .line 2780
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2781
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v9, v13, v6

    .line 2782
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2783
    add-float/2addr v12, v3

    .line 2778
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2785
    :cond_0
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v14, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v13, v14, :cond_2

    .line 2786
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v6, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2787
    const/4 v5, 0x0

    .line 2788
    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2792
    :goto_1
    const/4 v2, 0x0

    .local v2, day:I
    :goto_2
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-gt v2, v13, :cond_1

    .line 2793
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v11, v13

    .line 2794
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2795
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    const/4 v14, 0x0

    aput v14, v13, v6

    .line 2796
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2797
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v10, v13, v6

    .line 2792
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2799
    :cond_1
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v5, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2802
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2803
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2804
    return-void

    .end local v2           #day:I
    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    :cond_2
    move v5, v6

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    goto :goto_1
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2681
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2683
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int v2, v3, v4

    .line 2685
    .local v2, y:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    .line 2686
    iget-object v3, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 2687
    .local v1, time:Ljava/lang/String;
    sget v3, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2688
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 2685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2690
    .end local v1           #time:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2388
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .line 2389
    .local v6, right:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v7, v0, -0x1

    .line 2391
    .local v7, y:I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2392
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2394
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    const/high16 v0, 0x3f80

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2396
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2397
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2398
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2626
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_0

    .line 2628
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mIsSelectionFocusShow:Z

    if-nez v3, :cond_1

    .line 2678
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v9, v3, v4

    .line 2633
    .local v9, daynum:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2634
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2635
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2636
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2638
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    invoke-interface {v3}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->isThemeManagerEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    invoke-interface {v3}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->getThemeColor()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2644
    sget v3, Lcom/android/calendar/DayView;->THEME_ALPHA_GRID_AREA_SELECTED:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2649
    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2650
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2651
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2652
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2656
    sget v3, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2657
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 2658
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2659
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    .line 2660
    .local v15, width:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v15, 0x2

    add-int v12, v3, v4

    .line 2661
    .local v12, midX:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 2662
    .local v13, midY:I
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v11, v3, v4

    .line 2663
    .local v11, length:I
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2664
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    sub-int/2addr v3, v11

    div-int/lit8 v14, v3, 0x2

    .line 2665
    .local v14, verticalPadding:I
    sub-int v3, v15, v11

    div-int/lit8 v10, v3, 0x2

    .line 2666
    .local v10, horizontalPadding:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    int-to-float v4, v3

    int-to-float v5, v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v6, v3

    int-to-float v7, v13

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2668
    int-to-float v4, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    int-to-float v5, v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2646
    .end local v10           #horizontalPadding:I
    .end local v11           #length:I
    .end local v12           #midX:I
    .end local v13           #midY:I
    .end local v14           #verticalPadding:I
    .end local v15           #width:I
    :cond_2
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 2670
    :cond_3
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2671
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2672
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2673
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget v6, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "string"
    .parameter "maxEventTextLen"

    .prologue
    .line 3705
    iget-object v2, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3706
    .local v1, m:Ljava/util/regex/Matcher;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3708
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3709
    .local v0, len:I
    if-gtz p2, :cond_1

    .line 3710
    const-string p1, ""

    .line 3711
    const/4 v0, 0x0

    .line 3717
    :cond_0
    :goto_0
    const/16 v2, 0xa

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3712
    :cond_1
    if-le v0, p2, :cond_0

    .line 3713
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3714
    move v0, p2

    goto :goto_0
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2373
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2374
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_0

    .line 2376
    sget-boolean v0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1

    .line 2377
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2378
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2381
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private eventClickCleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5030
    iget-object v0, p0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5031
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5032
    iput-object v1, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    .line 5033
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    .line 5034
    return-void
.end method

.method private findSelectedEvent(II)V
    .locals 33
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4830
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4831
    .local v3, date:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 4832
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4833
    .local v16, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 4834
    .local v24, numEvents:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    .line 4835
    .local v4, left:I
    const/4 v5, 0x0

    .line 4836
    .local v5, top:I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 4839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 4841
    const v23, 0x461c4000

    .line 4842
    .local v23, minYdistance:F
    const/4 v8, 0x0

    .line 4843
    .local v8, closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v10, v0

    .line 4844
    .local v10, drawHeight:F
    sget v31, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v32, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v30, v31, v32

    .line 4845
    .local v30, yOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v21, v0

    .line 4846
    .local v21, maxUnexpandedColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 4848
    add-int/lit8 v21, v21, -0x1

    .line 4850
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4851
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 4852
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 4853
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 4854
    .local v7, event:Lcom/android/calendar/Event;
    invoke-virtual {v7}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v31

    if-eqz v31, :cond_1

    sget-boolean v31, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v31, :cond_2

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 4852
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 4860
    :cond_2
    iget v0, v7, Lcom/android/calendar/Event;->startDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_1

    iget v0, v7, Lcom/android/calendar/Event;->endDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 4861
    sget-boolean v31, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 4863
    .local v25, numRectangles:F
    :goto_2
    div-float v17, v10, v25

    .line 4864
    .local v17, height:F
    sget v31, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v17, v31

    if-lez v31, :cond_3

    .line 4865
    sget v31, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    .line 4867
    :cond_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v17

    add-float v15, v31, v32

    .line 4868
    .local v15, eventTop:F
    add-float v14, v15, v17

    .line 4869
    .local v14, eventBottom:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v15, v31

    if-gez v31, :cond_7

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v14, v31

    if-lez v31, :cond_7

    .line 4872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4873
    move-object v8, v7

    .line 4889
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v14           #eventBottom:F
    .end local v15           #eventTop:F
    .end local v17           #height:F
    .end local v25           #numRectangles:F
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4961
    .end local v8           #closestEvent:Lcom/android/calendar/Event;
    .end local v10           #drawHeight:F
    .end local v21           #maxUnexpandedColumn:I
    .end local v23           #minYdistance:F
    .end local v30           #yOffset:I
    :cond_5
    :goto_3
    return-void

    .line 4861
    .restart local v7       #event:Lcom/android/calendar/Event;
    .restart local v8       #closestEvent:Lcom/android/calendar/Event;
    .restart local v10       #drawHeight:F
    .restart local v21       #maxUnexpandedColumn:I
    .restart local v23       #minYdistance:F
    .restart local v30       #yOffset:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    goto :goto_2

    .line 4877
    .restart local v14       #eventBottom:F
    .restart local v15       #eventTop:F
    .restart local v17       #height:F
    .restart local v25       #numRectangles:F
    :cond_7
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v15, v31

    if-ltz v31, :cond_8

    .line 4878
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v29, v15, v31

    .line 4882
    .local v29, yDistance:F
    :goto_4
    cmpg-float v31, v29, v23

    if-gez v31, :cond_1

    .line 4883
    move/from16 v23, v29

    .line 4884
    move-object v8, v7

    goto/16 :goto_1

    .line 4880
    .end local v29           #yDistance:F
    :cond_8
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v29, v31, v14

    .restart local v29       #yDistance:F
    goto :goto_4

    .line 4894
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v8           #closestEvent:Lcom/android/calendar/Event;
    .end local v10           #drawHeight:F
    .end local v14           #eventBottom:F
    .end local v15           #eventTop:F
    .end local v17           #height:F
    .end local v18           #i:I
    .end local v21           #maxUnexpandedColumn:I
    .end local v23           #minYdistance:F
    .end local v25           #numRectangles:F
    .end local v29           #yDistance:F
    .end local v30           #yOffset:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    add-int p2, p2, v31

    .line 4897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 4898
    .local v26, region:Landroid/graphics/Rect;
    add-int/lit8 v31, p1, -0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4899
    add-int/lit8 v31, p1, 0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 4900
    add-int/lit8 v31, p2, -0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 4901
    add-int/lit8 v31, p2, 0xa

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 4903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 4905
    .local v2, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 4906
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 4908
    .restart local v7       #event:Lcom/android/calendar/Event;
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 4905
    :cond_a
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 4914
    :cond_b
    move-object/from16 v0, v26

    invoke-virtual {v2, v7, v0}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 4915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4921
    .end local v7           #event:Lcom/android/calendar/Event;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_5

    .line 4922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 4923
    .local v20, len:I
    const/4 v8, 0x0

    .line 4924
    .restart local v8       #closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v22, v0

    .line 4925
    .local v22, minDist:F
    const/16 v19, 0x0

    .local v19, index:I
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 4926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/Event;

    .line 4927
    .local v13, ev:Lcom/android/calendar/Event;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v2, v0, v1, v13}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v9

    .line 4928
    .local v9, dist:F
    cmpg-float v31, v9, v22

    if-gez v31, :cond_d

    .line 4929
    move/from16 v22, v9

    .line 4930
    move-object v8, v13

    .line 4925
    :cond_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 4933
    .end local v9           #dist:F
    .end local v13           #ev:Lcom/android/calendar/Event;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v27, v0

    .line 4940
    .local v27, startDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v11, v0, Lcom/android/calendar/Event;->endDay:I

    .line 4941
    .local v11, endDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 4942
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4947
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v31, v0

    div-int/lit8 v28, v31, 0x3c

    .line 4949
    .local v28, startHour:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    .line 4950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    div-int/lit8 v12, v31, 0x3c

    .line 4955
    .local v12, endHour:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 4956
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto/16 :goto_3

    .line 4943
    .end local v12           #endHour:I
    .end local v28           #startHour:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v0, v11, :cond_f

    .line 4944
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    goto :goto_8

    .line 4952
    .restart local v28       #startHour:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v31, v0

    div-int/lit8 v12, v31, 0x3c

    .restart local v12       #endHour:I
    goto :goto_9

    .line 4957
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v0, v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v11, :cond_5

    .line 4958
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto/16 :goto_3
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    .line 3970
    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v3, v4, v5

    .line 3972
    .local v3, maxADHeight:I
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v4, v4

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3975
    iget v4, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v4, :cond_0

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3976
    .local v1, currentHeight:I
    :goto_0
    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 3980
    .local v2, desiredHeight:I
    :goto_1
    const-string v4, "animateDayHeight"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3982
    .local v0, animator:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3984
    new-instance v4, Lcom/android/calendar/DayView$7;

    invoke-direct {v4, p0}, Lcom/android/calendar/DayView$7;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3996
    return-object v0

    .line 3975
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #currentHeight:I
    .end local v2           #desiredHeight:I
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_0

    .line 3976
    .restart local v1       #currentHeight:I
    :cond_1
    sget v4, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    .line 3946
    iget v5, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v6, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v5, v6

    sget v6, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v4, v5, v6

    .line 3948
    .local v4, maxADHeight:I
    iget v5, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v5, v5

    sget v6, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3951
    iget v5, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v3, v4, v5

    .line 3952
    .local v3, fitHeight:I
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3953
    .local v1, currentHeight:I
    sget-boolean v5, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v5, :cond_0

    move v2, v3

    .line 3956
    .local v2, desiredHeight:I
    :goto_0
    if-ne v1, v2, :cond_1

    .line 3957
    const/4 v0, 0x0

    .line 3964
    :goto_1
    return-object v0

    .line 3953
    .end local v2           #desiredHeight:I
    :cond_0
    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v5

    goto :goto_0

    .line 3961
    .restart local v2       #desiredHeight:I
    :cond_1
    const-string v5, "animateDayEventHeight"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3963
    .local v0, animator:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x190

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private getAverageY(Landroid/view/MotionEvent;)F
    .locals 4
    .parameter "me"

    .prologue
    .line 4238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4239
    .local v0, count:I
    const/4 v1, 0x0

    .line 4240
    .local v1, focusY:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4241
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 4240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4243
    :cond_0
    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 4244
    return v1
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 2925
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2926
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2927
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2928
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2929
    .local v1, daynum:I
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2930
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2931
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .locals 11
    .parameter "context"
    .parameter "e"

    .prologue
    .line 4684
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4686
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4689
    .local v6, accessLevel:I
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4695
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 4696
    const/4 v2, 0x0

    .line 4739
    :goto_0
    return v2

    .line 4699
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4700
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4701
    const/4 v2, 0x0

    goto :goto_0

    .line 4704
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4705
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4706
    .local v7, calId:J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4708
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4713
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4714
    .local v3, where:Ljava/lang/String;
    const-string v2, "DayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEventAccessLevel, query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    sget-object v2, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4718
    const/4 v9, 0x0

    .line 4719
    .local v9, calendarOwnerAccount:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 4720
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4721
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4722
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4723
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4726
    :cond_2
    const/16 v2, 0x1f4

    if-ge v6, v2, :cond_3

    .line 4727
    const/4 v2, 0x0

    goto :goto_0

    .line 4730
    :cond_3
    iget-boolean v2, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v2, :cond_4

    .line 4731
    const/4 v2, 0x2

    goto :goto_0

    .line 4734
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4736
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 4739
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 13
    .parameter "layouts"
    .parameter "i"
    .parameter "event"
    .parameter "paint"
    .parameter "r"

    .prologue
    .line 2973
    if-ltz p2, :cond_0

    array-length v3, p1

    if-lt p2, v3, :cond_1

    .line 2974
    :cond_0
    const/4 v1, 0x0

    .line 3017
    :goto_0
    return-object v1

    .line 2977
    :cond_1
    aget-object v1, p1, p2

    .line 2981
    .local v1, layout:Landroid/text/StaticLayout;
    if-eqz v1, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 2982
    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2983
    .local v2, bob:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 2985
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f3

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2986
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2987
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2989
    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 2990
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    rsub-int v4, v4, 0x1f4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2994
    :cond_4
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v3, :pswitch_data_0

    .line 3006
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3011
    :goto_1
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #layout:Landroid/text/StaticLayout;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    new-instance v5, Landroid/text/TextPaint;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 3014
    .restart local v1       #layout:Landroid/text/StaticLayout;
    aput-object v1, p1, p2

    .line 3016
    .end local v2           #bob:Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 2996
    .restart local v2       #bob:Landroid/text/SpannableStringBuilder;
    :pswitch_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->color:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2999
    :pswitch_1
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3000
    const/16 v3, 0xc0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 2994
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getNewEvent(IJI)Lcom/android/calendar/Event;
    .locals 5
    .parameter "julianDay"
    .parameter "utcMillis"
    .parameter "minutesSinceMidnight"

    .prologue
    .line 2892
    invoke-static {}, Lcom/android/calendar/Event;->newInstance()Lcom/android/calendar/Event;

    move-result-object v0

    .line 2893
    .local v0, event:Lcom/android/calendar/Event;
    iput p0, v0, Lcom/android/calendar/Event;->startDay:I

    .line 2894
    iput p0, v0, Lcom/android/calendar/Event;->endDay:I

    .line 2895
    iput-wide p1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 2896
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 2897
    iput p3, v0, Lcom/android/calendar/Event;->startTime:I

    .line 2898
    iget v1, v0, Lcom/android/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 2899
    return-object v0
.end method

.method private incrementSkipCount([III)V
    .locals 2
    .parameter "counts"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 3166
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p3, v1, :cond_1

    .line 3172
    :cond_0
    return-void

    .line 3169
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 3170
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 3169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 827
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 831
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 832
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 835
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 837
    new-instance v19, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 839
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v6, v7, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080009

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080010

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08000e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mBgColor:I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08000d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080011

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080012

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08000c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const/high16 v20, 0x7f08

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->isThemeManagerEnable()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mCalendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->getThemeColor()I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mClickedColor:I

    .line 863
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080006

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mEventTextColor:I

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f08001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget v20, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 871
    .local v10, gridLineColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 872
    .local v17, p:Landroid/graphics/Paint;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 873
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 874
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 877
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 881
    const/16 v19, 0xe

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 884
    const/16 v19, 0xe

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 886
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    const/16 v19, 0x7

    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    .line 887
    add-int/lit8 v12, v11, -0x1

    .line 889
    .local v12, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v20

    invoke-static {v11, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v12

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    aput-object v21, v19, v20

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1e

    move/from16 v0, v20

    invoke-static {v11, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v12

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x32

    move/from16 v0, v20

    invoke-static {v11, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v12

    .line 901
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    aput-object v21, v19, v20

    .line 886
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 859
    .end local v10           #gridLineColor:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v17           #p:Landroid/graphics/Paint;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080040

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    sput v19, Lcom/android/calendar/DayView;->mClickedColor:I

    goto/16 :goto_0

    .line 906
    .restart local v10       #gridLineColor:I
    .restart local v11       #i:I
    .restart local v17       #p:Landroid/graphics/Paint;
    :cond_2
    sget v19, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 908
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, " 28"

    aput-object v20, v8, v19

    const/16 v19, 0x1

    const-string v20, " 30"

    aput-object v20, v8, v19

    .line 909
    .local v8, dateStrs:[Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v8, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mDateStrWidth2letter:I

    .line 911
    sget v19, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mDateStrWidth2letter:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mDateStrWidth2letter:I

    .line 915
    sget v19, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 916
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 920
    new-instance v19, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v19 .. v19}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, amPmStrings:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v4, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 922
    const/16 v19, 0x1

    aget-object v19, v4, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 924
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v5, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v5, v19

    .line 925
    .local v5, ampm:[Ljava/lang/String;
    sget v19, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 926
    sget v19, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v20

    sget v21, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 928
    sget v19, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 931
    const-string v19, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 932
    .local v13, inflater:Landroid/view/LayoutInflater;
    const v19, 0x7f040013

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    new-instance v19, Landroid/widget/PopupWindow;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 939
    .local v9, dialogTheme:Landroid/content/res/Resources$Theme;
    const v19, 0x103000b

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 940
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x1010054

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 942
    .local v18, ta:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 950
    new-instance v19, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 952
    .local v15, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v14, v19, 0x19

    .line 963
    .local v14, maxGridLines:I
    mul-int/lit8 v19, v14, 0x4

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mLines:[F

    .line 964
    return-void
.end method

.method private initAccessibilityVariables()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 996
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 997
    invoke-direct {p0}, Lcom/android/calendar/DayView;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 998
    return-void

    .line 996
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFirstHour()V
    .locals 2

    .prologue
    .line 1998
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1999
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 2000
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 2004
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 2002
    iget v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    .line 4313
    iget-object v3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 4314
    .local v2, view:Lcom/android/calendar/DayView;
    iget-object v0, v2, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 4315
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 4317
    if-lez p1, :cond_0

    .line 4318
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 4319
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4320
    const/4 v1, 0x0

    .line 4326
    .local v1, switchForward:Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 4327
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 4328
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 4329
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 4330
    return v1

    .line 4322
    .end local v1           #switchForward:Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 4323
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4324
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_0
.end method

.method private initView(Lcom/android/calendar/DayView;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1441
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gtz v0, :cond_0

    .line 1442
    invoke-virtual {p0, v3}, Lcom/android/calendar/DayView;->setFirstVisibleHour(I)V

    .line 1443
    const-string v0, "DayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The view overScroll,now mFirstHour is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",and set it to 0 when init nextView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    invoke-direct {p1, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1448
    iget-object v0, p1, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1450
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1451
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1452
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1453
    invoke-virtual {p1}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1455
    invoke-direct {p1, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1456
    iput-object v4, p1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1457
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 1458
    iget-object v0, p1, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1459
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1467
    :goto_0
    invoke-direct {p1}, Lcom/android/calendar/DayView;->recalc()V

    .line 1468
    return-void

    .line 1461
    :cond_1
    iput-boolean v3, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalc()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1257
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getJulianDayInGeneral(Landroid/text/format/Time;Z)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 1264
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    .line 1266
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    .line 1267
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    .line 1268
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    .line 1269
    return-void
.end method

.method private remeasure(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v12, 0x0

    .line 1313
    sget v8, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v9, 0x4080

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sput v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1314
    sget v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    div-int/lit8 v9, p2, 0x6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sput v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1315
    sget v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v9, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v9, v9

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1317
    sget v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 1322
    const/4 v2, 0x0

    .local v2, day:I
    :goto_0
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v8, :cond_0

    .line 1323
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    const/16 v9, 0x19

    aput v9, v8, v2

    .line 1324
    iget-object v8, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    aput-boolean v12, v8, v2

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    iget v5, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1330
    .local v5, maxAllDayEvents:I
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v8, p2, v8

    div-int/lit8 v8, v8, 0x18

    sget v9, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 1331
    sget v8, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v9, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v8, v9, :cond_1

    .line 1332
    sget v8, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v8, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 1336
    :cond_1
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1337
    const/4 v0, 0x0

    .line 1338
    .local v0, allDayHeight:I
    if-lez v5, :cond_b

    .line 1339
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v8, p2, v8

    sget v9, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v4, v8, v9

    .line 1342
    .local v4, maxAllAllDayHeight:I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_7

    .line 1343
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1371
    :cond_2
    :goto_1
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v8, v0

    sget v9, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1375
    .end local v4           #maxAllAllDayHeight:I
    :goto_2
    iput v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    .line 1377
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v8, p2, v8

    iput v8, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 1380
    iget-object v8, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1381
    .local v1, allDayIconWidth:I
    iget-object v8, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    sget v10, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 1383
    iget-object v8, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v1

    iget v10, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sget v11, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 1385
    iget-object v8, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sget v10, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1386
    iget-object v8, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1389
    iget v8, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    div-int/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 1390
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1392
    sget v8, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    const v9, 0x476a6000

    mul-float/2addr v8, v9

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x4270

    div-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-long v6, v8

    .line 1394
    .local v6, minimumDurationMillis:J
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v8, v6, v7}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1397
    sget v8, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x18

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1402
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v8, v9, :cond_3

    .line 1403
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1404
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1407
    :cond_3
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1408
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initFirstHour()V

    .line 1409
    iput v12, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1416
    :cond_4
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    if-lt v8, v9, :cond_5

    .line 1417
    sget v8, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1419
    :cond_5
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1421
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v9, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v9, v9, 0x1

    mul-int v3, v8, v9

    .line 1423
    .local v3, eventAreaWidth:I
    iget-object v8, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v8, :cond_6

    iget-wide v8, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v10, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v10, v10, Lcom/android/calendar/Event;->id:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 1424
    iget-object v8, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1426
    :cond_6
    iget-object v8, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v9, v3, -0x14

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1427
    iget-object v8, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1428
    return-void

    .line 1344
    .end local v1           #allDayIconWidth:I
    .end local v3           #eventAreaWidth:I
    .end local v6           #minimumDurationMillis:J
    .restart local v4       #maxAllAllDayHeight:I
    :cond_7
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v5, v8, :cond_8

    .line 1347
    sget v8, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int v0, v5, v8

    .line 1348
    sget v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v8, :cond_2

    .line 1349
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_1

    .line 1354
    :cond_8
    iget v8, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v8, :cond_9

    .line 1358
    iget v8, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    sget v9, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    .line 1361
    :cond_9
    int-to-float v8, v5

    sget v9, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 1363
    sget-boolean v8, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v8, :cond_a

    sget v8, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v8, :cond_a

    .line 1364
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v8, v8

    sget v9, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    goto/16 :goto_1

    .line 1366
    :cond_a
    if-le v0, v4, :cond_2

    .line 1367
    move v0, v4

    goto/16 :goto_1

    .line 1373
    .end local v4           #maxAllAllDayHeight:I
    :cond_b
    iput-boolean v12, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto/16 :goto_2
.end method

.method private resetSelectedHour()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1984
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1985
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1986
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1987
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1988
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 1990
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1991
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1992
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1993
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2919
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2920
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2921
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2922
    return-void
.end method

.method private sendAccessibilityEventAsNeeded(Z)V
    .locals 17
    .parameter "speakEvents"

    .prologue
    .line 1776
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-nez v11, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    if-eq v11, v12, :cond_9

    const/4 v3, 0x1

    .line 1780
    .local v3, dayChanged:Z
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    if-eq v11, v12, :cond_a

    const/4 v5, 0x1

    .line 1781
    .local v5, hourChanged:Z
    :goto_2
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    if-eq v11, v12, :cond_0

    .line 1783
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    .line 1784
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    .line 1785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1790
    .local v1, b:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_3

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v11

    const-string v12, "%A "

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    :cond_3
    if-eqz v5, :cond_4

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v11, :cond_b

    const-string v11, "%k"

    :goto_3
    invoke-virtual {v12, v11}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    :cond_4
    if-nez v3, :cond_5

    if-eqz v5, :cond_6

    .line 1797
    :cond_5
    const-string v11, ". "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :cond_6
    if-eqz p1, :cond_e

    .line 1801
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 1802
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v12, 0x7f0c00e3

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 1806
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1807
    .local v10, numEvents:I
    if-lez v10, :cond_10

    .line 1808
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    if-nez v11, :cond_c

    .line 1810
    const/4 v6, 0x1

    .line 1811
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 1812
    .local v2, calEvent:Lcom/android/calendar/Event;
    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    .line 1814
    sget-object v11, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1815
    sget-object v11, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1816
    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    .line 1818
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto :goto_4

    .line 1779
    .end local v1           #b:Ljava/lang/StringBuilder;
    .end local v2           #calEvent:Lcom/android/calendar/Event;
    .end local v3           #dayChanged:Z
    .end local v5           #hourChanged:Z
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #numEvents:I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1780
    .restart local v3       #dayChanged:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1794
    .restart local v1       #b:Ljava/lang/StringBuilder;
    .restart local v5       #hourChanged:Z
    :cond_b
    const-string v11, "%l%p"

    goto/16 :goto_3

    .line 1821
    .restart local v10       #numEvents:I
    :cond_c
    const/4 v11, 0x1

    if-le v10, v11, :cond_d

    .line 1823
    sget-object v11, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1824
    sget-object v11, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1826
    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    .line 1835
    .end local v10           #numEvents:I
    :cond_e
    :goto_5
    if-nez v3, :cond_f

    if-nez v5, :cond_f

    if-eqz p1, :cond_0

    .line 1836
    :cond_f
    const/16 v11, 0x8

    invoke-static {v11}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 1838
    .local v4, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1839
    .local v9, msg:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1841
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    .line 1831
    .end local v4           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v9           #msg:Ljava/lang/CharSequence;
    .restart local v10       #numEvents:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private setSelectedDay(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 5046
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 5047
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    .line 5048
    return-void
.end method

.method private setSelectedEvent(Lcom/android/calendar/Event;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 5037
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 5038
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 5039
    return-void
.end method

.method private setSelectedHour(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 5042
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 5043
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    .line 5044
    return-void
.end method

.method private setSelectionFromPosition(IIZ)Z
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "keepOldSelection"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4755
    const/4 v4, 0x0

    .line 4756
    .local v4, savedEvent:Lcom/android/calendar/Event;
    const/4 v3, 0x0

    .line 4757
    .local v3, savedDay:I
    const/4 v5, 0x0

    .line 4758
    .local v5, savedHour:I
    const/4 v2, 0x0

    .line 4759
    .local v2, savedAllDay:Z
    if-eqz p3, :cond_0

    .line 4762
    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4763
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4764
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4765
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4767
    :cond_0
    iget v8, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    if-ge p1, v8, :cond_1

    .line 4768
    iget p1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 4771
    :cond_1
    iget v8, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v9, v9, 0x1

    div-int v1, v8, v9

    .line 4772
    .local v1, day:I
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-lt v1, v8, :cond_2

    .line 4773
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v8, -0x1

    .line 4775
    :cond_2
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v8

    .line 4776
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4778
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v8, :cond_3

    .line 4779
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4826
    :goto_0
    return v6

    .line 4783
    :cond_3
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 4785
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    if-ge p2, v8, :cond_5

    .line 4786
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4801
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->findSelectedEvent(II)V

    .line 4817
    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4820
    if-eqz p3, :cond_4

    .line 4821
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4822
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4823
    iput v5, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4824
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    :cond_4
    move v6, v7

    .line 4826
    goto :goto_0

    .line 4789
    :cond_5
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v8

    .line 4791
    .local v0, adjustedY:I
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-ge v0, v8, :cond_6

    .line 4792
    iget v8, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 4798
    :goto_2
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_1

    .line 4794
    :cond_6
    iget v8, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v9, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int v9, v0, v9

    sget v10, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    div-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto :goto_2
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2952
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2953
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2954
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2966
    :cond_1
    :goto_0
    return-void

    .line 2958
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2959
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2960
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2962
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2963
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2964
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 2693
    sget v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2694
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2695
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2696
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2697
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2698
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2935
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2936
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2937
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2949
    :cond_1
    :goto_0
    return-void

    .line 2941
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2942
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2943
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2945
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2946
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2947
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .locals 25
    .parameter "forward"
    .parameter "xOffSet"
    .parameter "width"
    .parameter "velocity"

    .prologue
    .line 1902
    sub-float v4, p3, p2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 1907
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v22, v4, p3

    .line 1908
    .local v22, progress:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v22, v4

    if-lez v4, :cond_0

    .line 1909
    const/high16 v22, 0x3f80

    .line 1914
    :cond_0
    if-eqz p1, :cond_2

    .line 1915
    const/high16 v4, 0x3f80

    sub-float v5, v4, v22

    .line 1916
    .local v5, inFromXValue:F
    const/4 v7, 0x0

    .line 1917
    .local v7, inToXValue:F
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v21, v0

    .line 1918
    .local v21, outFromXValue:F
    const/high16 v12, -0x4080

    .line 1926
    .local v12, outToXValue:F
    :goto_0
    new-instance v23, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1927
    .local v23, start:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1928
    if-eqz p1, :cond_3

    .line 1929
    move-object/from16 v0, v23

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v4, v6

    move-object/from16 v0, v23

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 1933
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 1935
    move-object/from16 v20, v23

    .line 1937
    .local v20, newSelected:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_1

    .line 1938
    new-instance v20, Landroid/text/format/Time;

    .end local v20           #newSelected:Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1939
    .restart local v20       #newSelected:Landroid/text/format/Time;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1942
    :cond_1
    new-instance v19, Landroid/text/format/Time;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1943
    .local v19, end:Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v4, v6

    move-object/from16 v0, v19

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 1947
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1953
    .local v3, inAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v10, v21

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1959
    .local v8, outAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, p3, v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/calendar/DayView;->calculateDuration(FFF)J

    move-result-wide v17

    .line 1960
    .local v17, duration:J
    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1963
    move-wide/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1964
    new-instance v4, Lcom/android/calendar/DayView$GotoBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/android/calendar/DayView$GotoBroadcaster;-><init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/DayView;

    .line 1969
    .local v24, view:Lcom/android/calendar/DayView;
    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/DayView;->cleanup()V

    .line 1970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->showNext()V

    .line 1971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v24

    .end local v24           #view:Lcom/android/calendar/DayView;
    check-cast v24, Lcom/android/calendar/DayView;

    .line 1972
    .restart local v24       #view:Lcom/android/calendar/DayView;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 1973
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    .line 1974
    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 1975
    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 1976
    invoke-virtual/range {v24 .. v24}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 1978
    return-object v24

    .line 1920
    .end local v3           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v5           #inFromXValue:F
    .end local v7           #inToXValue:F
    .end local v8           #outAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v12           #outToXValue:F
    .end local v17           #duration:J
    .end local v19           #end:Landroid/text/format/Time;
    .end local v20           #newSelected:Landroid/text/format/Time;
    .end local v21           #outFromXValue:F
    .end local v23           #start:Landroid/text/format/Time;
    .end local v24           #view:Lcom/android/calendar/DayView;
    :cond_2
    const/high16 v4, 0x3f80

    sub-float v5, v22, v4

    .line 1921
    .restart local v5       #inFromXValue:F
    const/4 v7, 0x0

    .line 1922
    .restart local v7       #inToXValue:F
    move/from16 v21, v22

    .line 1923
    .restart local v21       #outFromXValue:F
    const/high16 v12, 0x3f80

    .restart local v12       #outToXValue:F
    goto/16 :goto_0

    .line 1931
    .restart local v23       #start:Landroid/text/format/Time;
    :cond_3
    move-object/from16 v0, v23

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v4, v6

    move-object/from16 v0, v23

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1
.end method

.method private switchViews(Z)V
    .locals 31
    .parameter "trackBallSelection"

    .prologue
    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v30, v0

    .line 1480
    .local v30, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1481
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 1487
    if-eqz p1, :cond_4

    .line 1488
    if-nez v30, :cond_2

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1491
    .local v8, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1492
    .local v10, endMillis:J
    const-wide/16 v14, 0x0

    .line 1493
    .local v14, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_0

    .line 1494
    const-wide/16 v14, 0x10

    .line 1496
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1543
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_1
    :goto_0
    return-void

    .line 1499
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_3

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1503
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1511
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_5

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1515
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1524
    :cond_6
    if-nez v30, :cond_8

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1527
    .restart local v8       #startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1528
    .restart local v10       #endMillis:J
    const-wide/16 v14, 0x0

    .line 1529
    .restart local v14       #extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_7

    .line 1530
    const-wide/16 v14, 0x10

    .line 1532
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_0

    .line 1535
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_9

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1538
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0
.end method

.method private updateEventDetails()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 3794
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3796
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3842
    :cond_1
    :goto_0
    return-void

    .line 3799
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3803
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 3806
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3808
    iget-object v7, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3809
    .local v7, event:Lcom/android/calendar/Event;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 3810
    .local v11, titleView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3812
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 3813
    .local v8, imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v0, :cond_5

    move v0, v13

    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3815
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #imageView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 3816
    .restart local v8       #imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v0, :cond_6

    move v0, v13

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3819
    iget-boolean v0, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_7

    .line 3820
    const v5, 0x82012

    .line 3827
    .local v5, flags:I
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3828
    or-int/lit16 v5, v5, 0x80

    .line 3830
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, v7, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v7, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 3832
    .local v9, timeRange:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3833
    .local v10, timeView:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3835
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3836
    .local v12, whereView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 3837
    .local v6, empty:Z
    if-eqz v6, :cond_8

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3838
    if-nez v6, :cond_4

    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3840
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3841
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v5           #flags:I
    .end local v6           #empty:Z
    .end local v9           #timeRange:Ljava/lang/String;
    .end local v10           #timeView:Landroid/widget/TextView;
    .end local v12           #whereView:Landroid/widget/TextView;
    :cond_5
    move v0, v14

    .line 3813
    goto :goto_1

    :cond_6
    move v0, v14

    .line 3816
    goto :goto_2

    .line 3823
    :cond_7
    const v5, 0x81413

    .restart local v5       #flags:I
    goto :goto_3

    .restart local v6       #empty:Z
    .restart local v9       #timeRange:Ljava/lang/String;
    .restart local v10       #timeView:Landroid/widget/TextView;
    .restart local v12       #whereView:Landroid/widget/TextView;
    :cond_8
    move v14, v13

    .line 3837
    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5009
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5010
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5012
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 5013
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 5014
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5015
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5016
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5019
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_default_cell_height"

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5022
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 5024
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 5026
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 5027
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 2073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 2074
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .locals 8
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1209
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v1, v4, Landroid/text/format/Time;->hour:I

    .line 1210
    .local v1, savedHour:I
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v4, Landroid/text/format/Time;->minute:I

    .line 1211
    .local v2, savedMinute:I
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v4, Landroid/text/format/Time;->second:I

    .line 1213
    .local v3, savedSec:I
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 1214
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 1215
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v4, Landroid/text/format/Time;->second:I

    .line 1223
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    .line 1224
    .local v0, diff:I
    if-lez v0, :cond_0

    .line 1226
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 1227
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1228
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    .line 1232
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 1233
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1234
    if-gez v0, :cond_1

    .line 1236
    const/4 v0, 0x0

    .line 1245
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v1, v4, Landroid/text/format/Time;->hour:I

    .line 1246
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v2, v4, Landroid/text/format/Time;->minute:I

    .line 1247
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v3, v4, Landroid/text/format/Time;->second:I

    .line 1248
    return v0

    .line 1237
    :cond_1
    if-nez v0, :cond_0

    .line 1239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 9
    .parameter "canvas"
    .parameter "remainingEvents"
    .parameter "day"
    .parameter "p"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 3176
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int v2, v4, v5

    .line 3177
    .local v2, x:I
    iget v4, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v4, v4

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 3179
    .local v3, y:I
    iget-object v0, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3180
    .local v0, r:Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3181
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3182
    sget v4, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3183
    sget v4, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 3184
    sget v4, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3185
    sget v4, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3186
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3187
    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3188
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3189
    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3190
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3191
    sget v4, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3192
    iget-object v4, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0005

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 3193
    .local v1, text:Ljava/lang/String;
    sget v4, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v4

    .line 3194
    sget v4, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    sget v5, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 3195
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3196
    return-void
.end method

.method public getEventsAlpha()I
    .locals 1

    .prologue
    .line 2188
    iget v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    return v0
.end method

.method getFirstVisibleHour()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    return v0
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .locals 4

    .prologue
    .line 2886
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1165
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1167
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 1169
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1175
    return-object v0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .locals 4

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_0

    .line 2875
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    .line 2878
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0
.end method

.method getSelectedMinutesSinceMidnight()I
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1021
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 1023
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1028
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1029
    return-object v0
.end method

.method getSelectedTimeForAccessibility()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1035
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 1037
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1042
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1043
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 1006
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1008
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 1010
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1015
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 978
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 979
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_tardis_1"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    sput v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    .line 984
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    .line 985
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 987
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    .line 988
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 990
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 991
    return-void

    .line 982
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    goto :goto_0

    .line 985
    :cond_1
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_1
.end method

.method public initAllDayHeights()V
    .locals 3

    .prologue
    .line 3930
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_0

    .line 3941
    :goto_0
    return-void

    .line 3933
    :cond_0
    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_1

    .line 3934
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 3935
    .local v0, maxADHeight:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3937
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0

    .line 3939
    .end local v0           #maxADHeight:I
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0
.end method

.method isEventSelected()Z
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    .line 820
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 975
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 4514
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 4515
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4516
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4519
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4520
    .local v1, startMillis:J
    const/16 v5, 0x1403

    .line 4523
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 4524
    .local v9, title:Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4526
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4527
    .local v8, numSelectedEvents:I
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 4532
    const/4 v0, 0x1

    if-lt v8, v0, :cond_3

    .line 4533
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v10, 0x7f0c0050

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4534
    .local v7, item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4535
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4537
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v3}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v6

    .line 4538
    .local v6, accessLevel:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 4539
    const/4 v0, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const v10, 0x7f0c0052

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4540
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4541
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4542
    const/16 v0, 0x65

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4545
    :cond_1
    const/4 v0, 0x1

    if-lt v6, v0, :cond_2

    .line 4546
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v10, 0x7f0c0053

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4547
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4548
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4551
    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v10, 0x7f0c0051

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4552
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4553
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4554
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4608
    .end local v6           #accessLevel:I
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4609
    return-void

    .line 4558
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v10, 0x7f0c0051

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4559
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4560
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4561
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 4568
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_4
    const/4 v0, 0x1

    if-lt v8, v0, :cond_7

    .line 4569
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v10, 0x7f0c0050

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4570
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4571
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4573
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v3}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v6

    .line 4574
    .restart local v6       #accessLevel:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    .line 4575
    const/4 v0, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const v10, 0x7f0c0052

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4576
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4577
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4578
    const/16 v0, 0x65

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4581
    :cond_5
    const/4 v0, 0x1

    if-lt v6, v0, :cond_6

    .line 4582
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v10, 0x7f0c0053

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4583
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4584
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4587
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/calendar/MTKUtils;->isEventShareAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4588
    const/4 v0, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x0

    const v10, 0x7f0c0001

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4589
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4590
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4591
    const/16 v0, 0x73

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4597
    .end local v6           #accessLevel:I
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_7
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v10, 0x7f0c0051

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4598
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4599
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4600
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4602
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v10, 0x7f0c004b

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4603
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4604
    const v0, 0x108003b

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4605
    const/16 v0, 0x64

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 5063
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 5064
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5065
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2267
    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    if-eqz v4, :cond_0

    .line 2268
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 2269
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 2271
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2273
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 2275
    .local v3, yTranslate:F
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2277
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 2278
    .local v0, dest:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2279
    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2280
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 2281
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2283
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2285
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2289
    iget v4, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    .line 2290
    iget-object v4, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayView;

    .line 2293
    .local v1, nextView:Lcom/android/calendar/DayView;
    if-eq v1, p0, :cond_7

    .line 2295
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v4, :cond_6

    .line 2296
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v4

    .line 2303
    .local v2, xTranslate:F
    :goto_0
    neg-float v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2306
    iput v6, v1, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 2308
    invoke-virtual {v1, p1}, Lcom/android/calendar/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2310
    neg-float v4, v2

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2322
    .end local v1           #nextView:Lcom/android/calendar/DayView;
    .end local v2           #xTranslate:F
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2323
    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    if-eqz v4, :cond_1

    .line 2324
    invoke-direct {p0}, Lcom/android/calendar/DayView;->updateEventDetails()V

    .line 2325
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 2327
    :cond_1
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 2330
    iget-object v4, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2331
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v4, :cond_2

    .line 2332
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2334
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2335
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2337
    :cond_3
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v4, :cond_4

    .line 2338
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2341
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2342
    const/high16 v4, 0x4334

    iget v5, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2343
    iget-object v4, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2344
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2347
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2348
    return-void

    .line 2298
    .restart local v1       #nextView:Lcom/android/calendar/DayView;
    :cond_6
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    neg-int v4, v4

    int-to-float v2, v4

    .restart local v2       #xTranslate:F
    goto :goto_0

    .line 2312
    .end local v2           #xTranslate:F
    :cond_7
    const-string v4, "DayView"

    const-string v5, "View switcher has already switched to the next view"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2318
    .end local v1           #nextView:Lcom/android/calendar/DayView;
    :cond_8
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v4, v4

    neg-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1761
    iget-boolean v1, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-nez v1, :cond_1

    .line 1762
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1768
    :cond_0
    :goto_0
    return v0

    .line 1764
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    .line 1766
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 22
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-nez v2, :cond_4

    .line 1590
    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x16

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 1595
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1597
    const/4 v2, 0x1

    .line 1736
    :goto_0
    return v2

    .line 1598
    :cond_1
    const/16 v2, 0x17

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1601
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1602
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1603
    const/4 v2, 0x1

    goto :goto_0

    .line 1604
    :cond_2
    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/16 v2, 0x52

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1606
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1610
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1611
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v20, v0

    .line 1615
    .local v20, selectionDay:I
    sparse-switch p1, :sswitch_data_0

    .line 1696
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1618
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    .line 1619
    .local v19, selectedEvent:Lcom/android/calendar/Event;
    if-nez v19, :cond_5

    .line 1620
    const/4 v2, 0x0

    goto :goto_0

    .line 1622
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1623
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1625
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1626
    .local v3, begin:J
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1627
    .local v5, end:J
    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    .line 1628
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v9, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1629
    const/4 v2, 0x1

    goto :goto_0

    .line 1631
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #id:J
    .end local v19           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 1632
    const/4 v2, 0x1

    goto :goto_0

    .line 1634
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1636
    const/4 v2, 0x1

    goto :goto_0

    .line 1638
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1640
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_7

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1643
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_8

    .line 1644
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1645
    add-int/lit8 v20, v20, -0x1

    .line 1647
    :cond_8
    const/16 v18, 0x1

    .line 1699
    .local v18, redraw:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    move/from16 v0, v20

    if-le v0, v2, :cond_12

    .line 1700
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/DayView;

    .line 1701
    .local v21, view:Lcom/android/calendar/DayView;
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1702
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_11

    .line 1704
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    .line 1708
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1709
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1711
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 1713
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v13}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1714
    .local v5, end:Landroid/text/format/Time;
    iget v2, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    iput v2, v5, Landroid/text/format/Time;->monthDay:I

    .line 1715
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v5

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1716
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1651
    .end local v5           #end:Landroid/text/format/Time;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v18           #redraw:Z
    .end local v21           #view:Lcom/android/calendar/DayView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_a

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1654
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_b

    .line 1655
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1656
    add-int/lit8 v20, v20, 0x1

    .line 1658
    :cond_b
    const/16 v18, 0x1

    .line 1659
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1662
    .end local v18           #redraw:Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_c

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1665
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_d

    .line 1666
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1667
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v2, :cond_d

    .line 1668
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1671
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1674
    :cond_d
    const/16 v18, 0x1

    .line 1675
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1678
    .end local v18           #redraw:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_e

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1681
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_f

    .line 1682
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1683
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_10

    .line 1684
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1692
    :cond_f
    :goto_3
    const/16 v18, 0x1

    .line 1693
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1686
    .end local v18           #redraw:Z
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1689
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1706
    .restart local v13       #date:Landroid/text/format/Time;
    .restart local v18       #redraw:Z
    .restart local v21       #view:Lcom/android/calendar/DayView;
    :cond_11
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_2

    .line 1718
    .end local v13           #date:Landroid/text/format/Time;
    .end local v21           #view:Lcom/android/calendar/DayView;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_13

    .line 1719
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v13, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1721
    .restart local v13       #date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-static {v13, v2}, Lcom/android/calendar/Utils;->setJulianDayInGeneral(Landroid/text/format/Time;I)J

    .line 1723
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v2, v13, Landroid/text/format/Time;->hour:I

    .line 1724
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v13

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1726
    .end local v13           #date:Landroid/text/format/Time;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1728
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1729
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1731
    if-eqz v18, :cond_14

    .line 1732
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1733
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1736
    :cond_14
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1615
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1547
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1548
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1550
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1584
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1552
    :pswitch_0
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1557
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1562
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1563
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1568
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1569
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->switchViews(Z)V

    goto :goto_0

    .line 1571
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1572
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1573
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 5150
    const/4 v5, 0x2

    .line 5151
    .local v5, flags:I
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 5152
    .local v1, time:J
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v0, :cond_0

    .line 5153
    or-int/lit8 v5, v5, 0x1

    .line 5155
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5156
    or-int/lit16 v5, v5, 0x80

    .line 5158
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 5159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/calendar/DayView$8;

    invoke-direct {v4, p0}, Lcom/android/calendar/DayView$8;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5174
    return v6
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 4354
    sget v2, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 4356
    .local v1, spanY:F
    iget v2, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4358
    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v3, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v2, v3, :cond_2

    .line 4361
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4362
    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v2, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4363
    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    iput v2, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4370
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v0, v2, v3

    .line 4371
    .local v0, gestureCenterInPixels:I
    iget v2, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4372
    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x18

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 4381
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v2, :cond_3

    .line 4382
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4383
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4390
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4392
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4393
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4394
    return v4

    .line 4364
    .end local v0           #gestureCenterInPixels:I
    :cond_2
    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v3, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    if-le v2, v3, :cond_0

    .line 4365
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4366
    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    sput v2, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4367
    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    iput v2, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    goto :goto_0

    .line 4385
    .restart local v0       #gestureCenterInPixels:I
    :cond_3
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v2, v3, :cond_1

    .line 4386
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4387
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 4335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4336
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 4337
    .local v0, gestureCenterInPixels:F
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4339
    sget v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4340
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    iput v1, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4349
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 4399
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 4400
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4401
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4402
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4403
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1285
    iput p1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    .line 1290
    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 1292
    iput p2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    .line 1293
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1294
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1295
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1296
    .local v0, gridAreaWidth:I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 1299
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 1301
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1302
    .local v1, p:Landroid/graphics/Paint;
    sget v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1303
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    .line 1304
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1305
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4410
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x6

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    .line 4414
    :cond_0
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4417
    :cond_1
    iget v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_2

    .line 4418
    iget-object v2, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4421
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 4501
    iget-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4504
    :cond_3
    :goto_0
    return v3

    .line 4423
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4429
    iget v2, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v2, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v1, v2, v5

    .line 4430
    .local v1, bottom:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, v1

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    .line 4431
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 4435
    :goto_1
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4436
    iget-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4433
    :cond_4
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 4441
    .end local v1           #bottom:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4446
    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4447
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4448
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4449
    iget-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4450
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-nez v2, :cond_5

    .line 4451
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4452
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4453
    iput v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4454
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 4458
    :cond_5
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    if-nez v2, :cond_3

    .line 4464
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v2, :cond_6

    .line 4465
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4466
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    .line 4467
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4470
    :cond_6
    iget v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 4471
    iput v4, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4472
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v5, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    if-le v2, v5, :cond_8

    .line 4475
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v2, :cond_7

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4476
    iput v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto :goto_0

    :cond_7
    move v2, v4

    .line 4475
    goto :goto_2

    .line 4483
    :cond_8
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 4484
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4485
    iput v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto/16 :goto_0

    .line 4494
    :pswitch_3
    iget-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4495
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4496
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    goto/16 :goto_0

    .line 4504
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 4421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2090
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2092
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 2093
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2094
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2097
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2098
    .local v8, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2099
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 2100
    iput v3, v8, Landroid/text/format/Time;->minute:I

    .line 2101
    iput v3, v8, Landroid/text/format/Time;->second:I

    .line 2102
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 2105
    .local v6, millis:J
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2180
    :goto_0
    return-void

    .line 2108
    :cond_0
    iput-wide v6, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 2112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    new-instance v4, Lcom/android/calendar/DayView$6;

    invoke-direct {v4, p0, v2}, Lcom/android/calendar/DayView$6;-><init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restartCurrentTimeUpdates()V
    .locals 2

    .prologue
    .line 5054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 5055
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5056
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5057
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5059
    :cond_0
    return-void
.end method

.method public selectionFocusShow(Z)V
    .locals 0
    .parameter "isFocusShow"

    .prologue
    .line 5244
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mIsSelectionFocusShow:Z

    .line 5245
    return-void
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 4014
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 4015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4016
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4017
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 4007
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 4008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4009
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4010
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .parameter "todayAlpha"

    .prologue
    .line 1160
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 1161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1162
    return-void
.end method

.method public setEventsAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 2183
    iput p1, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 2184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2185
    return-void
.end method

.method setFirstVisibleHour(I)V
    .locals 1
    .parameter "firstHour"

    .prologue
    .line 1060
    iput p1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1061
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1062
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 4001
    sput p1, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 4002
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4003
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;ZZ)V
    .locals 11
    .parameter "time"
    .parameter "ignoreTime"
    .parameter "animateToday"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/high16 v8, -0x8000

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 1065
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1066
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1067
    invoke-direct {p0, v5}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1068
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1070
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {v4, v9}, Lcom/android/calendar/Utils;->getJulianDayInGeneral(Landroid/text/format/Time;Z)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1072
    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1075
    const/high16 v1, -0x8000

    .line 1077
    .local v1, gotoY:I
    if-nez p2, :cond_1

    iget v4, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1078
    const/4 v2, 0x0

    .line 1080
    .local v2, lastHour:I
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v4, v5, :cond_6

    .line 1082
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int v1, v4, v5

    .line 1104
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v4, :cond_7

    .line 1105
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1111
    .end local v2           #lastHour:I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 1113
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 1114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, delayAnimateToday:Z
    if-eq v1, v8, :cond_2

    .line 1118
    const-string v4, "viewStartY"

    new-array v5, v10, [I

    iget v6, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    aput v6, v5, v9

    aput v1, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1119
    .local v3, scrollAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1120
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1121
    iget-object v4, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1122
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1123
    const/4 v0, 0x1

    .line 1125
    .end local v3           #scrollAnim:Landroid/animation/ValueAnimator;
    :cond_2
    if-eqz p3, :cond_5

    .line 1126
    iget-object v5, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    monitor-enter v5

    .line 1127
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    .line 1128
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1129
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1131
    :cond_3
    const-string v4, "animateTodayAlpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    aput v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0xff

    aput v8, v6, v7

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1133
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 1134
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1135
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    iget-object v6, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v6}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1136
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1137
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1138
    if-eqz v0, :cond_4

    .line 1139
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1141
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1142
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 1145
    return-void

    .line 1084
    .end local v0           #delayAnimateToday:Z
    .restart local v2       #lastHour:I
    :cond_6
    iget v4, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int v2, v4, v5

    .line 1087
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    if-lt v4, v2, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-float v5, v5

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    goto/16 :goto_0

    .line 1106
    :cond_7
    if-gez v1, :cond_1

    if-eq v1, v8, :cond_1

    .line 1107
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1142
    .end local v2           #lastHour:I
    .restart local v0       #delayAnimateToday:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setViewStartY(I)V
    .locals 1
    .parameter "viewStartY"

    .prologue
    .line 1149
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_0

    .line 1150
    iget p1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1153
    :cond_0
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1155
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1156
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1157
    return-void
.end method

.method public stopEventsAnimation()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2195
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 2196
    return-void
.end method

.method public updateTitle()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1179
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1180
    .local v4, start:Landroid/text/format/Time;
    invoke-virtual {v4, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1181
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1182
    .local v5, end:Landroid/text/format/Time;
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1184
    iget v0, v5, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 1185
    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1187
    const-wide/16 v10, 0x14

    .line 1188
    .local v10, formatFlags:J
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-eq v0, v2, :cond_0

    .line 1190
    const-wide/16 v0, 0x20

    or-long/2addr v10, v0

    .line 1193
    iget v0, v4, Landroid/text/format/Time;->month:I

    iget v1, v5, Landroid/text/format/Time;->month:I

    if-eq v0, v1, :cond_0

    .line 1194
    const-wide/32 v0, 0x10000

    or-long/2addr v10, v0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1200
    return-void
.end method
