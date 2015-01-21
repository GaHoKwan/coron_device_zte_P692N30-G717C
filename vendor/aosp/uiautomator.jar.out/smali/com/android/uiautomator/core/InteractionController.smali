.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SCROLL_EVENT_TIMEOUT_MILLIS:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mLongPressTimeout:J

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 4
    .parameter "bridge"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 79
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 82
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    .line 84
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to connect to WindowManager, is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/uiautomator/core/InteractionController;->getSystemLongPressTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mLongPressTimeout:J

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/InputEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private getSystemLongPressTime()J
    .locals 16

    .prologue
    .line 102
    const-wide/16 v11, 0x0

    .line 104
    .local v11, longPressTimeout:J
    const/4 v0, 0x0

    .line 105
    .local v0, provider:Landroid/content/IContentProvider;
    const/4 v8, 0x0

    .line 106
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 107
    .local v7, activityManager:Landroid/app/IActivityManager;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, providerName:Ljava/lang/String;
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v15, token:Landroid/os/IBinder;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v14, v1, v15}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v10

    .line 112
    .local v10, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v10, :cond_2

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v10           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_0

    .line 124
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v7, v14, v15}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    .end local v7           #activityManager:Landroid/app/IActivityManager;
    .end local v14           #providerName:Ljava/lang/String;
    .end local v15           #token:Landroid/os/IBinder;
    :catch_0
    move-exception v9

    .line 131
    .local v9, e:Landroid/os/RemoteException;
    const-string v13, "Error reading long press timeout setting."

    .line 132
    .local v13, message:Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v13, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #message:Ljava/lang/String;
    .restart local v7       #activityManager:Landroid/app/IActivityManager;
    .restart local v10       #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v14       #providerName:Ljava/lang/String;
    .restart local v15       #token:Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v0, v10, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 116
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "long_press_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    int-to-long v11, v1

    .line 123
    :cond_3
    if-eqz v8, :cond_4

    .line 124
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_4
    if-eqz v0, :cond_5

    .line 127
    invoke-interface {v7, v14, v15}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :cond_5
    return-wide v11
.end method

