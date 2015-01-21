.class public final Lcom/android/inputmethod/latin/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.implements Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;
.implements Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;
.implements Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;,
        Lcom/android/inputmethod/latin/LatinIME$SubtypeState;,
        Lcom/android/inputmethod/latin/LatinIME$UIHandler;
    }
.end annotation


# static fields
.field public static final CODE_SHOW_INPUT_METHOD_PICKER:I = 0x1

.field private static DEBUG:Z = false

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final EXTENDED_TOUCHABLE_REGION_HEIGHT:I = 0x64

.field private static final NOT_A_CURSOR_POSITION:I = -0x1

.field private static final PENDING_IMS_CALLBACK_DURATION:I = 0x320

.field private static final QUICK_PRESS:I = 0xc8

.field private static final SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final SPACE_STATE_DOUBLE:I = 0x1

.field private static final SPACE_STATE_NONE:I = 0x0

.field private static final SPACE_STATE_PHANTOM:I = 0x4

.field private static final SPACE_STATE_SWAP_PUNCTUATION:I = 0x2

.field private static final SPACE_STATE_WEAK:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRACE:Z = false

.field private static final TRIM_ON_LOW_MEMORY:Z = true

.field private static mIsMediatekGrammarCheckerEnabled:Z


# instance fields
.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mConfigHardKeyboard:I

.field private mConfigKeyboard:I

.field private mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

.field private mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

.field private mDeleteCount:I

.field private mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayOrientation:I

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExpectingUpdateSelection:Z

.field private mExtractArea:Landroid/view/View;

.field private mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

.field private mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

.field public final mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mIsAutoCorrectionIndicatorOn:Z

.field private final mIsHardwareAcceleratedDrawingEnabled:Z

.field private mIsMainDictionaryAvailable:Z

.field private mIsUserDictionaryAvailable:Z

.field private mKeyPreviewBackingView:Landroid/view/View;

.field final mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSpaceState:I

.field private final mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

.field private final mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

.field private mSuggestionsContainer:Landroid/view/View;

.field private mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

.field private mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

.field private final mWordComposer:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 441
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 154
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    .line 161
    sget-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 164
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 165
    new-instance v0, Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/RichInputConnection;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    .line 169
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 170
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 184
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 205
    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigKeyboard:I

    .line 206
    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigHardKeyboard:I

    .line 2520
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 442
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 443
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 444
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatUtils;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    .line 446
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware accelerated drawing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/WordComposer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/latin/LatinIME;I)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/inputmethod/latin/LatinIME;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/inputmethod/latin/LatinIME;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinIME;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "suggestion"

    .prologue
    const/4 v4, 0x0

    .line 2353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 2381
    :goto_0
    return-object v1

    .line 2354
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 2359
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-nez v5, :cond_2

    move-object v1, v4

    goto :goto_0

    .line 2361
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    .line 2362
    .local v3, userHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    if-eqz v3, :cond_7

    .line 2363
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v6, v6, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2366
    .local v1, prevWord:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->wasAutoCapitalized()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2374
    .local v2, secondWord:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/AutoCorrection;->getMaxFrequency(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;)I

    move-result v0

    .line 2376
    .local v0, maxFreq:I
    if-nez v0, :cond_4

    move-object v1, v4

    goto :goto_0

    .line 2370
    .end local v0           #maxFreq:I
    .end local v2           #secondWord:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #secondWord:Ljava/lang/String;
    goto :goto_1

    .line 2377
    .restart local v0       #maxFreq:I
    :cond_4
    if-nez v1, :cond_5

    move-object v5, v4

    :goto_2
    if-lez v0, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v5, v2, v4}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->addToUserHistory(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .end local v0           #maxFreq:I
    .end local v1           #prevWord:Ljava/lang/CharSequence;
    .end local v2           #secondWord:Ljava/lang/String;
    :cond_7
    move-object v1, v4

    .line 2381
    goto :goto_0
.end method

.method private static canBeFollowedByPeriod(I)Z
    .locals 1
    .parameter "codePoint"

    .prologue
    .line 1322
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSuggestionStrip()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2081
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 2082
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 2083
    return-void
.end method

.method private commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 5
    .parameter "chosenWord"
    .parameter "commitType"
    .parameter "separatorString"

    .prologue
    .line 2329
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 2330
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    invoke-static {p0, p1, v1, v3}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;Z)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 2333
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2338
    .local v0, prevWord:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p3, v0}, Lcom/android/inputmethod/latin/WordComposer;->commitWord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/LastComposedWord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 2340
    return-void
.end method

.method private commitCurrentAutoCorrection(Ljava/lang/String;)V
    .locals 7
    .parameter "separatorString"

    .prologue
    .line 2206
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2207
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V

    .line 2209
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getAutoCorrectionOrNull()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2210
    .local v1, typedAutoCorrection:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v2

    .line 2211
    .local v2, typedWord:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 2213
    .local v0, autoCorrection:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_3

    .line 2214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2215
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "We have an auto-correction but the typed word is empty? Impossible! I must commit suicide."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #autoCorrection:Ljava/lang/CharSequence;
    :cond_1
    move-object v0, v2

    .line 2211
    goto :goto_0

    .line 2222
    .restart local v0       #autoCorrection:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 2223
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, p1}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 2225
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2232
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v4, Landroid/view/inputmethod/CorrectionInfo;

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v4, v5, v2, v0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2237
    :cond_3
    return-void
.end method

