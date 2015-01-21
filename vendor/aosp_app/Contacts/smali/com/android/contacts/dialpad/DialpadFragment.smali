.class public Lcom/android/contacts/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;
.implements Lcom/android/contacts/ext/IDialpadFragment;
.implements Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;
.implements Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;,
        Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;,
        Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.mediatek.phone.OutgoingCallReceiver"

.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final DBG:Z = true

.field private static final DEBUG:Z = true

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x8

.field private static final EMPTY_NUMBER:Ljava/lang/String; = ""

.field private static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final MAX_DIGITS_NUMBER_LENGTH:I = 0xff

.field private static final MSG_GET_TEXT_WATCHER:I = 0x1

.field private static final PREF_DIGITS_FILLED_BY_INTENT:Ljava/lang/String; = "pref_digits_filled_by_intent"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TONE_LENGTH_INFINITE:I = -0x1

.field private static final TONE_LENGTH_MS:I = 0x64

.field private static final TONE_RELATIVE_VOLUME:I = 0x50


# instance fields
.field public ISTABLET_LAND:Z

.field private fragmentView:Landroid/view/View;

.field private mAddToContactListButton:Landroid/widget/Button;

.field private mAdditionalButtonsRow:Landroid/view/View;

.field private mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

.field private final mCallLog:Lcom/android/phone/CallLogAsync;

.field mCallLogContentObserver:Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;

.field private mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

.field private mClearDigitsOnStop:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

.field private mDialpad:Landroid/view/View;

.field private mDialpadButton:Landroid/widget/ImageView;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadDivider:Landroid/view/View;

.field private mDialpadPressCount:I

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mDivider:Landroid/view/View;

.field private mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

.field private mHandler:Landroid/os/Handler;

.field private final mHaptic:Lcom/android/phone/HapticFeedback;

.field private mHideDialpadDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsForeground:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mNeedCheckSetting:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSearchTitle:Landroid/widget/TextView;

.field private mSendMessageButton:Landroid/view/View;

.field private mShowDialpadDrawable:Landroid/graphics/drawable/Drawable;

.field private mSpeedDial:Lcom/mediatek/contacts/dialpad/SpeedDial;

.field private mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

.field private mStartedFromNewIntent:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mVideoDialButton:Landroid/view/View;

.field private mWasEmptyBeforeTextChange:Z

.field private popup:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 157
    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 159
    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    .line 162
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsForeground:Z

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 193
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    .line 217
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 224
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 246
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 316
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    .line 2505
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->UNKNOWN:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 3033
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$3;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 3131
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/DialpadFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/dialpad/DialpadFragment;)Lcom/mediatek/contacts/dialpad/SpeedDial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/contacts/dialpad/SpeedDial;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/dialpad/DialpadFragment;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    return-void
.end method