.method private static injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 665
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private runAndWaitForEvent(Ljava/lang/Runnable;JI)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .parameter "command"
    .parameter "timeout"
    .parameter "eventType"

    .prologue
    .line 194
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;JZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;JZI)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .parameter "command"
    .parameter "timeout"
    .parameter "waitForAll"
    .parameter "eventTypesMask"

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p5, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "events mask cannot be zero"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    :try_start_0
    iget-object v3, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    new-instance v4, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;

    invoke-direct {v4, p0, p5, p4}, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;IZ)V

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 250
    :goto_0
    return-object v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runAndwaitForEvent timedout waiting for events: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private touchDown(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchDown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 343
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x0

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 345
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 346
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchMove(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchMove ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 366
    .local v2, eventTime:J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x2

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 368
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 369
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchUp(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 350
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchUp ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 354
    .local v2, eventTime:J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v5, p1

    int-to-float v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 356
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 358
    invoke-static {v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public click(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 297
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickAndWaitForEvent(IIJI)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "timeout"
    .parameter "eventType"

    .prologue
    .line 153
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForEvents(IIJZI)Z

    move-result v0

    return v0
.end method

.method public clickAndWaitForEvents(IIJZI)Z
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "timeout"
    .parameter "waitForAll"
    .parameter "eventTypes"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 169
    const-string v0, "clickAndWaitForEvents(%d, %d, %d, %s, %d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, logString:Ljava/lang/String;
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 174
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .local v1, command:Ljava/lang/Runnable;
    move-object v0, p0

    move-wide v2, p3

    move v4, p5

    move v5, p6

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;JZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "timeout"

    .prologue
    .line 318
    const/4 v5, 0x1

    const/16 v6, 0x820

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForEvents(IIJZI)Z

    move-result v0

    return v0
.end method

.method public freezeRotation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 614
    return-void
.end method

.method public isNaturalRotation()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 661
    .local v0, pm:Landroid/os/IPowerManager;
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public longTap(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 324
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longTap ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mLongPressTimeout:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollSwipe(IIIII)Z
    .locals 9
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 384
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollSwipe ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    .line 394
    .local v0, command:Ljava/lang/Runnable;
    const-wide/16 v1, 0x1f4

    const/16 v3, 0x1000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvent(Ljava/lang/Runnable;JI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 396
    .local v7, event:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    .line 400
    :cond_0
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 404
    const/4 v8, 0x0

    .line 405
    .local v8, foundEnd:Z
    if-ge p2, p4, :cond_2

    .line 406
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v8, 0x1

    .line 410
    :goto_1
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez v8, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 408
    :cond_2
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v8, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 411
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 412
    .end local v8           #foundEnd:Z
    :cond_5
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 414
    if-ne p1, p3, :cond_9

    .line 416
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v2

    if-ne v1, v2, :cond_7

    :cond_6
    const/4 v8, 0x1

    .line 418
    .restart local v8       #foundEnd:Z
    :goto_3
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vertical scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez v8, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 416
    .end local v8           #foundEnd:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 419
    .restart local v8       #foundEnd:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 420
    .end local v8           #foundEnd:Z
    :cond_9
    if-ne p2, p4, :cond_d

    .line 422
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v2

    if-ne v1, v2, :cond_b

    :cond_a
    const/4 v8, 0x1

    .line 424
    .restart local v8       #foundEnd:Z
    :goto_4
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Horizontal scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-nez v8, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 422
    .end local v8           #foundEnd:Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 425
    .restart local v8       #foundEnd:Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 428
    .end local v8           #foundEnd:Z
    :cond_d
    if-eqz v7, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public sendKey(II)Z
    .locals 16
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 540
    sget-boolean v3, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 541
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendKey ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 546
    .local v1, eventTime:J
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v13, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 549
    .local v14, downEvent:Landroid/view/KeyEvent;
    invoke-static {v14}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v13, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 553
    .local v15, upEvent:Landroid/view/KeyEvent;
    invoke-static {v15}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    const/4 v3, 0x1

    .line 557
    .end local v15           #upEvent:Landroid/view/KeyEvent;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .locals 2
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "eventType"
    .parameter "timeout"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 270
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .line 286
    .local v0, command:Ljava/lang/Runnable;
    invoke-direct {p0, v0, p4, p5, p3}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvent(Ljava/lang/Runnable;JI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 10
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 516
    sget-boolean v7, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 517
    sget-object v7, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendText ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v7, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v7}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOperationTime()V

    .line 521
    iget-object v7, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 522
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_2

    .line 523
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 529
    .local v2, event2:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v2, v7, v8, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 531
    .local v1, event:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 536
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v2           #event2:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_1
    return v6

    .line 523
    .restart local v0       #arr$:[Landroid/view/KeyEvent;
    .restart local v1       #event:Landroid/view/KeyEvent;
    .restart local v2       #event2:Landroid/view/KeyEvent;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 536
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v2           #event2:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public setRotationLeft()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 593
    return-void
.end method

.method public setRotationNatural()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 605
    return-void
.end method

.method public setRotationRight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 581
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 648
    const/4 v0, 0x1

    .line 650
    :cond_0
    return v0
.end method

.method public swipe(IIIII)Z
    .locals 11
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, ret:Z
    move/from16 v2, p5

    .line 443
    .local v2, swipeSteps:I
    const-wide/16 v3, 0x0

    .line 444
    .local v3, xStep:D
    const-wide/16 v5, 0x0

    .line 447
    .local v5, yStep:D
    if-nez v2, :cond_0

    .line 448
    const/4 v2, 0x1

    .line 450
    :cond_0
    sub-int v7, p3, p1

    int-to-double v7, v7

    int-to-double v9, v2

    div-double v3, v7, v9

    .line 451
    sub-int v7, p4, p2

    int-to-double v7, v7

    int-to-double v9, v2

    div-double v5, v7, v9

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v1

    .line 455
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 456
    int-to-double v7, v0

    mul-double/2addr v7, v3

    double-to-int v7, v7

    add-int/2addr v7, p1

    int-to-double v8, v0

    mul-double/2addr v8, v5

    double-to-int v8, v8

    add-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v7

    and-int/2addr v1, v7

    .line 457
    if-nez v1, :cond_2

    .line 465
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v7

    and-int/2addr v1, v7

    .line 466
    return v1

    .line 463
    :cond_2
    const-wide/16 v7, 0x5

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .parameter "segments"
    .parameter "segmentSteps"

    .prologue
    const/4 v8, 0x0

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, ret:Z
    move v3, p2

    .line 478
    .local v3, swipeSteps:I
    const-wide/16 v4, 0x0

    .line 479
    .local v4, xStep:D
    const-wide/16 v6, 0x0

    .line 482
    .local v6, yStep:D
    if-nez p2, :cond_0

    .line 483
    const/4 p2, 0x1

    .line 486
    :cond_0
    array-length v9, p1

    if-nez v9, :cond_1

    .line 511
    :goto_0
    return v8

    .line 490
    :cond_1
    aget-object v9, p1, v8

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v8}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v1

    .line 491
    const/4 v2, 0x0

    .local v2, seg:I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 492
    add-int/lit8 v8, v2, 0x1

    array-length v9, p1

    if-ge v8, v9, :cond_2

    .line 494
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v4, v8, v10

    .line 495
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 497
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 498
    aget-object v8, p1, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v9, v0

    mul-double/2addr v9, v4

    double-to-int v9, v9

    add-int/2addr v8, v9

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v0

    mul-double/2addr v10, v6

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v8

    and-int/2addr v1, v8

    .line 500
    if-nez v1, :cond_3

    .line 491
    .end local v0           #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    .restart local v0       #i:I
    :cond_3
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 510
    .end local v0           #i:I
    :cond_4
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v8

    and-int/2addr v1, v8

    move v8, v1

    .line 511
    goto :goto_0
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 623
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 634
    const/4 v0, 0x1

    .line 636
    :cond_0
    return v0
.end method
