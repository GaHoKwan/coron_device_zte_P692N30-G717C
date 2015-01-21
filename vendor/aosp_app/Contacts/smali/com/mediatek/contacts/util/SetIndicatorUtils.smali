.class public Lcom/mediatek/contacts/util/SetIndicatorUtils;
.super Ljava/lang/Object;
.source "SetIndicatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/SetIndicatorUtils$1;,
        Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final INDICATE_TYPE:Ljava/lang/String; = "CONTACTS"

.field private static final PEOPLEACTIVITY:Ljava/lang/String; = null

.field private static final QUICKCONTACTACTIVITY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SetIndicatorUtils"

.field private static sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;


# instance fields
.field private mQuickContactIsShow:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowSimIndicator:Z

.field private mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->PEOPLEACTIVITY:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->QUICKCONTACTACTIVITY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;-><init>(Lcom/mediatek/contacts/util/SetIndicatorUtils;Lcom/mediatek/contacts/util/SetIndicatorUtils$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 35
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/util/SetIndicatorUtils;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/util/SetIndicatorUtils;ZLandroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->setSimIndicatorVisibility(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    .line 45
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    return-object v0
.end method

.method private setSimIndicatorVisibility(ZLandroid/app/Activity;)V
    .locals 5
    .parameter "visible"
    .parameter "activity"

    .prologue
    .line 59
    const-string v2, "SetIndicatorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSimIndicatorVisibility]visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, componentName:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 62
    .local v0, className:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 72
    const-string v2, "SetIndicatorUtils"

    const-string v3, "[setSimIndicatorVisibility]do show Sim Indicator"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v3, "voice_call_sim_setting"

    invoke-virtual {v2, v1, v3}, Landroid/app/StatusBarManager;->showSimIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/mediatek/contacts/util/SetIndicatorUtils;->QUICKCONTACTACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 89
    :cond_1
    :goto_1
    return-void

    .line 69
    :cond_2
    const-string v2, "SetIndicatorUtils"

    const-string v3, "set compentantName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_3
    sget-object v2, Lcom/mediatek/contacts/util/SetIndicatorUtils;->QUICKCONTACTACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 81
    :cond_4
    iget-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/mediatek/contacts/util/SetIndicatorUtils;->PEOPLEACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    const-string v2, "SetIndicatorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " no hide PEOPLEACTIVITY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/contacts/util/SetIndicatorUtils;->PEOPLEACTIVITY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :cond_5
    const-string v2, "SetIndicatorUtils"

    const-string v3, "[setSimIndicatorVisibility]do hide Sim Indicator"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->hideSimIndicator(Landroid/content/ComponentName;)V

    goto :goto_1
.end method


# virtual methods
.method public registerReceiver(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 107
    const-string v1, "SetIndicatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method public showIndicator(ZLandroid/app/Activity;)V
    .locals 3
    .parameter "visible"
    .parameter "activity"

    .prologue
    .line 49
    const-string v0, "SetIndicatorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIndicator visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-boolean p1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "CONTACTS"

    const-string v2, "ExtensionForAppGuideExt"

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/contacts/ext/ContactAccountExtension;->switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->setSimIndicatorVisibility(ZLandroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public unregisterReceiver(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 114
    const-string v0, "SetIndicatorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceiver activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    :cond_0
    return-void
.end method
