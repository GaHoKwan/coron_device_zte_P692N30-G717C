.class public Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;
.super Landroid/content/BroadcastReceiver;
.source "CallEventMonitor.java"


# static fields
.field private static final HIDE:I = 0x1

.field public static final PREF_CALL_LOCATION_SHOW:Ljava/lang/String; = "call_location_show"

.field private static final PREF_FLOATER_X:Ljava/lang/String; = "call_location_floater_x"

.field private static final PREF_FLOATER_Y:Ljava/lang/String; = "call_location_floater_y"

.field public static final PREF_MARK_INCOMING_SHOW:Ljava/lang/String; = "mark_incoming_show"

.field private static final SHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallEventMonitor"

.field public static isUseZDWS:Z

.field private static sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;


# instance fields
.field private ignoreNumber:[Ljava/lang/String;

.field info:Ltmsdk/bg/tcc/NumMarker$NumMark;

.field private mCallMarkTextView:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInScreenX:F

.field private mInScreenY:F

.field private mIsShow:Z

.field private mLayout:Landroid/view/View;

.field private mLocation:Ljava/lang/String;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mMark:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isUseZDWS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->info:Ltmsdk/bg/tcc/NumMarker$NumMark;

    .line 54
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mSp:Landroid/content/SharedPreferences;

    .line 58
    iput-boolean v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    .line 59
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    .line 60
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocationTextView:Landroid/widget/TextView;

    .line 61
    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mCallMarkTextView:Landroid/widget/TextView;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "075526773333"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "+85226773333"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->ignoreNumber:[Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;-><init>(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mSp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->ignoreNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hideReal()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->showReal()V

    return-void
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartX:F

    return p1
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenX:F

    return p1
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenY:F

    return p1
.end method

.method public static checkMonitor()V
    .locals 3

    .prologue
    .line 342
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    if-nez v1, :cond_1

    .line 344
    new-instance v1, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-direct {v1}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 352
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->stopMonitor()V

    goto :goto_0
.end method

.method private hide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method private hideReal()V
    .locals 3

    .prologue
    .line 322
    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    if-eqz v1, :cond_0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    .line 330
    :cond_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CallEventMonitor"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isMarkMonitorEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "mark_incoming_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 396
    :goto_0
    return v1

    :cond_0
    const-string v1, "mark_incoming_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isMonitorEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "call_location_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setMarkMonitor(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 382
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mark_incoming_show"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->checkMonitor()V

    .line 387
    return-void
.end method

.method public static setMonitor(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 366
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "call_location_show"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->checkMonitor()V

    .line 371
    return-void
.end method

.method private show(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private showReal()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f0b0131

    .line 219
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 220
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 221
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    .line 225
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 226
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 227
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 228
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 230
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 231
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 233
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 235
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 245
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3f19999a

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 246
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 247
    .local v1, point:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 248
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "call_location_floater_x"

    iget v5, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 250
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "call_location_floater_y"

    iget v5, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 252
    .end local v1           #point:Landroid/graphics/Point;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    if-nez v2, :cond_2

    .line 253
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030022

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    .line 255
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    const v3, 0x7f0e0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocationTextView:Landroid/widget/TextView;

    .line 256
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    const v3, 0x7f0e0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mCallMarkTextView:Landroid/widget/TextView;

    .line 257
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    new-instance v3, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$2;-><init>(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 301
    :goto_1
    iget-boolean v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    if-nez v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iput-boolean v9, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mIsShow:Z

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mCallMarkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const-string v2, "CallEventMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isMonitorEnable ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mCallMarkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mCallMarkTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_5
    return-void

    .line 241
    :cond_6
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_0

    .line 296
    :cond_7
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method public static stopMonitor()V
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    sget-object v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hide()V

    .line 361
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->sCallEventMonitor:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    .line 363
    :cond_0
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenX:F

    iget v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 334
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mInScreenY:F

    iget v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    .line 171
    if-nez p2, :cond_1

    .line 172
    const-string v2, "CallEventMonitor"

    const-string v3, "onReceive: intent == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    const-string v2, "CallEventMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 179
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, state:Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    const-string v2, "incoming_number"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->show(Ljava/lang/String;)V

    .line 189
    :cond_2
    :goto_1
    const-string v2, "CallEventMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->show(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 186
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hide()V

    goto :goto_1

    .line 190
    .end local v1           #state:Ljava/lang/String;
    :cond_5
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method