.method private configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 793
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 798
    sget-object v5, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v6, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isIntentConsume(Landroid/content/Intent;)Z

    move-result v3

    .line 804
    .local v3, isIntentConsume:Z
    if-ne v3, v6, :cond_1

    .line 805
    const-string v5, "configureScreenFromIntent, intent has been consumed, just return!"

    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    const/4 v4, 0x0

    .line 813
    .local v4, needToShowDialpadChooser:Z
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v2

    .line 814
    .local v2, isAddCallMode:Z
    const-string v5, "com.android.phone.extra.consume"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    if-nez v2, :cond_5

    .line 820
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    .line 821
    .local v1, digitsFilled:Z
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v5, :cond_2

    .line 822
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v5, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->configureFromIntent(Z)V

    .line 824
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStartedFromNewIntent, digitsFilled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 826
    iget-boolean v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_5

    .line 827
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 832
    :cond_4
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 833
    const/4 v4, 0x1

    .line 839
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #digitsFilled:Z
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 706
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 709
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_6

    .line 710
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 714
    .local v9, data:Ljava/lang/String;
    iput-boolean v12, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 715
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 717
    .local v8, converted:Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v0, v12

    .line 758
    .end local v8           #converted:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :goto_0
    return v0

    .line 721
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_1
    const-string v0, "voicemail"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 723
    .restart local v9       #data:Ljava/lang/String;
    invoke-direct {p0, v9, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 726
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move v0, v12

    .line 729
    goto :goto_0

    .line 731
    .end local v9           #data:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 732
    .local v10, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 735
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v13

    const-string v4, "number_key"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 738
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 740
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 744
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_6
    move v0, v13

    .line 758
    goto :goto_0

    .line 750
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 3
    .parameter "digits"
    .parameter "isSipNumber"

    .prologue
    .line 1297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1299
    const-string v1, "sip_address"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    :goto_0
    const-string v1, "fromWhere"

    const-string v2, "CALL_LOG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1306
    return-object v0

    .line 1301
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 773
    :cond_1
    return v1
.end method

.method private isDialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentConsume(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 784
    const-string v0, "com.android.phone.extra.consume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    if-nez v0, :cond_0

    .line 3166
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 3168
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    const/4 v0, 0x1

    .line 3171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2382
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 2390
    :cond_0
    :goto_0
    return v1

    .line 2386
    :catch_0
    move-exception v0

    .line 2388
    .local v0, se:Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isVoicemailAvailableProxy()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2852
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2855
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2869
    :cond_0
    :goto_0
    return v2

    .line 2859
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_call_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2862
    .local v0, defaultSim:J
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 2866
    const/4 v2, 0x1

    goto :goto_0

    .line 2869
    .end local v0           #defaultSim:J
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v2

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 1310
    sparse-switch p1, :sswitch_data_0

    .line 1354
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    if-eqz v2, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 1357
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    .line 1360
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyPressed keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cursor start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1363
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1366
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 1367
    .local v1, length:I
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1370
    :cond_1
    return-void

    .line 1312
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v1           #length:I
    :sswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1315
    :sswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1318
    :sswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1321
    :sswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1324
    :sswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1327
    :sswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1330
    :sswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1333
    :sswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1336
    :sswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1339
    :sswitch_9
    invoke-direct {p0, v4, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1342
    :sswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1345
    :sswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1348
    :sswitch_c
    invoke-direct {p0, v4, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    goto/16 :goto_0

    .line 1310
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x51 -> :sswitch_c
    .end sparse-switch
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2486
    const-string v1, ""

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2487
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2488
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 2227
    const/4 v1, 0x0

    .line 2229
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2230
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2231
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 2236
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 2231
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2233
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2234
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 5

    .prologue
    .line 2211
    const/4 v2, 0x0

    .line 2213
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2214
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2215
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 2220
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2215
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2217
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2218
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 2243
    const/4 v2, 0x0

    .line 2245
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2246
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2247
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2252
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .parameter "tone"

    .prologue
    .line 1845
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(II)V

    .line 1846
    return-void
.end method

.method private playTone(II)V
    .locals 6
    .parameter "tone"
    .parameter "durationMs"

    .prologue
    const/4 v3, 0x1

    .line 1863
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v2, :cond_0

    .line 1864
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dtmf_tone"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 1868
    :cond_0
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v2, :cond_3

    .line 1895
    :cond_1
    :goto_1
    return-void

    .line 1864
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1877
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1879
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1880
    .local v1, ringerMode:I
    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    .line 1886
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1887
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_4

    .line 1888
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    monitor-exit v3

    goto :goto_1

    .line 1894
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1893
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1894
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 2455
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 2456
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 2467
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 2468
    return-void
.end method

.method private removePreviousDigitIfPossible()V
    .locals 4

    .prologue
    .line 1697
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1698
    .local v1, editable:Landroid/text/Editable;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1699
    .local v0, currentPosition:I
    if-lez v0, :cond_0

    .line 1700
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1701
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1703
    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 4
    .parameter "showDialpad"

    .prologue
    .line 2187
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2188
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2189
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 851
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, dialString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 856
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 859
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 860
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    .line 862
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 6
    .parameter "fragmentView"

    .prologue
    .line 867
    const/16 v5, 0xc

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 869
    .local v1, buttonIds:[I
    move-object v0, v1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 870
    .local v3, id:I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/dialpad/DialpadImageButton;

    invoke-virtual {v5, p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setOnPressedListener(Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;)V

    .line 871
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    .end local v3           #id:I
    :cond_0
    return-void

    .line 867
    :array_0
    .array-data 0x4
        0x1et 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
        0x21t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x7t 0x7ft
        0x24t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
        0x27t 0x0t 0x7t 0x7ft
        0x28t 0x0t 0x7t 0x7ft
        0x29t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 18
    .parameter "menu"

    .prologue
    .line 1199
    const v17, 0x7f0701f2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1200
    .local v4, callSettingsMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701ee

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1201
    .local v3, addToContactMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701ef

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1202
    .local v14, twoSecPauseMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701f0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1203
    .local v16, waitMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701eb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1204
    .local v7, ipDialMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701ea

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 1205
    .local v15, videoCallMenuItem:Landroid/view/MenuItem;
    const v17, 0x7f0701ed

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1209
    .local v10, sendMessageMenuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1215
    .local v2, activity:Landroid/app/Activity;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1217
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1226
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1227
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1228
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1229
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1230
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1231
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1232
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1219
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1220
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1234
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1237
    .local v5, digits:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v6

    .line 1243
    .local v6, hasPermanentMenuKey:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1244
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1246
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v17

    if-nez v17, :cond_5

    .line 1247
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1252
    :goto_2
    if-nez v6, :cond_6

    .line 1253
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1261
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1263
    .local v11, strDigits:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 1264
    .local v9, selectionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 1266
    .local v8, selectionEnd:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_8

    .line 1267
    if-le v9, v8, :cond_4

    .line 1269
    move v13, v9

    .line 1270
    .local v13, tmp:I
    move v9, v8

    .line 1271
    move v8, v13

    .line 1274
    .end local v13           #tmp:I
    :cond_4
    if-eqz v9, :cond_7

    .line 1276
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1279
    invoke-static {v9, v8, v11}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1249
    .end local v8           #selectionEnd:I
    .end local v9           #selectionStart:I
    .end local v11           #strDigits:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1255
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1282
    .restart local v8       #selectionEnd:I
    .restart local v9       #selectionStart:I
    .restart local v11       #strDigits:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1283
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1286
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1289
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 1290
    .local v12, strLength:I
    invoke-static {v12, v12, v11}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private setupPopupMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 2873
    const v2, 0x7f0701f2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2875
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2877
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2878
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2884
    :goto_0
    return-void

    .line 2880
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2881
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialpadChooser, enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1933
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 1937
    :cond_1
    if-eqz p1, :cond_9

    .line 1939
    const-string v0, "showDialpadChooser, hide digits"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1941
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1948
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1953
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1954
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1963
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 1964
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1968
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 1969
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1974
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_6

    .line 1975
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1977
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1942
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1944
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1956
    :cond_8
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "showDialpadChooser(true) mAdditionalButtonsRow is null."

    invoke-static {v0, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1980
    :cond_9
    const-string v0, "showDialpadChooser, show digits"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1982
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDelete.getVisibility() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1984
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1989
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1990
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 1997
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2003
    :goto_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2006
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    .line 2007
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2010
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowDialpadDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v2, :cond_d

    .line 2011
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHideDialpadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2015
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2016
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 1983
    goto :goto_3

    .line 1985
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 1986
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1999
    :cond_11
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "showDialpadChooser(false) mAdditionalButtonsRow is null."

    invoke-static {v0, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2020
    :cond_12
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 2021
    :cond_13
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2025
    :cond_14
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showSpeedDialConfirmDialog()V
    .locals 3

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 2742
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$ConfirmDialogFragment;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "speed_dial"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2745
    return-void
.end method

.method private static showWait(IILjava/lang/String;)Z
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "digits"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2399
    if-ne p0, p1, :cond_5

    .line 2401
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 2438
    :cond_0
    :goto_0
    return v3

    .line 2405
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v1

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2408
    .local v0, cer:[C
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cer : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | digits.charAt(start - 1) == cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | (digits.length() > start) && (digits.charAt(start) == cer[0]) : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-eq v1, v4, :cond_0

    .line 2416
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-eq v1, v4, :cond_0

    :cond_2
    move v3, v2

    .line 2438
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 2408
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 2422
    .end local v0           #cer:[C
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2427
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v1

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2430
    .restart local v0       #cer:[C
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cer : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | (digits.charAt(start - 1) == cer[0]) : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-ne v1, v4, :cond_2

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 2430
    goto :goto_3
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1902
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 1912
    :goto_0
    return-void

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1907
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    monitor-exit v1

    goto :goto_0

    .line 1911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1910
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1911
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2335
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/ext/DialPadExtension;->updateDialAndDeleteButtonEnabledState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2365
    :cond_0
    :goto_0
    return-void

    .line 2339
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 2341
    .local v0, digitsNotEmpty:Z
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2345
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2346
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2357
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2358
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2361
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVideoDialButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2362
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVideoDialButton:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #digitsNotEmpty:Z
    :cond_6
    move v0, v2

    .line 2339
    goto :goto_1

    .line 2352
    .restart local v0       #digitsNotEmpty:Z
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_8

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_3
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 2308
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2309
    .local v0, anchor:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2311
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2312
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2314
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2315
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2316
    if-ne v5, v4, :cond_0

    .line 2319
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2329
    :goto_0
    return-void

    .line 2321
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2323
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2326
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 2327
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method adjustListViewLayoutParameters()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2977
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 2978
    .local v1, dialpadVisible:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 2979
    .local v2, digitsVisible:Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustListViewLayoutParameters, dialpadVisible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " digitsVisible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2981
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 2982
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2986
    .local v3, lParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_5

    .line 2987
    if-eqz v2, :cond_3

    .line 2988
    const v0, 0x7f070126

    .line 3004
    .local v0, above:I
    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3005
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3007
    .end local v0           #above:I
    .end local v3           #lParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .end local v1           #dialpadVisible:Z
    .end local v2           #digitsVisible:Z
    :cond_1
    move v1, v5

    .line 2977
    goto :goto_0

    .restart local v1       #dialpadVisible:Z
    :cond_2
    move v2, v5

    .line 2978
    goto :goto_1

    .line 2990
    .restart local v2       #digitsVisible:Z
    .restart local v3       #lParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 2991
    const v0, 0x7f070096

    .restart local v0       #above:I
    goto :goto_2

    .line 2993
    .end local v0           #above:I
    :cond_4
    const v0, 0x7f07011e

    .restart local v0       #above:I
    goto :goto_2

    .line 2997
    .end local v0           #above:I
    :cond_5
    if-eqz v2, :cond_6

    .line 2998
    const v0, 0x7f070126

    .restart local v0       #above:I
    goto :goto_2

    .line 3000
    .end local v0           #above:I
    :cond_6
    const v0, 0x7f07011f

    .restart local v0       #above:I
    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "input"

    .prologue
    const/4 v5, 0x0

    .line 350
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v2, v3, v4}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsVisibility()I

    move-result v0

    .line 357
    .local v0, digitsVisibility:I
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 359
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    .line 360
    .local v1, isDigitsEmpty:Z
    if-eqz v1, :cond_3

    .line 361
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 362
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 379
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsVisibility()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 380
    const-string v2, "afterTextChanged, digitsVisibility changed"

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    .line 384
    :cond_2
    return-void

    .line 364
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    const-string v2, "afterTextChanged, show digits"

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 367
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 325
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 1708
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->getVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 1709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1710
    return-void
.end method

.method public constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .parameter "anchorView"

    .prologue
    .line 1583
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1584
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1585
    const/4 v2, 0x0

    .line 1594
    :goto_0
    return-object v2

    .line 1587
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1588
    .local v2, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1589
    .local v1, menu:Landroid/view/Menu;
    const v3, 0x7f100006

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1590
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1591
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1592
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupPopupMenuItems(Landroid/view/Menu;)V

    .line 1593
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/contacts/ext/DialPadExtension;->constructPopupMenu(Landroid/widget/PopupMenu;Landroid/view/View;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 2

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressedInner(Ljava/lang/String;I)V

    .line 2546
    return-void
.end method

.method public dialButtonPressed(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressedInner(Ljava/lang/String;I)V

    .line 2550
    return-void
.end method

.method public dialButtonPressed(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 2553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressedInner(Ljava/lang/String;I)V

    .line 2554
    return-void
.end method

.method protected dialButtonPressedInner(Ljava/lang/String;I)V
    .locals 5
    .parameter "number"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialButtonPressedInner number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2559
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2564
    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "persist.radio.otaspdial"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 2568
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "The phone number is prohibited explicitly by a rule."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2570
    const v2, 0x7f0c010e

    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 2572
    .local v0, dialogFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "phone_prohibited_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2576
    .end local v0           #dialogFragment:Landroid/app/DialogFragment;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 2578
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p1, v2, p2}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 2582
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 2583
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 2584
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDigits.getText() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2586
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2578
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public doCallOptionHandle(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    if-eqz v0, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 3129
    :cond_0
    return-void
.end method

.method public forceUpdateDialerSearch()V
    .locals 1

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_0

    .line 3056
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceUpdate()V

    .line 3058
    :cond_0
    return-void
.end method

.method getDigitsVisibility()I
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3025
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public handleDialButtonClickWithEmptyDigits()V
    .locals 2

    .prologue
    .line 2594
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2623
    :goto_0
    return-void

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2602
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2612
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2620
    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method isTrackBallEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3016
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3017
    .local v0, keycode:I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3011
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 3074
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 3075
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_0

    .line 3076
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 3078
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onClickInternal(Landroid/view/View;)Z

    move-result v0

    .line 1478
    .local v0, handled:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1479
    if-eqz v0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1576
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick() event from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    :sswitch_0
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1539
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    if-eqz v1, :cond_2

    .line 1541
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 1542
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    .line 1545
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 1546
    const-string v1, "+DialpadFragment.onClick"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 1548
    const-string v1, "-DialpadFragment.onClick"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 1552
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 1559
    :sswitch_3
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_3

    .line 1560
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 1561
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1565
    :cond_3
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "dismiss mPopMenuView and reconstruct a new one!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1567
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 1568
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1485
    :sswitch_data_0
    .sparse-switch
        0x7f07002b -> :sswitch_1
        0x7f07002c -> :sswitch_3
        0x7f070121 -> :sswitch_0
        0x7f070127 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onClickInternal(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 2749
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2771
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 2751
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onShowDialpadButtonClick()Z

    goto :goto_0

    .line 2754
    :sswitch_1
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 2755
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v2, v1}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    goto :goto_0

    .line 2758
    :sswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed(I)V

    goto :goto_0

    .line 2761
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onSendMessageMenuItemSelected()Z

    goto :goto_0

    .line 2764
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2766
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2767
    .local v0, number:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2749
    :sswitch_data_0
    .sparse-switch
        0x7f07002a -> :sswitch_0
        0x7f07002d -> :sswitch_2
        0x7f07002e -> :sswitch_3
        0x7f070121 -> :sswitch_1
        0x7f070125 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 389
    const-string v1, "+DialpadFragment.onCreate"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 391
    const-string v1, "onCreate start..."

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current country iso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 406
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 414
    new-instance v1, Lcom/mediatek/contacts/dialpad/SpeedDial;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/contacts/dialpad/SpeedDial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/contacts/dialpad/SpeedDial;

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowDialpadDrawable:Landroid/graphics/drawable/Drawable;

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHideDialpadDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    new-instance v1, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandlerFactory;

    invoke-direct {v3}, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandlerFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;-><init>(Landroid/content/Context;Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    .line 420
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->CREATED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 424
    new-instance v1, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;

    invoke-direct {v1, p0}, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLogContentObserver:Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;

    .line 426
    if-eqz p1, :cond_0

    .line 427
    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 430
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Lcom/android/contacts/ext/DialPadExtension;->onCreate(Landroid/app/Fragment;Lcom/android/contacts/ext/IDialpadFragment;)V

    .line 432
    const-string v1, "onCreate end..."

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 434
    const-string v1, "-DialpadFragment.onCreate"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 436
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v1, 0x7f100006

    .line 1151
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1155
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_1

    .line 1156
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1170
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/DialPadExtension;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1171
    return-void

    .line 1160
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1163
    const-string v0, "onCreateOptionsMenu "

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 466
    const-string v0, "+DialpadFragment.onCreateView"

    invoke-static {v0}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 467
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    .line 469
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/ext/DialPadExtension;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/view/View;)Landroid/view/View;

    .line 472
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    .line 480
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 482
    .local v10, r:Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 484
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchTitle:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 487
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v1, Lcom/android/contacts/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/contacts/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xff

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 496
    new-instance v0, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    .line 497
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    const v1, 0x7f090061

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090034

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f090062

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f090063

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->setAutoScaleParameters(IIII)V

    .line 502
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 505
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    .line 506
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 508
    new-instance v0, Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/contacts/dialpad/DialerSearchController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ListView;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    .line 512
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setDialerSearchTitle(Landroid/widget/TextView;)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_1

    .line 518
    const/4 v1, 0x0

    const-class v0, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateProviderStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDivider:Landroid/view/View;

    .line 523
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadDivider:Landroid/view/View;

    .line 526
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts.dialer_search/callLog/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLogContentObserver:Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 533
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, newIso:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 536
    iput-object v8, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 538
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView setPhoneNumberFormattingTextWatcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 548
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 549
    .local v9, oneButton:Landroid/view/View;
    if-eqz v9, :cond_c

    .line 550
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 559
    :goto_1
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView() isDialerUseSystemOptionMenu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVideoDialButton:Landroid/view/View;

    .line 562
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVideoDialButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mVideoDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSendMessageButton:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSendMessageButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 568
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSendMessageButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    .line 579
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 581
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 582
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 583
    const v0, 0x7f0b0007

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 584
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 597
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 598
    .local v7, dialButtonContainer:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 599
    const v0, 0x7f07002b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 600
    const v0, 0x7f0b0007

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 601
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 616
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 620
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 621
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 624
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-nez v0, :cond_7

    .line 626
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 637
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v0, :cond_12

    .line 638
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 644
    :goto_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 645
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 652
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    .line 653
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 654
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    :goto_7
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 663
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    const-string v0, "(mDigitsContainer != null), mDigitsContainer.setVisibility(View.GONE);0"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 670
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f070125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    .line 671
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :cond_9
    const-string v0, "-DialpadFragment.onCreateView"

    invoke-static {v0}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 680
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_a

    .line 681
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v0

    if-nez v0, :cond_16

    .line 682
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    return-object v0

    .line 476
    .end local v7           #dialButtonContainer:Landroid/view/View;
    .end local v8           #newIso:Ljava/lang/String;
    .end local v9           #oneButton:Landroid/view/View;
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    goto/16 :goto_0

    .line 552
    .restart local v8       #newIso:Ljava/lang/String;
    .restart local v9       #oneButton:Landroid/view/View;
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_c
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "#onCreateView,oneButon is null"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 587
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto/16 :goto_3

    .line 592
    :cond_f
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onCreateView(),mAdditionalButtonsRow is null,fragmentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",container:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 604
    .restart local v7       #dialButtonContainer:Landroid/view/View;
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto/16 :goto_4

    .line 631
    :cond_11
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "#onCreateView(),mDelete is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 640
    :cond_12
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_6

    .line 656
    :cond_13
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "#onCreateView(),mDialpadButton is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 659
    :cond_14
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalButtonsRow is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 665
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 666
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 685
    :cond_16
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 458
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->DESTROYED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 461
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ext/DialPadExtension;->onDestroy()V

    .line 462
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 445
    const-string v0, "onDestroyView"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onDestroy()V

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLogContentObserver:Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 453
    return-void
.end method

.method public onDialerSearchResult(Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;)V
    .locals 3
    .parameter "dialerSearchResult"

    .prologue
    const/4 v1, 0x0

    .line 3113
    if-nez p1, :cond_2

    move v0, v1

    .line 3114
    .local v0, count:I
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v0, :cond_3

    .line 3115
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 3116
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3123
    :cond_1
    :goto_1
    return-void

    .line 3113
    .end local v0           #count:I
    :cond_2
    iget v0, p1, Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;->mCount:I

    goto :goto_0

    .line 3119
    .restart local v0       #count:I
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3120
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAddToContactListButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIPDialMenuItemSelected()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2794
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed(I)V

    .line 2795
    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 2145
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 2147
    .local v0, item:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 2148
    .local v1, itemId:I
    packed-switch v1, :pswitch_data_0

    .line 2175
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :goto_0
    return-void

    .line 2153
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 2160
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 2167
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 2168
    const-string v2, "dialpad choise add new call, adjust list view layout parameters"

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    goto :goto_0

    .line 2148
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1385
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1377
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 1379
    const/4 v0, 0x1

    goto :goto_0

    .line 1375
    :pswitch_data_0
    .packed-switch 0x7f070127
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mDigits.hasFocus(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 2889
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 2973
    :goto_0
    return v1

    .line 2894
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/dialpad/DialpadFragment;->isTrackBallEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2895
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2896
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2898
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2900
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 2902
    goto :goto_0

    .line 2905
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2906
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2907
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2911
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2973
    goto :goto_0

    .line 2913
    :sswitch_0
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2917
    :sswitch_1
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2921
    :sswitch_2
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2925
    :sswitch_3
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2929
    :sswitch_4
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2933
    :sswitch_5
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2937
    :sswitch_6
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2941
    :sswitch_7
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2945
    :sswitch_8
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2949
    :sswitch_9
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2953
    :sswitch_a
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2957
    :sswitch_b
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2961
    :sswitch_c
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2962
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_4
    move v1, v2

    .line 2964
    goto/16 :goto_0

    .line 2969
    :sswitch_d
    iput-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    move v1, v2

    .line 2970
    goto/16 :goto_0

    .line 2911
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_d
        0x19 -> :sswitch_d
        0x1a -> :sswitch_d
        0x52 -> :sswitch_c
    .end sparse-switch
.end method

.method public onListViewItemClicked(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpad(Z)V

    .line 3066
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3067
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3070
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onLongClickInternal(Landroid/view/View;)Z

    move-result v2

    .line 1603
    .local v2, handled:Z
    if-eqz v2, :cond_0

    .line 1687
    .end local v2           #handled:Z
    :goto_0
    return v2

    .line 1609
    .restart local v2       #handled:Z
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1610
    .local v1, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1611
    .local v3, id:I
    sparse-switch v3, :sswitch_data_0

    move v2, v6

    .line 1687
    goto :goto_0

    .line 1614
    :sswitch_0
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setPressed(Z)V

    move v2, v5

    .line 1619
    goto :goto_0

    .line 1624
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1626
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoicemailAvailableProxy()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1628
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1629
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V

    :cond_2
    :goto_1
    move v2, v5

    .line 1652
    goto :goto_0

    .line 1630
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1631
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1633
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1637
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 1640
    .local v4, isAirplaneModeOn:Z
    :goto_2
    if-eqz v4, :cond_5

    .line 1641
    const v6, 0x7f0c02f9

    invoke-static {v6}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1643
    .local v0, dialogFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "voicemail_request_during_airplane_mode"

    invoke-virtual {v0, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #dialogFragment:Landroid/app/DialogFragment;
    .end local v4           #isAirplaneModeOn:Z
    :cond_4
    move v4, v6

    .line 1637
    goto :goto_2

    .line 1646
    .restart local v4       #isAirplaneModeOn:Z
    :cond_5
    const v6, 0x7f0c02f8

    invoke-static {v6}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1648
    .restart local v0       #dialogFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "voicemail_not_ready"

    invoke-virtual {v0, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #dialogFragment:Landroid/app/DialogFragment;
    .end local v4           #isAirplaneModeOn:Z
    :cond_6
    move v2, v6

    .line 1654
    goto/16 :goto_0

    .line 1658
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1659
    const/16 v6, 0x51

    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1664
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 1665
    iget v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-lez v6, :cond_7

    iget v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    :cond_7
    move v2, v5

    .line 1667
    goto/16 :goto_0

    .line 1673
    :sswitch_3
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    move v2, v6

    .line 1674
    goto/16 :goto_0

    .line 1677
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1678
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    move v2, v5

    .line 1681
    goto/16 :goto_0

    :cond_8
    move v2, v6

    .line 1683
    goto/16 :goto_0

    .line 1611
    :sswitch_data_0
    .sparse-switch
        0x7f07001e -> :sswitch_1
        0x7f070027 -> :sswitch_2
        0x7f07002b -> :sswitch_4
        0x7f070121 -> :sswitch_0
        0x7f070127 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLongClickInternal(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2670
    const/4 v1, -0x1

    .line 2671
    .local v1, key:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2734
    :cond_0
    :goto_0
    return v0

    .line 2674
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2678
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2679
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/contacts/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    move v0, v2

    .line 2680
    goto :goto_0

    .line 2682
    :sswitch_1
    const/4 v1, 0x2

    .line 2709
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eq v5, v1, :cond_0

    .line 2713
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/contacts/dialpad/SpeedDial;

    invoke-virtual {v3, v1}, Lcom/mediatek/contacts/dialpad/SpeedDial;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 2714
    .local v0, isDialed:Z
    if-eqz v0, :cond_4

    .line 2716
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->showSpeedDialConfirmDialog()V

    .line 2725
    :cond_2
    :goto_2
    if-eq v5, v1, :cond_3

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    .line 2726
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 2727
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 2728
    iget v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-lez v2, :cond_3

    .line 2729
    iget v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 2733
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClickInternal key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2685
    .end local v0           #isDialed:Z
    :sswitch_2
    const/4 v1, 0x3

    .line 2686
    goto :goto_1

    .line 2688
    :sswitch_3
    const/4 v1, 0x4

    .line 2689
    goto :goto_1

    .line 2691
    :sswitch_4
    const/4 v1, 0x5

    .line 2692
    goto :goto_1

    .line 2694
    :sswitch_5
    const/4 v1, 0x6

    .line 2695
    goto :goto_1

    .line 2697
    :sswitch_6
    const/4 v1, 0x7

    .line 2698
    goto :goto_1

    .line 2700
    :sswitch_7
    const/16 v1, 0x8

    .line 2701
    goto :goto_1

    .line 2703
    :sswitch_8
    const/16 v1, 0x9

    .line 2704
    goto :goto_1

    .line 2718
    .restart local v0       #isDialed:Z
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/contacts/dialpad/SpeedDial;

    invoke-virtual {v3, v1}, Lcom/mediatek/contacts/dialpad/SpeedDial;->dial(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2721
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->showSpeedDialConfirmDialog()V

    .line 2722
    const/4 v0, 0x1

    goto :goto_2

    .line 2671
    :sswitch_data_0
    .sparse-switch
        0x7f07001f -> :sswitch_1
        0x7f070020 -> :sswitch_2
        0x7f070021 -> :sswitch_3
        0x7f070022 -> :sswitch_4
        0x7f070023 -> :sswitch_5
        0x7f070024 -> :sswitch_6
        0x7f070025 -> :sswitch_7
        0x7f070026 -> :sswitch_8
        0x7f070121 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2293
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/DialPadExtension;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    const/4 v0, 0x1

    .line 2296
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2261
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/contacts/ext/DialPadExtension;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2284
    :goto_0
    return v2

    .line 2264
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2284
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2267
    :pswitch_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v3

    const-string v4, "p"

    const-string v5, ","

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    .local v0, p:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 2272
    .end local v0           #p:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v3

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2274
    .local v1, w:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 2264
    :pswitch_data_0
    .packed-switch 0x7f0701ef
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2666
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2655
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onIPDialMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2657
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onSpeedDialMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2659
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onSendMessageMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2661
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->onPeopleMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2663
    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed(I)V

    .line 2664
    const/4 v0, 0x1

    goto :goto_0

    .line 2653
    nop

    :pswitch_data_0
    .packed-switch 0x7f0701ea
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1069
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1075
    const-string v1, "onPause"

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1076
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->PAUSED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 1080
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 1086
    iput-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSpeedDialConfirmDialogFragment:Landroid/app/DialogFragment;

    .line 1090
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1092
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1095
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 1097
    iput v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 1099
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_2

    .line 1101
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1104
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1109
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v1, :cond_3

    .line 1110
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onPause()V

    .line 1112
    :cond_3
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsForeground:Z

    .line 1113
    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->cleanup()V

    .line 1114
    return-void

    .line 1104
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onPeopleMenuItemSelected()Z
    .locals 2

    .prologue
    .line 2822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2823
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2824
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2825
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_1

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1181
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupPopupMenuItems(Landroid/view/Menu;)V

    .line 1195
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/DialPadExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1196
    return-void

    .line 1185
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1188
    const-string v0, "onPrepareOptionsMenu "

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "pressed"

    .prologue
    .line 1396
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressed(). view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    if-eqz p2, :cond_1

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1448
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :goto_0
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 1469
    :cond_0
    :goto_1
    return-void

    .line 1400
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1404
    :pswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1408
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1412
    :pswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1416
    :pswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1420
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1424
    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1428
    :pswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1432
    :pswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1436
    :pswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1440
    :pswitch_a
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1444
    :pswitch_b
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1454
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1455
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 1456
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-gez v0, :cond_2

    .line 1462
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "mKeyPressCount become negative."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    .line 1464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto :goto_1

    .line 1465
    :cond_2
    iget v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-nez v0, :cond_0

    .line 1466
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    .line 1398
    :pswitch_data_0
    .packed-switch 0x7f07001e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 877
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 878
    const-string v4, "+DialpadFragment.onResume"

    invoke-static {v4}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume, mFragmentState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 880
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    sget-object v7, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->RESUMED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    if-ne v4, v7, :cond_0

    .line 881
    const-string v4, "duplicate resumed state, bial out..."

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 884
    :cond_0
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->RESUMED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 886
    const-string v4, "Dialpad.onResume"

    invoke-static {v4}, Lcom/android/contacts/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/util/StopWatch;

    move-result-object v3

    .line 888
    .local v3, stopWatch:Lcom/android/contacts/util/StopWatch;
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-nez v4, :cond_1

    .line 889
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v7, 0x7f070121

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 890
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 891
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 900
    :cond_1
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 907
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 909
    const-string v4, "qloc"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dtmf_tone"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 915
    const-string v4, "dtwd"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 918
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v4}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 920
    const-string v4, "hptc"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 924
    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v7

    .line 925
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 927
    :try_start_1
    new-instance v4, Landroid/media/ToneGenerator;

    const/16 v8, 0x8

    const/16 v9, 0x50

    invoke-direct {v4, v8, v9}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 933
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    const-string v4, "tg"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 938
    iput v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 940
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 941
    .local v2, parent:Landroid/app/Activity;
    instance-of v4, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v4, :cond_3

    .line 944
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 945
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v4, :cond_3

    .line 946
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onResume()V

    .line 950
    :cond_3
    const-string v4, "fdin"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 961
    const-string v4, "tm"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x21

    invoke-static {v4, v7, v8}, Lcom/mediatek/contacts/simcontact/SlotUtils;->listenAllSlots(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V

    .line 984
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 985
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f0c018b

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 987
    .local v1, hint:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f4ccccd

    invoke-direct {v4, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v1, v4, v6, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 988
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1039
    .end local v1           #hint:Landroid/text/SpannableString;
    :cond_4
    :goto_3
    const-string v4, "onResume adjust list view layout parameters"

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    .line 1042
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadDivider:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 1043
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadDivider:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_5
    const-string v4, "-DialpadFragment.onResume"

    invoke-static {v4}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 1046
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mIsForeground:Z

    goto/16 :goto_0

    .end local v2           #parent:Landroid/app/Activity;
    :cond_6
    move v4, v6

    .line 912
    goto/16 :goto_1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception caught while creating local tone generator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_2

    .line 933
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 991
    .restart local v2       #parent:Landroid/app/Activity;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 995
    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 997
    const-string v4, "hnt"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 999
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 1001
    const-string v4, "bes"

    invoke-virtual {v3, v4}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1002
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const/16 v7, 0x32

    invoke-virtual {v3, v4, v7}, Lcom/android/contacts/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 1004
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1005
    const-string v4, "onResume, hide digits"

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1007
    iget-boolean v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-nez v4, :cond_4

    .line 1009
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 1015
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1016
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 1017
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1145
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1146
    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1147
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2831
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2834
    if-eqz p2, :cond_0

    .line 2836
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-nez v0, :cond_0

    .line 2838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpad(Z)V

    .line 2845
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2849
    :cond_1
    return-void
.end method

.method protected onSendMessageMenuItemSelected()Z
    .locals 7

    .prologue
    .line 2799
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2800
    .local v2, phoneNumber:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendMessageMenuItemSelected: number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2802
    const-string v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2803
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2805
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendMessageMenuItemSelected Launching SMS compose UI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2807
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2808
    :catch_0
    move-exception v0

    .line 2809
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onShowDialpadButtonClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2776
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2777
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2778
    .local v0, show:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpad(Z)V

    .line 2784
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 2785
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2790
    .end local v0           #show:Z
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected onSpeedDialMenuItemSelected()Z
    .locals 3

    .prologue
    .line 2815
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2816
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2817
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2818
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1055
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onStart()V

    .line 1062
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 1064
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1118
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1119
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 1124
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;->STOPPED:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mFragmentState:Lcom/android/contacts/dialpad/DialpadFragment$FragmentState;

    .line 1125
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setClearDigitsOnStop(Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->onStop()V

    .line 1133
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandler;->dismissDialogs()V

    .line 1141
    :cond_1
    return-void

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 329
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 331
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 338
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 844
    return-void
.end method

.method protected showDialpad(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 2626
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 2627
    .local v1, visibility:I
    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHideDialpadDrawable:Landroid/graphics/drawable/Drawable;

    .line 2628
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_0

    .line 2629
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2, p1}, Lcom/android/contacts/activities/DialtactsActivity;->addDialpadScrollingThreshold(Z)V

    .line 2631
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialpad visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2632
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2633
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadDivider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2634
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 2635
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2636
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2642
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 2643
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2647
    :cond_2
    const-string v2, "showDialpad, adjust list view layout parameters"

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    .line 2650
    return-void

    .line 2626
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #visibility:I
    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    .line 2627
    .restart local v1       #visibility:I
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowDialpadDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 2637
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 2638
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2639
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateDialerSearch()V
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v0, :cond_0

    .line 3049
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-virtual {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->updateDialerSearch()V

    .line 3051
    :cond_0
    return-void
.end method

.method public updateProviderStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V
    .locals 5
    .parameter "previousState"
    .parameter "state"

    .prologue
    .line 3084
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateProviderStatus]previousStatus:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    const-string v2, "NULL"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "||status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v2, "NULL"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    iget v2, p2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    iget v2, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget v3, p2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v2, v3, :cond_4

    .line 3110
    :cond_1
    :goto_2
    return-void

    .line 3084
    :cond_2
    iget v2, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget v2, p2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 3092
    :cond_4
    const/4 v1, 0x0

    .line 3093
    .local v1, tips:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3094
    .local v0, showTips:Z
    iget v2, p2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    packed-switch v2, :pswitch_data_0

    .line 3106
    :goto_3
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3107
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialerSearchController:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V

    goto :goto_2

    .line 3096
    :pswitch_1
    const/4 v0, 0x1

    .line 3097
    const v2, 0x7f0c0279

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3098
    goto :goto_3

    .line 3100
    :pswitch_2
    const/4 v0, 0x1

    .line 3101
    const v2, 0x7f0c029d

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3102
    goto :goto_3

    .line 3094
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
