.class public Lcom/android/inputmethod/research/ResearchLogger;
.super Ljava/lang/Object;
.source "ResearchLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field public static final DEFAULT_USABILITY_STUDY_MODE:Z = false

#the value of this static final field might be set in the static constructor
.field static final DIGIT_REPLACEMENT_CODEPOINT:I = 0x0

.field private static final DURATION_BETWEEN_DIR_CLEANUP_IN_MS:J = 0x5265c00L

.field private static final EVENTKEYS_FEEDBACK:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_ONCODEINPUT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_ONDISPLAYCOMPLETIONS:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_ONSTARTINPUTVIEWINTERNAL:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_ONUPDATESELECTION:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_ONWINDOWHIDDEN:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_PICKSUGGESTIONMANUALLY:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_PUNCTUATIONSUGGESTION:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_REVERTCOMMIT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_SENDKEYCODEPOINT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_LATINIME_SWAPSWAPPERANDSPACE:[Ljava/lang/String; = null

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_ONLONGPRESS:[Ljava/lang/String; = null

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_PROCESSMOTIONEVENT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_SETKEYBOARD:[Ljava/lang/String; = null

.field private static final EVENTKEYS_NULLVALUES:[Ljava/lang/Object; = null

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONCANCELINPUT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONCODEINPUT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONRELEASE:[Ljava/lang/String; = null

.field private static final EVENTKEYS_POINTERTRACKER_ONDOWNEVENT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_POINTERTRACKER_ONMOVEEVENT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_COMMITCOMPLETION:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_COMMITTEXT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_DELETESURROUNDINGTEXT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_FINISHCOMPOSINGTEXT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_PERFORMEDITORACTION:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SENDKEYEVENT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SETCOMPOSINGTEXT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SETSELECTION:[Ljava/lang/String; = null

.field private static final EVENTKEYS_STATISTICS:[Ljava/lang/String; = null

.field private static final EVENTKEYS_SUDDENJUMPINGTOUCHEVENTHANDLER_ONTOUCHEVENT:[Ljava/lang/String; = null

.field private static final EVENTKEYS_SUGGESTIONSTRIPVIEW_SETSUGGESTIONS:[Ljava/lang/String; = null

.field private static final EVENTKEYS_USER_FEEDBACK:[Ljava/lang/String; = null

.field private static final EVENTKEYS_USER_TIMESTAMP:[Ljava/lang/String; = null

.field public static final FEEDBACK_WORD_BUFFER_SIZE:I = 0x5

.field static final FILENAME_PREFIX:Ljava/lang/String; = "researchLog"

.field private static final FILENAME_SUFFIX:Ljava/lang/String; = ".txt"

.field private static final IS_SHOWING_INDICATOR:Z = true

.field private static final IS_SHOWING_INDICATOR_CLEARLY:Z = false

.field private static final MAX_INPUTVIEW_LENGTH_TO_CAPTURE:I = 0x2000

.field private static final MAX_LOGFILE_AGE_IN_MS:J = 0x5265c00L

.field private static final OUTPUT_ENTIRE_BUFFER:Z = false

.field private static final OUTPUT_FORMAT_VERSION:I = 0x1

.field private static final PREF_LAST_CLEANUP_TIME:Ljava/lang/String; = "pref_last_cleanup_time"

.field private static final PREF_RESEARCH_HAS_SEEN_SPLASH:Ljava/lang/String; = "pref_research_has_seen_splash"

.field private static final PREF_RESEARCH_LOGGER_UUID_STRING:Ljava/lang/String; = "pref_research_logger_uuid"

.field private static final PREF_USABILITY_STUDY_MODE:Ljava/lang/String; = "usability_study_mode"

.field protected static final SUSPEND_DURATION_IN_MINUTES:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final WHITESPACE_SEPARATORS:Ljava/lang/String; = " \t\n\r"

.field static final WORD_REPLACEMENT_STRING:Ljava/lang/String; = "\ue001"

.field private static final sInstance:Lcom/android/inputmethod/research/ResearchLogger;

.field static sIsLogging:Z

.field private static sLatinIMEExpectingUpdateSelection:Z


# instance fields
.field private mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

.field private mDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

.field mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

.field mFilesDir:Ljava/io/File;

.field private mInFeedbackDialog:Z

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLoggingSuspended:Z

.field private mIsPasswordView:Z

.field private mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

.field mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

.field mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResumeTime:J

.field private mSplashDialog:Landroid/app/Dialog;

.field private final mStatistics:Lcom/android/inputmethod/research/Statistics;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field mUUIDString:Ljava/lang/String;

.field private mUploadIntent:Landroid/content/Intent;

.field private mUploadPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    const-class v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    .line 86
    const-class v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    .line 90
    sput-boolean v2, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat;

    .line 107
    new-instance v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {v0}, Lcom/android/inputmethod/research/ResearchLogger;-><init>()V

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->sInstance:Lcom/android/inputmethod/research/ResearchLogger;

    .line 126
    const-string v0, "\ue000"

    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    sput v0, Lcom/android/inputmethod/research/ResearchLogger;->DIGIT_REPLACEMENT_CODEPOINT:I

    .line 136
    sput-boolean v2, Lcom/android/inputmethod/research/ResearchLogger;->sLatinIMEExpectingUpdateSelection:Z

    .line 542
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "UserTimestamp"

    aput-object v3, v0, v2

    const-string v3, "contents"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_FEEDBACK:[Ljava/lang/String;

    .line 644
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    .line 787
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEOnStartInputViewInternal"

    aput-object v3, v0, v2

    const-string v3, "uuid"

    aput-object v3, v0, v1

    const-string v3, "packageName"

    aput-object v3, v0, v5

    const-string v3, "inputType"

    aput-object v3, v0, v6

    const-string v3, "imeOptions"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "fieldId"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "display"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "model"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "prefs"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "versionCode"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "versionName"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "outputFormatVersion"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONSTARTINPUTVIEWINTERNAL:[Ljava/lang/String;

    .line 821
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "UserFeedback"

    aput-object v3, v0, v2

    const-string v3, "FeedbackContents"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_USER_FEEDBACK:[Ljava/lang/String;

    .line 825
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "PrefsChanged"

    aput-object v3, v0, v2

    const-string v3, "prefs"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String;

    .line 838
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewProcessMotionEvent"

    aput-object v3, v0, v2

    const-string v3, "action"

    aput-object v3, v0, v1

    const-string v3, "eventTime"

    aput-object v3, v0, v5

    const-string v3, "id"

    aput-object v3, v0, v6

    const-string v3, "x"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "y"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "size"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "pressure"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_PROCESSMOTIONEVENT:[Ljava/lang/String;

    .line 866
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "LatinIMEOnCodeInput"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "x"

    aput-object v3, v0, v5

    const-string v3, "y"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONCODEINPUT:[Ljava/lang/String;

    .line 882
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMEOnDisplayCompletions"

    aput-object v3, v0, v2

    const-string v3, "applicationSpecifiedCompletions"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONDISPLAYCOMPLETIONS:[Ljava/lang/String;

    .line 900
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "LatinIMEOnWindowHidden"

    aput-object v3, v0, v2

    const-string v3, "isTextTruncated"

    aput-object v3, v0, v1

    const-string v3, "text"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONWINDOWHIDDEN:[Ljava/lang/String;

    .line 949
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEOnUpdateSelection"

    aput-object v3, v0, v2

    const-string v3, "lastSelectionStart"

    aput-object v3, v0, v1

    const-string v3, "lastSelectionEnd"

    aput-object v3, v0, v5

    const-string v3, "oldSelStart"

    aput-object v3, v0, v6

    const-string v3, "oldSelEnd"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "newSelStart"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "newSelEnd"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "composingSpanStart"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "composingSpanEnd"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "expectingUpdateSelection"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "expectingUpdateSelectionFromLogger"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "context"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONUPDATESELECTION:[Ljava/lang/String;

    .line 977
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEPickSuggestionManually"

    aput-object v3, v0, v2

    const-string v3, "replacedWord"

    aput-object v3, v0, v1

    const-string v3, "index"

    aput-object v3, v0, v5

    const-string v3, "suggestion"

    aput-object v3, v0, v6

    const-string v3, "x"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "y"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PICKSUGGESTIONMANUALLY:[Ljava/lang/String;

    .line 992
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEPunctuationSuggestion"

    aput-object v3, v0, v2

    const-string v3, "index"

    aput-object v3, v0, v1

    const-string v3, "suggestion"

    aput-object v3, v0, v5

    const-string v3, "x"

    aput-object v3, v0, v6

    const-string v3, "y"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PUNCTUATIONSUGGESTION:[Ljava/lang/String;

    .line 1004
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMESendKeyCodePoint"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SENDKEYCODEPOINT:[Ljava/lang/String;

    .line 1018
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "LatinIMESwapSwapperAndSpace"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SWAPSWAPPERANDSPACE:[Ljava/lang/String;

    .line 1025
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewOnLongPress"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_ONLONGPRESS:[Ljava/lang/String;

    .line 1032
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewSetKeyboard"

    aput-object v3, v0, v2

    const-string v3, "elementId"

    aput-object v3, v0, v1

    const-string v3, "locale"

    aput-object v3, v0, v5

    const-string v3, "orientation"

    aput-object v3, v0, v6

    const-string v3, "width"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "modeName"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "action"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "navigateNext"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "navigatePrevious"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "clobberSettingsKey"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "passwordInput"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "shortcutKeyEnabled"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "hasShortcutKey"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "languageSwitchKeyEnabled"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "isMultiLine"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "tw"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "th"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "keys"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_SETKEYBOARD:[Ljava/lang/String;

    .line 1067
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMERevertCommit"

    aput-object v3, v0, v2

    const-string v3, "originallyTypedWord"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_REVERTCOMMIT:[Ljava/lang/String;

    .line 1077
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnCancelInput"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCANCELINPUT:[Ljava/lang/String;

    .line 1085
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnCodeInput"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "outputText"

    aput-object v3, v0, v5

    const-string v3, "x"

    aput-object v3, v0, v6

    const-string v3, "y"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "ignoreModifierKey"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "altersCode"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "isEnabled"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCODEINPUT:[Ljava/lang/String;

    .line 1104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnRelease"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "withSliding"

    aput-object v3, v0, v5

    const-string v3, "ignoreModifierKey"

    aput-object v3, v0, v6

    const-string v3, "isEnabled"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONRELEASE:[Ljava/lang/String;

    .line 1120
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "PointerTrackerOnDownEvent"

    aput-object v3, v0, v2

    const-string v3, "deltaT"

    aput-object v3, v0, v1

    const-string v3, "distanceSquared"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONDOWNEVENT:[Ljava/lang/String;

    .line 1130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerOnMoveEvent"

    aput-object v3, v0, v2

    const-string v3, "x"

    aput-object v3, v0, v1

    const-string v3, "y"

    aput-object v3, v0, v5

    const-string v3, "lastX"

    aput-object v3, v0, v6

    const-string v3, "lastY"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONMOVEEVENT:[Ljava/lang/String;

    .line 1141
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "RichInputConnectionCommitCompletion"

    aput-object v3, v0, v2

    const-string v3, "completionInfo"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITCOMPLETION:[Ljava/lang/String;

    .line 1179
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionCommitText"

    aput-object v3, v0, v2

    const-string v3, "typedWord"

    aput-object v3, v0, v1

    const-string v3, "newCursorPosition"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITTEXT:[Ljava/lang/String;

    .line 1194
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionDeleteSurroundingText"

    aput-object v3, v0, v2

    const-string v3, "beforeLength"

    aput-object v3, v0, v1

    const-string v3, "afterLength"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_DELETESURROUNDINGTEXT:[Ljava/lang/String;

    .line 1206
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "RichInputConnectionFinishComposingText"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_FINISHCOMPOSINGTEXT:[Ljava/lang/String;

    .line 1214
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "RichInputConnectionPerformEditorAction"

    aput-object v3, v0, v2

    const-string v3, "imeActionNext"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_PERFORMEDITORACTION:[Ljava/lang/String;

    .line 1224
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSendKeyEvent"

    aput-object v3, v0, v2

    const-string v3, "eventTime"

    aput-object v3, v0, v1

    const-string v3, "action"

    aput-object v3, v0, v5

    const-string v3, "code"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SENDKEYEVENT:[Ljava/lang/String;

    .line 1237
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSetComposingText"

    aput-object v3, v0, v2

    const-string v3, "text"

    aput-object v3, v0, v1

    const-string v3, "newCursorPosition"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETCOMPOSINGTEXT:[Ljava/lang/String;

    .line 1252
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSetSelection"

    aput-object v3, v0, v2

    const-string v3, "from"

    aput-object v3, v0, v1

    const-string v3, "to"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETSELECTION:[Ljava/lang/String;

    .line 1263
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "SuddenJumpingTouchEventHandlerOnTouchEvent"

    aput-object v3, v0, v2

    const-string v3, "motionEvent"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUDDENJUMPINGTOUCHEVENTHANDLER_ONTOUCHEVENT:[Ljava/lang/String;

    .line 1276
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "SuggestionStripViewSetSuggestions"

    aput-object v3, v0, v2

    const-string v3, "suggestedWords"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUGGESTIONSTRIPVIEW_SETSUGGESTIONS:[Ljava/lang/String;

    .line 1289
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "UserTimestamp"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_USER_TIMESTAMP:[Ljava/lang/String;

    .line 1296
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Statistics"

    aput-object v3, v0, v2

    const-string v2, "charCount"

    aput-object v2, v0, v1

    const-string v1, "letterCount"

    aput-object v1, v0, v5

    const-string v1, "numberCount"

    aput-object v1, v0, v6

    const-string v1, "spaceCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deleteOpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wordCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isEmptyUponStarting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isEmptinessStateKnown"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "averageTimeBetweenKeys"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "averageTimeBeforeDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "averageTimeDuringRepeatedDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "averageTimeAfterDelete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_STATISTICS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 85
    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsPasswordView:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    .line 148
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mResumeTime:J

    .line 507
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    .line 151
    invoke-static {}, Lcom/android/inputmethod/research/Statistics;->getInstance()Lcom/android/inputmethod/research/Statistics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/research/ResearchLogger;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private checkForEmptyEditor()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    if-nez v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 329
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 333
    .local v2, textBefore:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/research/Statistics;->setIsEmptyUponStarting(Z)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 338
    .local v1, textAfter:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/research/Statistics;->setIsEmptyUponStarting(Z)V

    goto :goto_0

    .line 342
    :cond_3
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v3, v5}, Lcom/android/inputmethod/research/Statistics;->setIsEmptyUponStarting(Z)V

    goto :goto_0
.end method

.method private cleanupLoggingDir(Ljava/io/File;J)V
    .locals 6
    .parameter "dir"
    .parameter "time"

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 219
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "researchLog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1           #file:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private createLogFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .parameter "filesDir"

    .prologue
    const/16 v2, 0x2d

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "researchLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUUIDString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private declared-synchronized enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 683
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/research/LogUnit;->addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 660
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/research/LogUnit;->addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public static getAndClearLatinIMEExpectingUpdateSelection()Z
    .locals 2

    .prologue
    .line 895
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sLatinIMEExpectingUpdateSelection:Z

    .line 896
    .local v0, returnValue:Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/inputmethod/research/ResearchLogger;->sLatinIMEExpectingUpdateSelection:Z

    .line 897
    return v0
.end method

.method public static getInstance()Lcom/android/inputmethod/research/ResearchLogger;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->sInstance:Lcom/android/inputmethod/research/ResearchLogger;

    return-object v0
.end method

.method private static getUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5
    .parameter "prefs"

    .prologue
    .line 766
    const-string v3, "pref_research_logger_uuid"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, uuidString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 768
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 769
    .local v1, uuid:Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 771
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_research_logger_uuid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 772
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 774
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #uuid:Ljava/util/UUID;
    :cond_0
    return-object v2
.end method

.method private hasOnlyLetters(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v3, 0x1

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 719
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 720
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 721
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 722
    const/4 v3, 0x0

    .line 725
    .end local v0           #codePoint:I
    :cond_0
    return v3

    .line 719
    .restart local v0       #codePoint:I
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0
.end method

.method private hasSeenSplash()Z
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_research_has_seen_splash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isAllowedToLog()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsPasswordView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static latinIME_onCodeInput(III)V
    .locals 6
    .parameter "code"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 871
    .local v1, time:J
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 872
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitFromCodePoint(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 875
    .local v3, values:[Ljava/lang/Object;
    sget-object v4, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONCODEINPUT:[Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    invoke-direct {v0}, Lcom/android/inputmethod/research/ResearchLogger;->setCurrentLogUnitContainsDigitFlag()V

    .line 879
    :cond_0
    iget-object v4, v0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v4, p0, v1, v2}, Lcom/android/inputmethod/research/Statistics;->recordChar(IJ)V

    .line 880
    return-void
.end method

.method public static latinIME_onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "applicationSpecifiedCompletions"

    .prologue
    .line 887
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 890
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONDISPLAYCOMPLETIONS:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    return-void
.end method

.method public static latinIME_onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "editorInfo"
    .parameter "prefs"

    .prologue
    .line 793
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v3

    .line 794
    .local v3, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    invoke-direct {v3}, Lcom/android/inputmethod/research/ResearchLogger;->start()V

    .line 795
    if-eqz p0, :cond_0

    .line 796
    iget-object v0, v3, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 799
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 801
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 802
    .local v5, versionCode:Ljava/lang/Integer;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 803
    .local v6, versionName:Ljava/lang/String;
    const/16 v7, 0xb

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/android/inputmethod/research/ResearchLogger;->mUUIDString:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x5

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x6

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x7

    aput-object p1, v4, v7

    const/16 v7, 0x8

    aput-object v5, v4, v7

    const/16 v7, 0x9

    aput-object v6, v4, v7

    const/16 v7, 0xa

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 810
    .local v4, values:[Ljava/lang/Object;
    sget-object v7, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONSTARTINPUTVIEWINTERNAL:[Ljava/lang/String;

    invoke-direct {v3, v7, v4}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #values:[Ljava/lang/Object;
    .end local v5           #versionCode:Ljava/lang/Integer;
    .end local v6           #versionName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 811
    .restart local v0       #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 812
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static latinIME_onUpdateSelection(IIIIIIIIZZLcom/android/inputmethod/latin/RichInputConnection;)V
    .locals 8
    .parameter "lastSelectionStart"
    .parameter "lastSelectionEnd"
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "composingSpanStart"
    .parameter "composingSpanEnd"
    .parameter "expectingUpdateSelection"
    .parameter "expectingUpdateSelectionFromLogger"
    .parameter "connection"

    .prologue
    .line 960
    const-string v5, ""

    .line 961
    .local v5, word:Ljava/lang/String;
    if-eqz p10, :cond_0

    .line 962
    const-string v6, " \t\n\r"

    const/4 v7, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v6, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordRangeAtCursor(Ljava/lang/String;I)Lcom/android/inputmethod/latin/RichInputConnection$Range;

    move-result-object v1

    .line 963
    .local v1, range:Lcom/android/inputmethod/latin/RichInputConnection$Range;
    if-eqz v1, :cond_0

    .line 964
    iget-object v5, v1, Lcom/android/inputmethod/latin/RichInputConnection$Range;->mWord:Ljava/lang/String;

    .line 967
    .end local v1           #range:Lcom/android/inputmethod/latin/RichInputConnection$Range;
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v2

    .line 968
    .local v2, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    invoke-direct {v2, v5}, Lcom/android/inputmethod/research/ResearchLogger;->scrubWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, scrubbedWord:Ljava/lang/String;
    const/16 v6, 0xb

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x8

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x9

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xa

    aput-object v3, v4, v6

    .line 974
    .local v4, values:[Ljava/lang/Object;
    sget-object v6, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONUPDATESELECTION:[Ljava/lang/String;

    invoke-direct {v2, v6, v4}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method public static latinIME_onWindowHidden(IILandroid/view/inputmethod/InputConnection;)V
    .locals 6
    .parameter "savedSelectionStart"
    .parameter "savedSelectionEnd"
    .parameter "ic"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 905
    if-eqz p2, :cond_0

    .line 910
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 911
    const v3, 0x102001f

    invoke-interface {p2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 912
    invoke-interface {p2, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 913
    .local v0, charSequence:Ljava/lang/CharSequence;
    invoke-interface {p2, p0, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 914
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 915
    sput-boolean v4, Lcom/android/inputmethod/research/ResearchLogger;->sLatinIMEExpectingUpdateSelection:Z

    .line 916
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .line 939
    .local v2, values:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 940
    const-string v3, ""

    aput-object v3, v2, v4

    .line 942
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    .line 943
    .local v1, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    sget-object v3, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONWINDOWHIDDEN:[Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    invoke-virtual {v1}, Lcom/android/inputmethod/research/ResearchLogger;->commitCurrentLogUnit()V

    .line 945
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/research/ResearchLogger;->stop()V

    .line 947
    .end local v0           #charSequence:Ljava/lang/CharSequence;
    .end local v1           #researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    .end local v2           #values:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static latinIME_pickSuggestionManually(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 5
    .parameter "replacedWord"
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/4 v4, -0x2

    .line 982
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitsFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 987
    .local v1, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 988
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PICKSUGGESTIONMANUALLY:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    return-void

    .line 982
    .end local v0           #researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    .end local v1           #values:[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitsFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static latinIME_punctuationSuggestion(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/4 v3, -0x2

    .line 997
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1001
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PUNCTUATIONSUGGESTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    return-void
.end method

.method public static latinIME_revertCommit(Ljava/lang/String;)V
    .locals 3
    .parameter "originallyTypedWord"

    .prologue
    .line 1071
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1074
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_REVERTCOMMIT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    return-void
.end method

.method public static latinIME_sendKeyCodePoint(I)V
    .locals 4
    .parameter "code"

    .prologue
    .line 1008
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitFromCodePoint(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1011
    .local v1, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 1012
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SENDKEYCODEPOINT:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    invoke-direct {v0}, Lcom/android/inputmethod/research/ResearchLogger;->setCurrentLogUnitContainsDigitFlag()V

    .line 1016
    :cond_0
    return-void
.end method

.method public static latinIME_swapSwapperAndSpace()V
    .locals 3

    .prologue
    .line 1022
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SWAPSWAPPERANDSPACE:[Ljava/lang/String;

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    return-void
.end method

.method private static logStatistics()V
    .locals 5

    .prologue
    .line 1302
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 1303
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    iget-object v1, v0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    .line 1304
    .local v1, statistics:Lcom/android/inputmethod/research/Statistics;
    const/16 v3, 0xc

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mCharCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mLetterCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mNumberCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mSpaceCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mDeleteKeyCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, v1, Lcom/android/inputmethod/research/Statistics;->mWordCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, v1, Lcom/android/inputmethod/research/Statistics;->mIsEmptyUponStarting:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, v1, Lcom/android/inputmethod/research/Statistics;->mIsEmptinessStateKnown:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, v1, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v4}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->getAverageTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, v1, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v4}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->getAverageTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v4}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->getAverageTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, v1, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v4}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->getAverageTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1313
    .local v2, values:[Ljava/lang/Object;
    sget-object v3, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_STATISTICS:[Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    return-void
.end method

.method public static mainKeyboardView_onLongPress()V
    .locals 3

    .prologue
    .line 1029
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_ONLONGPRESS:[Ljava/lang/String;

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    return-void
.end method

.method public static mainKeyboardView_processMotionEvent(Landroid/view/MotionEvent;IJIIII)V
    .locals 6
    .parameter "me"
    .parameter "action"
    .parameter "eventTime"
    .parameter "index"
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 844
    if-eqz p0, :cond_0

    .line 846
    packed-switch p1, :pswitch_data_0

    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, actionString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    .line 857
    .local v2, size:F
    invoke-virtual {p0, p4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    .line 858
    .local v1, pressure:F
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 861
    .local v3, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_PROCESSMOTIONEVENT:[Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    .end local v0           #actionString:Ljava/lang/String;
    .end local v1           #pressure:F
    .end local v2           #size:F
    .end local v3           #values:[Ljava/lang/Object;
    :cond_0
    return-void

    .line 847
    :pswitch_0
    const-string v0, "CANCEL"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 848
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "UP"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 849
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "DOWN"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "POINTER_UP"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "POINTER_DOWN"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 852
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "MOVE"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 853
    .end local v0           #actionString:Ljava/lang/String;
    :pswitch_6
    const-string v0, "OUTSIDE"

    .restart local v0       #actionString:Ljava/lang/String;
    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static mainKeyboardView_setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 7
    .parameter "keyboard"

    .prologue
    .line 1039
    if-eqz p0, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 1041
    .local v1, kid:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v0

    .line 1042
    .local v0, isPasswordView:Z
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v3

    invoke-direct {v3, v0}, Lcom/android/inputmethod/research/ResearchLogger;->setIsPasswordView(Z)V

    .line 1043
    const/16 v3, 0x11

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/KeyboardId;->elementIdToName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const-string v6, "KeyboardLayoutSet"

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-boolean v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-boolean v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    iget-boolean v4, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    aput-object v4, v2, v3

    .line 1062
    .local v2, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v3

    invoke-direct {v3, v0}, Lcom/android/inputmethod/research/ResearchLogger;->setIsPasswordView(Z)V

    .line 1063
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_SETKEYBOARD:[Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    .end local v0           #isPasswordView:Z
    .end local v1           #kid:Lcom/android/inputmethod/keyboard/KeyboardId;
    .end local v2           #values:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private maybeShowSplashScreen()V
    .locals 7

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->hasSeenSplash()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 250
    .local v3, windowToken:Landroid/os/IBinder;
    :goto_1
    if-eqz v3, :cond_0

    .line 253
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b009a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0029

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/inputmethod/research/ResearchLogger$3;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/research/ResearchLogger$3;-><init>(Lcom/android/inputmethod/research/ResearchLogger;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/android/inputmethod/research/ResearchLogger$2;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/research/ResearchLogger$2;-><init>(Lcom/android/inputmethod/research/ResearchLogger;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/inputmethod/research/ResearchLogger$1;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/research/ResearchLogger$1;-><init>(Lcom/android/inputmethod/research/ResearchLogger;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    .line 285
    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 286
    .local v2, w:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 287
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 288
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 289
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 290
    const/high16 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 291
    iget-object v4, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 248
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #w:Landroid/view/Window;
    .end local v3           #windowToken:Landroid/os/IBinder;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onWordComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 729
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWordComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/research/ResearchLogger;->hasOnlyLetters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/research/LogUnit;->setWord(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics;->recordWordEntered()V

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->commitCurrentLogUnit()V

    .line 735
    return-void
.end method

.method public static pointerTracker_callListenerOnCancelInput()V
    .locals 3

    .prologue
    .line 1081
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCANCELINPUT:[Ljava/lang/String;

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    return-void
.end method

.method public static pointerTracker_callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;IIZZI)V
    .locals 4
    .parameter "key"
    .parameter "x"
    .parameter "y"
    .parameter "ignoreModifierKey"
    .parameter "altersCode"
    .parameter "code"

    .prologue
    .line 1092
    if-eqz p0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->getOutputText()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, outputText:Ljava/lang/String;
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p5}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitFromCodePoint(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1099
    .local v1, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCODEINPUT:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    .end local v0           #outputText:Ljava/lang/String;
    .end local v1           #values:[Ljava/lang/Object;
    :cond_0
    return-void

    .line 1094
    .restart local v0       #outputText:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitsFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static pointerTracker_callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZZ)V
    .locals 3
    .parameter "key"
    .parameter "primaryCode"
    .parameter "withSliding"
    .parameter "ignoreModifierKey"

    .prologue
    .line 1110
    if-eqz p0, :cond_0

    .line 1111
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitFromCodePoint(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1115
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONRELEASE:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    .end local v0           #values:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static pointerTracker_onDownEvent(JI)V
    .locals 3
    .parameter "deltaT"
    .parameter "distanceSquared"

    .prologue
    .line 1124
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1127
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONDOWNEVENT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    return-void
.end method

.method public static pointerTracker_onMoveEvent(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "lastX"
    .parameter "lastY"

    .prologue
    .line 1135
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1138
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONMOVEEVENT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public static prefsChanged(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 829
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 830
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 833
    .local v1, values:[Ljava/lang/Object;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    return-void
.end method

.method private restart()V
    .locals 0

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->stop()V

    .line 426
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->start()V

    .line 427
    return-void
.end method

.method private resumeLogging()V
    .locals 2

    .prologue
    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mResumeTime:J

    .line 438
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->updateSuspendedState()V

    .line 439
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->requestIndicatorRedraw()V

    .line 440
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->restart()V

    .line 443
    :cond_0
    return-void
.end method

.method public static richInputConnection_commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "completionInfo"

    .prologue
    .line 1145
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1148
    .local v1, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 1149
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITCOMPLETION:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    return-void
.end method

.method public static richInputConnection_commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0
    .parameter "correctionInfo"

    .prologue
    .line 1177
    return-void
.end method

.method public static richInputConnection_commitText(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "typedWord"
    .parameter "newCursorPosition"

    .prologue
    .line 1184
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/research/ResearchLogger;->scrubDigitsFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, scrubbedWord:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1188
    .local v2, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 1189
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    sget-object v3, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITTEXT:[Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    invoke-direct {v0, v1}, Lcom/android/inputmethod/research/ResearchLogger;->onWordComplete(Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method public static richInputConnection_deleteSurroundingText(II)V
    .locals 3
    .parameter "beforeLength"
    .parameter "afterLength"

    .prologue
    .line 1199
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1202
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_DELETESURROUNDINGTEXT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    return-void
.end method

.method public static richInputConnection_finishComposingText()V
    .locals 3

    .prologue
    .line 1210
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_FINISHCOMPOSINGTEXT:[Ljava/lang/String;

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    return-void
.end method

.method public static richInputConnection_performEditorAction(I)V
    .locals 3
    .parameter "imeActionNext"

    .prologue
    .line 1218
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1221
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_PERFORMEDITORACTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    return-void
.end method

.method public static richInputConnection_sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "keyEvent"

    .prologue
    .line 1228
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1233
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SENDKEYEVENT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    return-void
.end method

.method public static richInputConnection_setComposingText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 1242
    if-nez p0, :cond_0

    .line 1243
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setComposingText is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1245
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1248
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETCOMPOSINGTEXT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    return-void
.end method

.method public static richInputConnection_setSelection(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1256
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1259
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETSELECTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    return-void
.end method

.method public static scheduleUploadingService(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/32 v2, 0x36ee80

    const/4 v4, 0x0

    .line 208
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/android/inputmethod/research/UploaderService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v7, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 210
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 212
    .local v0, manager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 213
    const/4 v1, 0x2

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 215
    return-void
.end method

.method private static scrubDigitFromCodePoint(I)I
    .locals 1
    .parameter "codePoint"

    .prologue
    .line 738
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/android/inputmethod/research/ResearchLogger;->DIGIT_REPLACEMENT_CODEPOINT:I

    .end local p0
    :cond_0
    return p0
.end method

.method static scrubDigitsFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 742
    const/4 v3, 0x0

    .line 743
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 744
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 745
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 746
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    if-nez v3, :cond_0

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 749
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_0
    sget v4, Lcom/android/inputmethod/research/ResearchLogger;->DIGIT_REPLACEMENT_CODEPOINT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 744
    :cond_1
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 753
    :cond_2
    if-eqz v3, :cond_1

    .line 754
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 758
    .end local v0           #codePoint:I
    :cond_3
    if-nez v3, :cond_4

    .line 761
    .end local p0
    :goto_2
    return-object p0

    .restart local p0
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private scrubWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "word"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-nez v0, :cond_1

    .line 779
    const-string p1, "\ue001"

    .line 784
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 781
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const-string p1, "\ue001"

    goto :goto_0
.end method

.method private setCurrentLogUnitContainsDigitFlag()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/LogUnit;->setContainsDigit()V

    .line 667
    return-void
.end method

.method private setIsPasswordView(Z)V
    .locals 0
    .parameter "isPasswordView"

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsPasswordView:Z

    .line 591
    return-void
.end method

.method private setLoggingAllowed(Z)V
    .locals 2
    .parameter "enableLogging"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "usability_study_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    sput-boolean p1, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    goto :goto_0
.end method

.method private start()V
    .locals 2

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->maybeShowSplashScreen()V

    .line 352
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->updateSuspendedState()V

    .line 353
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->requestIndicatorRedraw()V

    .line 354
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics;->reset()V

    .line 355
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->checkForEmptyEditor()V

    .line 356
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    :cond_2
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    const-string v1, "IME storage directory does not exist.  Cannot start logging."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-nez v0, :cond_4

    .line 365
    new-instance v0, Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/research/ResearchLogger;->createLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/research/ResearchLog;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    .line 366
    new-instance v0, Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/research/MainLogBuffer;-><init>(Lcom/android/inputmethod/research/ResearchLog;)V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/MainLogBuffer;->setSuggest(Lcom/android/inputmethod/latin/Suggest;)V

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/research/ResearchLogger;->createLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/research/ResearchLog;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    .line 373
    new-instance v0, Lcom/android/inputmethod/research/LogBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/inputmethod/research/LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    goto :goto_0
.end method

.method public static suddenJumpingTouchEventHandler_onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "me"

    .prologue
    .line 1267
    if-eqz p0, :cond_0

    .line 1268
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1271
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUDDENJUMPINGTOUCHEVENTHANDLER_ONTOUCHEVENT:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    .end local v0           #values:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static suggestionStripView_setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 3
    .parameter "suggestedWords"

    .prologue
    .line 1280
    if-eqz p0, :cond_0

    .line 1281
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1284
    .local v0, values:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUGGESTIONSTRIPVIEW_SETSUGGESTIONS:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/inputmethod/research/ResearchLogger;->enqueuePotentiallyPrivateEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    .end local v0           #values:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private suspendLoggingUntil(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    .line 432
    iput-wide p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mResumeTime:J

    .line 433
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->requestIndicatorRedraw()V

    .line 434
    return-void
.end method

.method private updateSuspendedState()V
    .locals 4

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 447
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mResumeTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, didAbortMainLog:Z
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/LogBuffer;->clear()V

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/ResearchLog;->blockingAbort()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 408
    :goto_0
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 411
    .local v0, didAbortFeedbackLog:Z
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/LogBuffer;->clear()V

    .line 414
    :try_start_1
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/ResearchLog;->blockingAbort()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 419
    :goto_1
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    .line 421
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 415
    :catch_0
    move-exception v2

    goto :goto_1

    .line 404
    .end local v0           #didAbortFeedbackLog:Z
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method commitCurrentLogUnit()V
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/LogUnit;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/MainLogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 695
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/MainLogBuffer;->isSafeToLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 698
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/MainLogBuffer;->resetWordCounter()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/LogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 704
    :cond_1
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    .line 705
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    const-string v1, "commitCurrentLogUnit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2
    return-void
.end method

.method public init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "ims"
    .parameter "prefs"

    .prologue
    const-wide/32 v11, 0x5265c00

    const/4 v10, 0x0

    .line 159
    sget-boolean v7, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 160
    :cond_0
    if-nez p1, :cond_4

    .line 161
    sget-object v7, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    const-string v8, "IMS is null; logging is off"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 169
    invoke-static {p2}, Lcom/android/inputmethod/research/ResearchLogger;->getUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUUIDString:Ljava/lang/String;

    .line 170
    const-string v7, "usability_study_mode"

    invoke-interface {p2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 171
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v7, "usability_study_mode"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v7, "usability_study_mode"

    invoke-interface {p2, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    .line 176
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    const-string v7, "pref_last_cleanup_time"

    const-wide/16 v8, 0x0

    invoke-interface {p2, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 179
    .local v1, lastCleanupTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 180
    .local v3, now:J
    add-long v7, v1, v11

    cmp-long v7, v7, v3

    if-gez v7, :cond_3

    .line 181
    sub-long v5, v3, v11

    .line 182
    .local v5, timeHorizon:J
    iget-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-direct {p0, v7, v5, v6}, Lcom/android/inputmethod/research/ResearchLogger;->cleanupLoggingDir(Ljava/io/File;J)V

    .line 183
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_last_cleanup_time"

    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #lastCleanupTime:J
    .end local v3           #now:J
    .end local v5           #timeHorizon:J
    :cond_3
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 189
    iput-object p2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    .line 190
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-class v9, Lcom/android/inputmethod/research/UploaderService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUploadIntent:Landroid/content/Intent;

    .line 191
    iget-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v8, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUploadIntent:Landroid/content/Intent;

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUploadPendingIntent:Landroid/app/PendingIntent;

    .line 196
    return-void

    .line 163
    :cond_4
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    .line 164
    iget-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 165
    :cond_5
    sget-object v7, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    const-string v8, "IME storage directory does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initSuggest(Lcom/android/inputmethod/latin/Suggest;)V
    .locals 2
    .parameter "suggest"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 584
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/MainLogBuffer;->setSuggest(Lcom/android/inputmethod/latin/Suggest;)V

    .line 587
    :cond_0
    return-void
.end method

.method public latinIME_onFinishInputInternal()V
    .locals 0

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->stop()V

    .line 819
    return-void
.end method

.method public mainKeyboardView_onAttachedToWindow(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V
    .locals 0
    .parameter "mainKeyboardView"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 228
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->maybeShowSplashScreen()V

    .line 229
    return-void
.end method

.method public mainKeyboardView_onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 233
    return-void
.end method

.method public onLeavingSendFeedbackDialog()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    .line 580
    return-void
.end method

.method public onResearchKeySelected(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 2
    .parameter "latinIME"

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    if-eqz v0, :cond_0

    .line 468
    const v0, 0x7f0b0099

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/research/ResearchLogger;->presentFeedbackDialog(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 454
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v0, "usability_study_mode"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    .line 458
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    if-nez v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->abort()Z

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->requestIndicatorRedraw()V

    .line 462
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    .line 463
    invoke-static {p1}, Lcom/android/inputmethod/research/ResearchLogger;->prefsChanged(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onUserLoggingConsent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 295
    invoke-direct {p0, v2}, Lcom/android/inputmethod/research/ResearchLogger;->setLoggingAllowed(Z)V

    .line 296
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_research_has_seen_splash"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->restart()V

    goto :goto_0
.end method

.method public paintIndicator(Lcom/android/inputmethod/keyboard/KeyboardView;Landroid/graphics/Paint;Landroid/graphics/Canvas;II)V
    .locals 9
    .parameter "view"
    .parameter "paint"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 623
    .local v6, savedColor:I
    const/high16 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 624
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    .line 625
    .local v8, savedStyle:Landroid/graphics/Paint$Style;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    .line 635
    .local v7, savedStrokeWidth:F
    const/high16 v0, 0x4040

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 636
    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 638
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    .end local v6           #savedColor:I
    .end local v7           #savedStrokeWidth:F
    .end local v8           #savedStyle:Landroid/graphics/Paint$Style;
    :cond_0
    return-void
.end method

.method public presentFeedbackDialog(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 1
    .parameter "latinIME"

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    .line 510
    const-class v0, Lcom/android/inputmethod/research/FeedbackActivity;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchKeyboardedDialogActivity(Ljava/lang/Class;)V

    .line 511
    return-void
.end method

.method publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V
    .locals 1
    .parameter "logBuffer"
    .parameter "researchLog"
    .parameter "isIncludingPrivateData"

    .prologue
    .line 712
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/research/LogBuffer;->shiftOut()Lcom/android/inputmethod/research/LogUnit;

    move-result-object v0

    .local v0, logUnit:Lcom/android/inputmethod/research/LogUnit;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p2, v0, p3}, Lcom/android/inputmethod/research/ResearchLog;->publish(Lcom/android/inputmethod/research/LogUnit;Z)V

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method public requestIndicatorRedraw()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    goto :goto_0
.end method

.method public sendFeedback(Ljava/lang/String;Z)V
    .locals 5
    .parameter "feedbackContents"
    .parameter "includeHistory"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-nez v2, :cond_0

    .line 569
    :goto_0
    return-void

    .line 549
    :cond_0
    if-eqz p2, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->commitCurrentLogUnit()V

    .line 554
    :goto_1
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    .line 555
    .local v0, feedbackLogUnit:Lcom/android/inputmethod/research/LogUnit;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 558
    .local v1, values:[Ljava/lang/Object;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_FEEDBACK:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/inputmethod/research/LogUnit;->addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 560
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/research/LogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 561
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/research/ResearchLogger;->publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 562
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    new-instance v3, Lcom/android/inputmethod/research/ResearchLogger$4;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/research/ResearchLogger$4;-><init>(Lcom/android/inputmethod/research/ResearchLogger;)V

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/research/ResearchLog;->close(Ljava/lang/Runnable;)V

    .line 568
    new-instance v2, Lcom/android/inputmethod/research/ResearchLog;

    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/research/ResearchLogger;->createLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/research/ResearchLog;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    goto :goto_0

    .line 552
    .end local v0           #feedbackLogUnit:Lcom/android/inputmethod/research/LogUnit;
    .end local v1           #values:[Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/LogBuffer;->clear()V

    goto :goto_1
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->logStatistics()V

    .line 382
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->commitCurrentLogUnit()V

    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 386
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/research/ResearchLog;->close(Ljava/lang/Runnable;)V

    .line 387
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/research/ResearchLog;->close(Ljava/lang/Runnable;)V

    .line 391
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    .line 393
    :cond_1
    return-void
.end method

.method public uploadNow()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUploadIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 576
    return-void
.end method

.method public userTimestamp()V
    .locals 3

    .prologue
    .line 1293
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_USER_TIMESTAMP:[Ljava/lang/String;

    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    return-void
.end method
