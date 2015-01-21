.class public Lcom/mediatek/contacts/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# static fields
.field public static final CallLogEnterOnCreateView:Ljava/lang/String; = "+CallLogFragment.onCreateView"

.field public static final CallLogFragmentEnterOnCreate:Ljava/lang/String; = "+CallLogFragment.onCreate"

.field public static final CallLogFragmentEnterOnResume:Ljava/lang/String; = "+CallLogFragment.onResume"

.field public static final CallLogFragmentLeaveOnCreate:Ljava/lang/String; = "-CallLogFragment.onCreate"

.field public static final CallLogFragmentLeaveOnResume:Ljava/lang/String; = "-CallLogFragment.onResume"

.field public static final CallLogLeaveOnCreateView:Ljava/lang/String; = "-CallLogFragment.onCreateView"

.field public static final CallOptionHandlerEnterOnClick:Ljava/lang/String; = "+CallOptionHandler.onClick"

.field public static final CallOptionHandlerEnterRun:Ljava/lang/String; = "+CallOptionHandler.run"

.field public static final CallOptionHandlerEnterStartActivity:Ljava/lang/String; = "+CallOptionHandler.StartActivity"

.field public static final CallOptionHandlerLeaveOnClick:Ljava/lang/String; = "-CallOptionHandler.onClick"

.field public static final CallOptionHandlerLeaveRun:Ljava/lang/String; = "-CallOptionHandler.run"

.field public static final CallOptionHandlerLeaveStartActivity:Ljava/lang/String; = "-CallOptionHandler.StartActivity"

.field public static final CallOptionHelperEnterMakeVoiceCall:Ljava/lang/String; = "+CallOptionHelper.makeVoiceCall"

.field public static final CallOptionHelperLeaveMakeVoiceCall:Ljava/lang/String; = "-CallOptionHelper.makeVoiceCall"

.field public static final DialpadFragmentEnterClick:Ljava/lang/String; = "+DialpadFragment.onClick"

.field public static final DialpadFragmentEnterOnCreate:Ljava/lang/String; = "+DialpadFragment.onCreate"

.field public static final DialpadFragmentEnterOnCreateView:Ljava/lang/String; = "+DialpadFragment.onCreateView"

.field public static final DialpadFragmentEnterOnResume:Ljava/lang/String; = "+DialpadFragment.onResume"

.field public static final DialpadFragmentLeaveClick:Ljava/lang/String; = "-DialpadFragment.onClick"

.field public static final DialpadFragmentLeaveOnCreate:Ljava/lang/String; = "-DialpadFragment.onCreate"

.field public static final DialpadFragmentLeaveOnCreateView:Ljava/lang/String; = "-DialpadFragment.onCreateView"

.field public static final DialpadFragmentLeaveOnResume:Ljava/lang/String; = "-DialpadFragment.onResume"

.field public static final DialpadFragmentOnPostDraw:Ljava/lang/String; = "DialpadFragment.onPostDrawer"

.field public static final DialpadFragmentViewEnterOnMeasure:Ljava/lang/String; = "+DialpadFragmentView.OnMeasure"

.field public static final DialpadFragmentViewLeaveOnMeasure:Ljava/lang/String; = "-DialpadFragmentView.OnMeasure"

.field public static final DialtactsActivityEnterOnCreate:Ljava/lang/String; = "+DialtactsActivity.onCreate"

.field public static final DialtactsActivityEnterOnPause:Ljava/lang/String; = "+DialtactsActivity.onPause"

.field public static final DialtactsActivityEnterOnStop:Ljava/lang/String; = "+DialtactsActivity.onStop"

.field public static final DialtactsActivityLeaveOnCreate:Ljava/lang/String; = "-DialtactsActivity.onCreate"

.field public static final DialtactsActivityLeaveOnPause:Ljava/lang/String; = "-DialtactsActivity.onPause"

.field public static final DialtactsActivityLeaveOnStop:Ljava/lang/String; = "-DialtactsActivity.onStop"

.field public static final DialtactsActivityOnBackPressed:Ljava/lang/String; = "DialtactsActivityOnBackPressed"

.field public static final DialtactsActivitySetCurrentTab:Ljava/lang/String; = "ViewPager.setCurrentTab"

.field public static final DialtactsActivitySetOffscreenPageLimit:Ljava/lang/String; = "ViewPager.setOffscreenPageLimit"

.field public static final PhoneFavoriteFragmentEnterOnCreate:Ljava/lang/String; = "+PhoneFavoriteFragment.onCreate"

.field public static final PhoneFavoriteFragmentEnterOnCreateView:Ljava/lang/String; = "+PhoneFavoriteFragment.onCreateView"

.field public static final PhoneFavoriteFragmentEnterOnStart:Ljava/lang/String; = "+PhoneFavoriteFragment.onStart"

.field public static final PhoneFavoriteFragmentLeaveOnCreate:Ljava/lang/String; = "-PhoneFavoriteFragment.onCreate"

.field public static final PhoneFavoriteFragmentLeaveOnCreateView:Ljava/lang/String; = "-PhoneFavoriteFragment.onCreateView"

.field public static final PhoneFavoriteFragmentLeaveOnStart:Ljava/lang/String; = "-PhoneFavoriteFragment.onStart"

.field private static final TAG:Ljava/lang/String; = "PhoneProfiler"

.field public static final ViewPagerNewCallLogFragment:Ljava/lang/String; = "ViewPager.getItem CallLogFragment"

.field public static final ViewPagerNewDialpadFragment:Ljava/lang/String; = "ViewPager.getItem DialpadFragment"

.field public static final ViewPagerNewPhoneFavoriteFragment:Ljava/lang/String; = "ViewPager.getItem PhoneFavoriteFragment"

.field private static final enablePhoneProfiler:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 66
    return-void
.end method