.method private commitTyped(Ljava/lang/String;)V
    .locals 2
    .parameter "separatorString"

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, typedWord:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1257
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static getActionId(Lcom/android/inputmethod/keyboard/Keyboard;)I
    .locals 1
    .parameter "keyboard"

    .prologue
    .line 1393
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeActionId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getActualCapsMode()I
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 1278
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardShiftMode()I

    move-result v1

    .line 1279
    .local v1, keyboardShiftMode:I
    if-eq v1, v2, :cond_0

    .line 1285
    .end local v1           #keyboardShiftMode:I
    :goto_0
    return v1

    .line 1280
    .restart local v1       #keyboardShiftMode:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v0

    .line 1281
    .local v0, auto:I
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_1

    .line 1282
    const/4 v1, 0x7

    goto :goto_0

    .line 1284
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 1285
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdjustedBackingViewHeight()I
    .locals 10

    .prologue
    .line 1145
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1146
    .local v0, currentHeight:I
    if-lez v0, :cond_0

    .line 1171
    .end local v0           #currentHeight:I
    :goto_0
    return v0

    .line 1150
    .restart local v0       #currentHeight:I
    :cond_0
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v3

    .line 1151
    .local v3, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-nez v3, :cond_1

    .line 1152
    const/4 v0, 0x0

    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1155
    .local v2, keyboardHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1156
    .local v8, suggestionsHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1157
    .local v1, displayHeight:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1158
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1159
    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 1160
    .local v4, notificationBarHeight:I
    sub-int v9, v1, v4

    sub-int/2addr v9, v8

    sub-int v7, v9, v2

    .line 1163
    .local v7, remainingHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1167
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v9, v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setMoreSuggestionsHeight(I)I

    .line 1168
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1170
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 9
    .parameter "sessionId"

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v6

    .line 2133
    .local v6, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_1

    .line 2135
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 2148
    :goto_0
    return-object v0

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v8

    .line 2142
    .local v8, typedWord:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v3, v0, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v3, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2145
    .local v2, prevWord:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWords(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;ZI)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    .line 2148
    .local v7, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-direct {p0, v8, v7}, Lcom/android/inputmethod/latin/LatinIME;->maybeRetrieveOlderSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    goto :goto_0

    .line 2142
    .end local v2           #prevWord:Ljava/lang/CharSequence;
    .end local v7           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method private handleBackspace(I)V
    .locals 6
    .parameter "spaceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1776
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftState()V

    .line 1778
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1779
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    .line 1780
    .local v0, length:I
    if-lez v0, :cond_2

    .line 1782
    const/4 v2, 0x4

    if-ne v2, p1, :cond_1

    .line 1783
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1787
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1788
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1859
    .end local v0           #length:I
    :cond_0
    :goto_1
    return-void

    .line 1785
    .restart local v0       #length:I
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    goto :goto_0

    .line 1790
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v4, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_1

    .line 1793
    .end local v0           #length:I
    :cond_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LastComposedWord;->canRevertCommit()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1797
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->revertCommit()V

    goto :goto_1

    .line 1800
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->sameAsTextBeforeCursor(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1804
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1805
    .restart local v0       #length:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v0, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1806
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1812
    .end local v0           #length:I
    :cond_5
    if-ne v4, p1, :cond_8

    .line 1813
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1814
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->revertDoubleSpace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1828
    :cond_6
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-eq v2, v3, :cond_9

    .line 1830
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    sub-int v1, v2, v3

    .line 1831
    .local v1, lengthToDelete:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->setSelection(II)V

    .line 1832
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v1, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1855
    .end local v1           #lengthToDelete:I
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1856
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->restartSuggestionsOnWordBeforeCursorIfAtEndOfWord()V

    goto :goto_1

    .line 1819
    :cond_8
    const/4 v2, 0x2

    if-ne v2, p1, :cond_6

    .line 1820
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->revertSwapPunctuation()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 1835
    :cond_9
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ne v2, v3, :cond_a

    .line 1837
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v3, "Backspace when we don\'t know the selection position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_a
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_b

    .line 1847
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 1851
    :goto_3
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_7

    .line 1852
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v4, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_2

    .line 1849
    :cond_b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v4, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_3
.end method

.method private handleCharacter(IIII)V
    .locals 11
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"
    .parameter "spaceState"

    .prologue
    .line 1884
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    .line 1887
    .local v0, isComposingWord:Z
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    if-eqz v7, :cond_0

    .line 1888
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1889
    .local v5, strBefore:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1891
    .local v4, str:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    int-to-char v8, p1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->isValidInput(Ljava/lang/String;CI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1959
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #strBefore:Ljava/lang/String;
    :goto_0
    return-void

    .line 1897
    :cond_0
    const/4 v7, 0x4

    if-ne v7, p4, :cond_2

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1899
    if-eqz v0, :cond_1

    .line 1901
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Should not be composing here"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1903
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1909
    :cond_2
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/RichInputConnection;->isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1917
    const/16 v7, 0x27

    if-eq v7, p1, :cond_8

    const/4 v0, 0x1

    .line 1922
    :goto_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 1924
    :cond_4
    if-eqz v0, :cond_a

    .line 1926
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;->isInvalidCoordinate(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;->isInvalidCoordinate(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1928
    :cond_5
    move v2, p2

    .line 1929
    .local v2, keyX:I
    move v3, p3

    .line 1936
    .local v3, keyY:I
    :goto_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7, p1, v2, v3}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    .line 1938
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 1939
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getActualCapsMode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/WordComposer;->setCapitalizedModeAtStartComposingTime(I)V

    .line 1941
    :cond_6
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1955
    .end local v2           #keyX:I
    .end local v3           #keyY:I
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    goto/16 :goto_0

    .line 1917
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 1931
    :cond_9
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v1

    .line 1933
    .local v1, keyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchX(I)I

    move-result v2

    .line 1934
    .restart local v2       #keyX:I
    invoke-virtual {v1, p3}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchY(I)I

    move-result v3

    .restart local v3       #keyY:I
    goto :goto_2

    .line 1943
    .end local v1           #keyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;
    .end local v2           #keyX:I
    .end local v3           #keyY:I
    :cond_a
    const/4 v7, -0x2

    if-ne v7, p2, :cond_c

    const/4 v7, 0x1

    :goto_4
    invoke-direct {p0, p1, p4, v7}, Lcom/android/inputmethod/latin/LatinIME;->maybeStripSpace(IIZ)Z

    move-result v6

    .line 1946
    .local v6, swapWeakSpace:Z
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 1948
    if-eqz v6, :cond_b

    .line 1949
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1950
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1953
    :cond_b
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissAddToDictionaryHint()Z

    goto :goto_3

    .line 1943
    .end local v6           #swapWeakSpace:Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 2052
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 2053
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2054
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 2055
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 2056
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 2058
    :cond_0
    return-void
.end method

.method private handleLanguageSwitchKey()V
    .locals 3

    .prologue
    .line 1402
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1403
    .local v0, token:Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mIncludesOtherImesInLanguageSwitchList:Z

    if-eqz v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    .line 1408
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->switchSubtype(Landroid/os/IBinder;Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleSeparator(IIII)Z
    .locals 11
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"
    .parameter "spaceState"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1964
    const/4 v0, 0x0

    .line 1967
    .local v0, didAutoCorrect:Z
    sget-boolean v6, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    if-eqz v6, :cond_0

    .line 1968
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v6, v9, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1969
    .local v2, strBefore:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7, v9, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    int-to-char v7, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v1, v7, v8}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->isValidInput(Ljava/lang/String;CI)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2042
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #strBefore:Ljava/lang/String;
    :goto_0
    return v4

    .line 1981
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1982
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v6, v6, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v6, :cond_6

    .line 1984
    new-instance v6, Ljava/lang/String;

    new-array v7, v5, [I

    aput p1, v7, v4

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1985
    const/4 v0, 0x1

    .line 1991
    :cond_1
    :goto_1
    const/4 v6, -0x2

    if-ne v6, p2, :cond_2

    move v4, v5

    :cond_2
    invoke-direct {p0, p1, p4, v4}, Lcom/android/inputmethod/latin/LatinIME;->maybeStripSpace(IIZ)Z

    move-result v3

    .line 1994
    .local v3, swapWeakSpace:Z
    if-ne v10, p4, :cond_3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v4, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1996
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1998
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 2000
    const/16 v4, 0x20

    if-ne v4, p1, :cond_8

    .line 2001
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v4, v6}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2002
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->maybeDoubleSpace()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2003
    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 2009
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDoubleSpacesTimer()V

    .line 2010
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2011
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2041
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    move v4, v0

    .line 2042
    goto :goto_0

    .line 1987
    .end local v3           #swapWeakSpace:Z
    :cond_6
    new-instance v6, Ljava/lang/String;

    new-array v7, v5, [I

    aput p1, v7, v4

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    goto :goto_1

    .line 2004
    .restart local v3       #swapWeakSpace:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2005
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_2

    .line 2014
    :cond_8
    if-eqz v3, :cond_a

    .line 2015
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 2016
    iput v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 2035
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_3

    .line 2017
    :cond_a
    if-ne v10, p4, :cond_9

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v4, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v4, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2030
    iput v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_4
.end method

.method private initSuggest()V
    .locals 5

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v2

    .line 537
    .local v2, subtypeLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, localeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_2

    .line 541
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v1

    .line 542
    .local v1, oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 546
    :goto_0
    new-instance v3, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v3, p0, v2, p0}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 548
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v3, :cond_0

    .line 549
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(F)V

    .line 552
    :cond_0
    invoke-static {p0, v2}, Lcom/android/inputmethod/latin/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    .line 557
    new-instance v3, Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-direct {v3, p0, v0}, Lcom/android/inputmethod/latin/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    .line 558
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvailable:Z

    .line 559
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/UserBinaryDictionary;)V

    .line 561
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 565
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v3}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/android/inputmethod/latin/UserHistoryDictionary;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    .line 567
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setUserHistoryDictionary(Lcom/android/inputmethod/latin/UserHistoryDictionary;)V

    .line 568
    return-void

    .line 544
    .end local v1           #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_0
.end method

.method private static isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1362
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestionsStripVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2069
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-nez v2, :cond_1

    .line 2077
    :cond_0
    :goto_0
    return v0

    .line 2071
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2072
    goto :goto_0

    .line 2073
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionStripVisibleInOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2076
    goto :goto_0

    .line 2077
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    goto :goto_0
.end method

.method private launchSettings()V
    .locals 1

    .prologue
    .line 2533
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2534
    const-class v0, Lcom/android/inputmethod/latin/SettingsActivity;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSubActivity(Ljava/lang/Class;)V

    .line 2535
    return-void
.end method

.method private launchSubActivity(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2551
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2552
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2553
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2554
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 2555
    return-void
.end method

.method private maybeDoubleSpace()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1303
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-nez v3, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return v1

    .line 1304
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v5, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1306
    .local v0, lastThree:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME;->canBeFollowedByPeriod(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1310
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1311
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v4, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1312
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const-string v3, ". "

    invoke-virtual {v1, v3, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1313
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    move v1, v2

    .line 1314
    goto :goto_0
.end method

.method private maybeRetrieveOlderSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 8
    .parameter "typedWord"
    .parameter "suggestedWords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2160
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-boolean v0, p2, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    .line 2172
    :goto_0
    return-object v0

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    .line 2166
    .local v7, previousSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-ne v7, v0, :cond_2

    .line 2167
    sget-object v7, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 2169
    :cond_2
    invoke-static {p1, v7}, Lcom/android/inputmethod/latin/SuggestedWords;->getTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2172
    .local v1, typedWordAndPreviousSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    goto :goto_0
.end method

.method private maybeStripSpace(IIZ)Z
    .locals 3
    .parameter "code"
    .parameter "spaceState"
    .parameter "isFromSuggestionStrip"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 1863
    const/16 v1, 0xa

    if-ne v1, p1, :cond_1

    if-ne v2, p2, :cond_1

    .line 1864
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->removeTrailingSpace()V

    .line 1878
    :cond_0
    :goto_0
    return v0

    .line 1866
    :cond_1
    const/4 v1, 0x3

    if-eq v1, p2, :cond_2

    if-ne v2, p2, :cond_0

    :cond_2
    if-eqz p3, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceSwapper(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1870
    const/4 v0, 0x1

    goto :goto_0

    .line 1872
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->removeTrailingSpace()V

    goto :goto_0
.end method

.method private onFinishInputInternal()V
    .locals 2

    .prologue
    .line 907
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 910
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 911
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 914
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 919
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 920
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 923
    :cond_1
    return-void
.end method

.method private onFinishInputViewInternal(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 926
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 928
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 929
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onFinishInputView()V

    .line 933
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 934
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->cancelAllMessages()V

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 939
    return-void
.end method

.method private onSettingsKeyPressed()V
    .locals 1

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    :goto_0
    return-void

    .line 1367
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V

    goto :goto_0
.end method

.method private onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 740
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 741
    return-void
.end method

.method private onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 745
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 746
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 748
    .local v6, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    if-eqz v7, :cond_0

    .line 749
    new-instance v7, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;-><init>(Ljava/util/Locale;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    .line 752
    :cond_0
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v4

    .line 754
    .local v4, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-nez p1, :cond_1

    .line 755
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v8, "Null EditorInfo in onStartInputView()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_6

    .line 757
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Null EditorInfo in onStartInputView()"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 761
    :cond_1
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 762
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: editorInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "inputType=0x%08x imeOptions=0x%08x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v8, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", sentence caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", word caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_2
    const/4 v7, 0x0

    const-string v8, "nm"

    invoke-static {v7, v8, p1}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 776
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deprecated private IME option specified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "noMicrophoneKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "forceAscii"

    invoke-static {v7, v8, p1}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 781
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deprecated private IME option specified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v8, "Use EditorInfo.IME_FLAG_FORCE_ASCII flag instead"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_4
    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->getCachedApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 788
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_5

    .line 789
    new-instance v7, Lcom/android/inputmethod/latin/TargetApplicationGetter;

    invoke-direct {v7, p0, p0}, Lcom/android/inputmethod/latin/TargetApplicationGetter;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 793
    :cond_5
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartInputView(Landroid/view/inputmethod/EditorInfo;)V

    .line 795
    if-nez v4, :cond_a

    .line 885
    :cond_6
    :goto_3
    return-void

    .line 765
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 800
    :cond_a
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    .line 801
    .local v0, accessUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 802
    invoke-virtual {v0, v4, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->onStartInputViewInternal(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 805
    :cond_b
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-nez v7, :cond_11

    const/4 v2, 0x1

    .line 806
    .local v2, inputTypeChanged:Z
    :goto_4
    if-eqz p2, :cond_c

    if-eqz v2, :cond_12

    :cond_c
    const/4 v3, 0x1

    .line 807
    .local v3, isDifferentTextField:Z
    :goto_5
    if-eqz v3, :cond_d

    .line 808
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputViewAndReturnIfCurrentSubtypeEnabled()Z

    move-result v1

    .line 810
    .local v1, currentSubtypeEnabled:Z
    if-nez v1, :cond_d

    .line 812
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getNoLanguageSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/inputmethod/latin/ImfUtils;->getCurrentInputMethodSubtype(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 814
    .local v5, newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 821
    .end local v1           #currentSubtypeEnabled:Z
    .end local v5           #newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateFullscreenMode()V

    .line 822
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 826
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 827
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 828
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 829
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 831
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v7, :cond_e

    .line 834
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 837
    :cond_e
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/RichInputConnection;->resetCachesUponCursorMove(I)V

    .line 839
    if-eqz v3, :cond_13

    .line 840
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 841
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 843
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v7, :cond_f

    .line 844
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(F)V

    .line 847
    :cond_f
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v6, p1, v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/SettingsValues;)V

    .line 858
    :cond_10
    :goto_6
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 861
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 862
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 864
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setMainDictionaryAvailability(Z)V

    .line 865
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupOn:Z

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupDismissDelay:I

    invoke-virtual {v4, v7, v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 867
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mGestureInputEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setGestureHandlingEnabledByUser(Z)V

    .line 868
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mGesturePreviewTrailEnabled:Z

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mGestureFloatingPreviewTextEnabled:Z

    invoke-virtual {v4, v7, v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->setGesturePreviewMode(ZZ)V

    .line 874
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v7, v8, p1, v9}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 877
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto/16 :goto_3

    .line 805
    .end local v2           #inputTypeChanged:Z
    .end local v3           #isDifferentTextField:Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 806
    .restart local v2       #inputTypeChanged:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 848
    .restart local v3       #isDifferentTextField:Z
    :cond_13
    if-eqz p2, :cond_10

    .line 851
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->resetKeyboardStateToAlphabet()V

    .line 856
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_6
.end method

.method private performEditorAction(I)V
    .locals 1
    .parameter "actionId"

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->performEditorAction(I)V

    .line 1398
    return-void
.end method

.method private resetComposingState(Z)V
    .locals 1
    .parameter "alsoResetLastComposedWord"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1249
    if-eqz p1, :cond_0

    .line 1250
    sget-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 1251
    :cond_0
    return-void
.end method

.method private resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V
    .locals 4
    .parameter "oldContactsDictionary"

    .prologue
    .line 579
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mUseContactsDict:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 582
    .local v2, shouldSetDictionary:Z
    :goto_0
    if-nez v2, :cond_3

    .line 585
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V

    .line 586
    :cond_0
    const/4 v0, 0x0

    .line 606
    .local v0, dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 609
    :cond_1
    return-void

    .line 579
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    .end local v2           #shouldSetDictionary:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 588
    .restart local v2       #shouldSetDictionary:Z
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v1

    .line 589
    .local v1, locale:Ljava/util/Locale;
    if-eqz p1, :cond_5

    .line 590
    iget-object v3, p1, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 593
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V

    .line 594
    new-instance v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1

    .line 598
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->reopen(Landroid/content/Context;)V

    .line 599
    move-object v0, p1

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1

    .line 602
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_5
    new-instance v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1
.end method

.method private resetEntireInputState(I)V
    .locals 2
    .parameter "newCursorPosition"

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 1244
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->resetCachesUponCursorMove(I)V

    .line 1245
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0
.end method

.method private restartSuggestionsOnWordBeforeCursor(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 2396
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/inputmethod/latin/WordComposer;->setComposingWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 2397
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2398
    .local v0, length:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2399
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 2400
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2401
    return-void
.end method

.method private restartSuggestionsOnWordBeforeCursorIfAtEndOfWord()V
    .locals 3

    .prologue
    .line 2389
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordBeforeCursorIfAtEndOfWord(Lcom/android/inputmethod/latin/SettingsValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2390
    .local v0, word:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 2391
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->restartSuggestionsOnWordBeforeCursor(Ljava/lang/CharSequence;)V

    .line 2393
    :cond_0
    return-void
.end method

.method private revertCommit()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2404
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v4, v7, Lcom/android/inputmethod/latin/LastComposedWord;->mPrevWord:Ljava/lang/CharSequence;

    .line 2405
    .local v4, previousWord:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v3, v7, Lcom/android/inputmethod/latin/LastComposedWord;->mTypedWord:Ljava/lang/String;

    .line 2406
    .local v3, originallyTypedWord:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v1, v7, Lcom/android/inputmethod/latin/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    .line 2407
    .local v1, committedWord:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2408
    .local v0, cancelLength:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v7, v7, Lcom/android/inputmethod/latin/LastComposedWord;->mSeparatorString:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/inputmethod/latin/LastComposedWord;->getSeparatorLength(Ljava/lang/String;)I

    move-result v5

    .line 2411
    .local v5, separatorLength:I
    add-int v2, v0, v5

    .line 2412
    .local v2, deleteLength:I
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 2413
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2414
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "revertCommit, but we are composing a word"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2416
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7, v2, v8}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2419
    .local v6, wordBeforeCursor:Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2420
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertCommit check failed: we thought we were reverting \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", but before the cursor we found \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2425
    .end local v6           #wordBeforeCursor:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7, v2, v8}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2426
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2427
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->cancelAddingUserHistory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2430
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v9, v9, Lcom/android/inputmethod/latin/LastComposedWord;->mSeparatorString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 2440
    sget-object v7, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 2442
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2443
    return-void
.end method

.method private sendDownUpKeyEventForBackwardCompatibility(I)V
    .locals 15
    .parameter "code"

    .prologue
    .line 1411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1412
    .local v1, eventTime:J
    iget-object v12, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 1415
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 1418
    return-void
.end method

.method private sendKeyCodePoint(I)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1423
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 1424
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 1444
    :goto_0
    return-void

    .line 1433
    :cond_0
    const/16 v1, 0xa

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1439
    const/16 v1, 0x42

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    goto :goto_0

    .line 1441
    :cond_1
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [I

    aput p1, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 1442
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private setAutoCorrectionIndicator(Z)V
    .locals 3
    .parameter "newAutoCorrectionIndicator"

    .prologue
    .line 2094
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2096
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 2097
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2103
    .local v0, textWithUnderline:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 2105
    .end local v0           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private setPunctuationSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2343
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-eqz v0, :cond_0

    .line 2344
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 2348
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 2349
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 2350
    return-void

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0
.end method

.method private setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 1
    .parameter "words"
    .parameter "isAutoCorrection"

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2088
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 2090
    :cond_0
    return-void
.end method

.method private setSuggestionStripShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1142
    return-void
.end method

.method private setSuggestionStripShownInternal(ZZ)V
    .locals 5
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    const/4 v3, 0x0

    .line 1124
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1125
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    .line 1126
    .local v1, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 1128
    .local v0, inputViewShown:Z
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1130
    .local v2, shouldShowSuggestions:Z
    :goto_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1131
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    .end local v0           #inputViewShown:Z
    .end local v1           #mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    .end local v2           #shouldShowSuggestions:Z
    :cond_1
    :goto_3
    return-void

    .restart local v1       #mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    :cond_2
    move v0, v3

    .line 1126
    goto :goto_0

    .restart local v0       #inputViewShown:Z
    :cond_3
    move v2, v3

    .line 1128
    goto :goto_1

    .line 1131
    .restart local v2       #shouldShowSuggestions:Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 1134
    :cond_5
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    goto :goto_4
.end method

.method private showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 4
    .parameter "suggestedWords"
    .parameter "dismissGestureFloatingPreviewText"

    .prologue
    const/4 v2, 0x0

    .line 1709
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, batchInputText:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    .line 1712
    .local v1, mainKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->showGestureFloatingPreviewText(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    .line 1714
    if-eqz p2, :cond_0

    .line 1715
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissGestureFloatingPreviewText()V

    .line 1717
    :cond_0
    return-void

    .end local v0           #batchInputText:Ljava/lang/String;
    .end local v1           #mainKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    :cond_1
    move-object v0, v2

    .line 1709
    goto :goto_0
.end method

.method private showSubtypeSelectorAndSettings()V
    .locals 7

    .prologue
    .line 2558
    const v5, 0x7f0b002f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2559
    .local v4, title:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0b008c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const v6, 0x7f0b002c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2564
    .local v2, items:[Ljava/lang/CharSequence;
    move-object v1, p0

    .line 2565
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v3, p0, v1}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/Context;)V

    .line 2587
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2590
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->showOptionDialog(Landroid/app/AlertDialog;)V

    .line 2591
    return-void
.end method

.method private showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "suggestedWords"
    .parameter "typedWord"

    .prologue
    .line 2183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2184
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 2202
    :goto_0
    return-void

    .line 2188
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2189
    iget-boolean v2, p1, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    if-eqz v2, :cond_2

    .line 2190
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, autoCorrection:Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 2198
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->willAutoCorrect()Z

    move-result v1

    .line 2199
    .local v1, isAutoCorrection:Z
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 2200
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 2201
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_0

    .line 2192
    .end local v0           #autoCorrection:Ljava/lang/CharSequence;
    .end local v1           #isAutoCorrection:Z
    :cond_2
    move-object v0, p2

    .restart local v0       #autoCorrection:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2195
    .end local v0           #autoCorrection:Ljava/lang/CharSequence;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #autoCorrection:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private specificTldProcessingOnTextInput(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1747
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1761
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1754
    .restart local p1
    :cond_1
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1756
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1757
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1759
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method private swapSwapperAndSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1289
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1291
    .local v0, lastTwo:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1294
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1298
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1300
    :cond_0
    return-void
.end method

.method private updateSuggestionStrip()V
    .locals 4

    .prologue
    .line 2108
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 2111
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2112
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2113
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v3, "Called updateSuggestionsOrPredictions but suggestions were not requested!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 2128
    :cond_1
    :goto_0
    return-void

    .line 2120
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-nez v2, :cond_3

    .line 2121
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 2125
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 2126
    .local v0, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .local v1, typedWord:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addWordToUserDictionary(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 1344
    :goto_0
    return-void

    .line 1340
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;-><init>(Ljava/lang/String;ILandroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 1343
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->addWordToUserDictionary(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public debugDumpStateAndCrashWithException(Ljava/lang/String;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2615
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "Target application : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nTarget app sdk version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAttributes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SettingsValues;->getInputAttributesDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2626
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2628
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2629
    .local v2, p:Landroid/util/Printer;
    const-string v3, "LatinIME state :"

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2630
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 2631
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v1, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 2632
    .local v1, keyboardMode:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Keyboard mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mIsSuggestionsSuggestionsRequested = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCorrectionEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isComposingWord="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mSoundOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mKeyPreviewPopupOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  inputAttributes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SettingsValues;->getInputAttributesDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2641
    return-void

    .line 2631
    .end local v1           #keyboardMode:I
    :cond_0
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method public getCurrentAutoCapsState()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1265
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCap:Z

    if-nez v3, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v2

    .line 1267
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1268
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    .line 1269
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1272
    .local v1, inputType:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getCursorCapsMode(ILjava/util/Locale;Z)I

    move-result v2

    goto :goto_0
.end method

.method public hapticAndAudioFeedback(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->hapticAndAudioFeedback(ILandroid/view/View;)V

    .line 2480
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 1060
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 1061
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onHideWindow()V

    .line 1063
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "MoreSuggestionWindow is showing, just dismiss it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1075
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1076
    return-void
.end method

.method isShowingPunctuationList()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2064
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-nez v1, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWordSeparator(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v0

    return v0
.end method

.method public launchDebugSettings()V
    .locals 1

    .prologue
    .line 2539
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2540
    const-class v0, Lcom/android/inputmethod/latin/DebugSettingsActivity;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSubActivity(Ljava/lang/Class;)V

    .line 2541
    return-void
.end method

.method public launchKeyboardedDialogActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 2547
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->launchSubActivity(Ljava/lang/Class;)V

    .line 2548
    return-void
.end method

.method loadKeyboard()V
    .locals 3

    .prologue
    .line 2463
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 2464
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 2465
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/SettingsValues;)V

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2473
    return-void
.end method

.method loadSettings()V
    .locals 4

    .prologue
    .line 511
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 512
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/inputmethod/latin/InputAttributes;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 514
    .local v0, inputAttributes:Lcom/android/inputmethod/latin/InputAttributes;
    new-instance v1, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v1, p0, v0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/InputAttributes;)V

    .line 520
    .local v1, job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Lcom/android/inputmethod/latin/SettingsValues;>;"
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;->runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/SettingsValues;

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    .line 521
    new-instance v2, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-direct {v2, p0, v3}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SettingsValues;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    .line 522
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 523
    return-void

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v2

    goto :goto_0
.end method

.method public onCancelInput()V
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1770
    return-void
.end method

.method public onCodeInput(III)V
    .locals 12
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1450
    .local v6, when:J
    const/4 v8, -0x4

    if-ne p1, v8, :cond_0

    iget-wide v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v10, 0xc8

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 1451
    :cond_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1453
    :cond_1
    iput-wide v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1454
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1455
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1461
    .local v5, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1462
    .local v4, spaceState:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 1465
    :cond_2
    const/16 v8, 0x20

    if-eq p1, v8, :cond_3

    .line 1466
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1469
    :cond_3
    const/4 v0, 0x0

    .line 1470
    .local v0, didAutoCorrect:Z
    packed-switch p1, :pswitch_data_0

    .line 1506
    :pswitch_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1507
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v8, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1508
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(IIII)Z

    move-result v0

    .line 1530
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1533
    :goto_1
    :pswitch_1
    invoke-virtual {v5, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCodeInput(I)V

    .line 1535
    if-nez v0, :cond_4

    const/4 v8, -0x1

    if-eq p1, v8, :cond_4

    const/4 v8, -0x2

    if-eq p1, v8, :cond_4

    .line 1537
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LastComposedWord;->deactivate()V

    .line 1538
    :cond_4
    const/4 v8, -0x4

    if-eq v8, p1, :cond_5

    .line 1539
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1541
    :cond_5
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1545
    return-void

    .line 1472
    :pswitch_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1473
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace(I)V

    .line 1474
    iget v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1475
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1476
    invoke-static {p2, p3}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete(II)V

    goto :goto_1

    .line 1483
    :pswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyPressed()V

    goto :goto_1

    .line 1486
    :pswitch_4
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v8, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_1

    .line 1489
    :pswitch_5
    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v8

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinIME;->getActionId(Lcom/android/inputmethod/keyboard/Keyboard;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1492
    :pswitch_6
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1495
    :pswitch_7
    const/4 v8, 0x7

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1498
    :pswitch_8
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleLanguageSwitchKey()V

    goto :goto_1

    .line 1510
    :cond_6
    const/4 v8, 0x4

    if-ne v8, v4, :cond_7

    .line 1517
    const-string v8, ""

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 1520
    :cond_7
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 1521
    .local v3, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v3, :cond_8

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/keyboard/Keyboard;->hasProximityCharsCorrection(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1522
    move v1, p2

    .line 1523
    .local v1, keyX:I
    move v2, p3

    .line 1528
    .local v2, keyY:I
    :goto_2
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(IIII)V

    goto :goto_0

    .line 1525
    .end local v1           #keyX:I
    .end local v2           #keyY:I
    :cond_8
    const/4 v1, -0x1

    .line 1526
    .restart local v1       #keyX:I
    const/4 v2, -0x1

    .restart local v2       #keyY:I
    goto :goto_2

    .line 1470
    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 13
    .parameter "outInsets"

    .prologue
    const/16 v12, 0x8

    const/4 v10, 0x0

    .line 1176
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1177
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v5

    .line 1178
    .local v5, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-nez v11, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getAdjustedBackingViewHeight()I

    move-result v0

    .line 1182
    .local v0, adjustedBackingHeight:I
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v12, :cond_4

    const/4 v1, 0x1

    .line 1183
    .local v1, backingGone:Z
    :goto_1
    if-eqz v1, :cond_5

    move v2, v10

    .line 1187
    .local v2, backingHeight:I
    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1188
    .local v4, extractHeight:I
    :goto_3
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v12, :cond_7

    move v6, v10

    .line 1190
    .local v6, suggestionsHeight:I
    :goto_4
    add-int v11, v4, v2

    add-int v3, v11, v6

    .line 1191
    .local v3, extraHeight:I
    move v9, v3

    .line 1193
    .local v9, touchY:I
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1194
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 1195
    sub-int/2addr v9, v6

    .line 1197
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1198
    .local v8, touchWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v3

    add-int/lit8 v7, v11, 0x64

    .line 1201
    .local v7, touchHeight:I
    const/4 v11, 0x3

    iput v11, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1202
    iget-object v11, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v11, v10, v9, v8, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 1204
    .end local v7           #touchHeight:I
    .end local v8           #touchWidth:I
    :cond_3
    iput v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1205
    iput v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_0

    .end local v1           #backingGone:Z
    .end local v2           #backingHeight:I
    .end local v3           #extraHeight:I
    .end local v4           #extractHeight:I
    .end local v6           #suggestionsHeight:I
    .end local v9           #touchY:I
    :cond_4
    move v1, v10

    .line 1182
    goto :goto_1

    .restart local v1       #backingGone:Z
    :cond_5
    move v2, v0

    .line 1183
    goto :goto_2

    .restart local v2       #backingHeight:I
    :cond_6
    move v4, v10

    .line 1187
    goto :goto_3

    .line 1188
    .restart local v4       #extractHeight:I
    :cond_7
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 656
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startOrientationChanging()V

    .line 658
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 659
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->finishComposingText()V

    .line 661
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 662
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 668
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigHardKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_2

    .line 670
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Ignored this configration changed of super!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 674
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigKeyboard:I

    .line 675
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigHardKeyboard:I

    .line 677
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 451
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 452
    .local v3, prefs:Landroid/content/SharedPreferences;
    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 453
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 457
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->init(Landroid/content/Context;)V

    .line 458
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->init(Landroid/content/Context;)V

    .line 459
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 460
    invoke-static {p0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 462
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 464
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 465
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onCreate()V

    .line 466
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    .line 468
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 469
    .local v4, res:Landroid/content/res/Resources;
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 471
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 473
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SettingsValues;->getAdditionalSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 475
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 477
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 480
    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    .line 484
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigKeyboard:I

    .line 485
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigHardKeyboard:I

    .line 489
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 490
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    .local v2, packageFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 498
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .local v1, newDictFilter:Landroid/content/IntentFilter;
    const-string v5, "com.android.inputmethod.latin.dictionarypack.newdict"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "subtype"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 732
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 737
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 3
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1375
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return v0

    .line 1376
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1378
    :pswitch_0
    invoke-static {p0, v1}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    move v0, v1

    .line 1381
    goto :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 627
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 628
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 629
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 630
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 631
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 9
    .parameter "applicationSpecifiedCompletions"

    .prologue
    const/4 v2, 0x0

    .line 1080
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1081
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v4, "Received completions:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    if-eqz p1, :cond_0

    .line 1083
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v3, p1

    if-ge v7, v3, :cond_0

    .line 1084
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1088
    .end local v7           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1119
    :goto_1
    return-void

    .line 1089
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1090
    if-nez p1, :cond_2

    .line 1091
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    goto :goto_1

    .line 1098
    :cond_2
    invoke-static {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->getFromApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1101
    .local v1, applicationSuggestedWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    .line 1109
    .local v0, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    const/4 v8, 0x0

    .line 1110
    .local v8, isAutoCorrection:Z
    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 1111
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 1114
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 1115
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_1
.end method

.method public onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 5
    .parameter "batchPointers"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1726
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 1728
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 1730
    .local v0, batchInputText:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1744
    :goto_1
    return-void

    .line 1728
    .end local v0           #batchInputText:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1733
    .restart local v0       #batchInputText:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/WordComposer;->setBatchInputWord(Ljava/lang/CharSequence;)V

    .line 1734
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1735
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v4, v2, :cond_2

    .line 1736
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1738
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v0, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1739
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1740
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1742
    iput v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1743
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_1
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1211
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/SettingsValues;->isFullscreenModeAllowed(Landroid/content/res/Resources;)Z

    move-result v1

    .line 1213
    .local v1, isFullscreenModeAllowed:Z
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1218
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1219
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1221
    .end local v0           #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_1
    return v2
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1055
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInput()V

    .line 724
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInputView(Z)V

    .line 719
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 639
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "MoreSuggestionWindow is showing, just dismiss it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 2655
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Low memory! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 2658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2661
    :cond_0
    return-void
.end method

.method public onPressKey(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressKey(I)V

    .line 2487
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 4
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2493
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseKey(IZ)V

    .line 2496
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2497
    packed-switch p1, :pswitch_data_0

    .line 2507
    :cond_0
    :goto_0
    const/4 v1, -0x4

    if-ne v1, p1, :cond_1

    .line 2512
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2513
    .local v0, lastChar:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2514
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2517
    .end local v0           #lastChar:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 2499
    :pswitch_0
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->notifyShiftState()V

    goto :goto_0

    .line 2502
    :pswitch_1
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->notifySymbolsState()V

    goto :goto_0

    .line 2497
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartBatchInput()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1586
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onStartBatchInput()V

    .line 1587
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1588
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1594
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 1602
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1606
    :goto_0
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1609
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1621
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1622
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getActualCapsMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/WordComposer;->setCapitalizedModeAtStartComposingTime(I)V

    .line 1623
    return-void

    .line 1604
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    goto :goto_0

    .line 1611
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getCodePointBeforeCursor()I

    move-result v0

    .line 1614
    .local v0, codePointBeforeCursor:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1618
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_1
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 709
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 714
    return-void
.end method

.method public onTargetApplicationKnown(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 891
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "rawText"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1550
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1552
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->mIsMediatekGrammarCheckerEnabled:Z

    if-eqz v3, :cond_1

    .line 1553
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v4, v6}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, strBefore:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v4, v6}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, strAfter:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->isValidInput(Ljava/lang/String;CI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mGrammarChecker:Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Lcom/mediatek/inputmethod/latin/grammarcheck/MediaTekGrammarChecker;->isValidInput(Ljava/lang/String;CI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1559
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1582
    .end local v0           #strAfter:Ljava/lang/String;
    .end local v1           #strBefore:Ljava/lang/String;
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1566
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1570
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1571
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->specificTldProcessingOnTextInput(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1572
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v3, 0x4

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v3, v4, :cond_2

    .line 1573
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1575
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v2, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1576
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1578
    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1579
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1580
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCodeInput(I)V

    .line 1581
    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1568
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    goto :goto_1
.end method

.method public onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "batchPointers"

    .prologue
    .line 1721
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)V

    .line 1722
    return-void
.end method

.method public onUpdateMainDictionaryAvailability(Z)V
    .locals 2
    .parameter "isMainDictionaryAvailable"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    .line 529
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 530
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setMainDictionaryAvailability(Z)V

    .line 533
    :cond_0
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "composingSpanStart"
    .parameter "composingSpanEnd"

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 945
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 947
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 948
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSelection: oss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ose="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    if-ne p3, p6, :cond_1

    if-eq p4, p6, :cond_5

    :cond_1
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v3, p3, :cond_5

    move v1, v0

    .line 983
    .local v1, selectionChanged:Z
    :goto_0
    if-ne p5, v6, :cond_6

    if-ne p6, v6, :cond_6

    .line 984
    .local v0, noComposingSpan:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, p1, p3}, Lcom/android/inputmethod/latin/RichInputConnection;->isBelatedExpectedUpdate(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 998
    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1000
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 1010
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/LatinIME;->resetEntireInputState(I)V

    .line 1013
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1015
    :cond_4
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1022
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 1023
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 1024
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->currentSubtypeUsed()V

    .line 1025
    return-void

    .end local v0           #noComposingSpan:Z
    .end local v1           #selectionChanged:Z
    :cond_5
    move v1, v2

    .line 976
    goto :goto_0

    .restart local v1       #selectionChanged:Z
    :cond_6
    move v0, v2

    .line 983
    goto :goto_1
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    .line 899
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 900
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 901
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 904
    :cond_0
    return-void
.end method

.method public onWordAddedToUserDictionary(Ljava/lang/String;)V
    .locals 5
    .parameter "newSpelling"

    .prologue
    const/4 v4, 0x0

    .line 1348
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    if-nez v0, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1351
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto :goto_0

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->setActualWordBeingAdded(Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/4 v8, 0x4

    const/4 v9, -0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2243
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v5

    .line 2245
    .local v5, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2248
    const-string v7, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2250
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2251
    .local v2, primaryCode:I
    invoke-virtual {p0, v2, v9, v9}, Lcom/android/inputmethod/latin/LatinIME;->onCodeInput(III)V

    .line 2322
    .end local v2           #primaryCode:I
    :goto_0
    return-void

    .line 2259
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 2260
    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v8, v7, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isBatchMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2264
    invoke-static {p2, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2265
    .local v1, firstChar:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceSwapper(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2267
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 2271
    .end local v1           #firstChar:I
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v7, :cond_3

    if-ltz p1, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge p1, v7, :cond_3

    .line 2274
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v6, :cond_2

    .line 2275
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 2277
    :cond_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2278
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 2279
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v6, p1

    .line 2280
    .local v0, completionInfo:Landroid/view/inputmethod/CompletionInfo;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 2281
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    goto :goto_0

    .line 2287
    .end local v0           #completionInfo:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2288
    .local v3, replacedWord:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2290
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 2291
    const-string v7, ""

    invoke-direct {p0, p2, v4, v7}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 2296
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 2298
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LastComposedWord;->deactivate()V

    .line 2300
    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 2301
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2307
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v7, p2, v4}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2315
    .local v4, showingAddToDictionaryHint:Z
    :goto_1
    if-eqz v4, :cond_5

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvailable:Z

    if-eqz v6, :cond_5

    .line 2316
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mHintToSaveText:Ljava/lang/CharSequence;

    invoke-virtual {v6, p2, v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->showAddToDictionaryHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v4           #showingAddToDictionaryHint:Z
    :cond_4
    move v4, v6

    .line 2307
    goto :goto_1

    .line 2320
    .restart local v4       #showingAddToDictionaryHint:Z
    :cond_5
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    goto/16 :goto_0
.end method

.method public promotePhantomSpace()V
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SettingsValues;->shouldInsertSpacesAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 2450
    :cond_0
    return-void
.end method

.method resetSuggestMainDict()V
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v1, :cond_0

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v0

    .line 616
    .local v0, subtypeLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v1, p0, v0, p0}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    .line 617
    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    goto :goto_0
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 703
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 687
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 688
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    .line 690
    const v0, 0x7f08003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    .line 691
    const v0, 0x7f08003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 692
    const v0, 0x7f080040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    .line 693
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0, p0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setListener(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;Landroid/view/View;)V

    .line 695
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    const/high16 v1, 0x10ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 698
    :cond_1
    return-void
.end method

.method public showOptionDialog(Landroid/app/AlertDialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 2594
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2595
    .local v2, windowToken:Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 2611
    :goto_0
    return-void

    .line 2599
    :cond_0
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2600
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2602
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2603
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2604
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2605
    const/16 v3, 0x3eb

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2606
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2607
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2609
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2610
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showWindow(Z)V
    .locals 2
    .parameter "showInput"

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_0

    .line 2666
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Load suggest in showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 2669
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 2671
    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 1227
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1229
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
