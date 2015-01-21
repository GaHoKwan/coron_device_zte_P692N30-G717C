.class Lcom/android/uiautomator/core/UiAutomatorBridge;
.super Landroid/accessibilityservice/UiTestAutomationBridge;
.source "UiAutomatorBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final BUSY_STATE_POLL_TIME:J = 0x32L

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final QUIET_TIME_TO_BE_CONSIDERD_IDLE_STATE:J = 0x1f4L

.field public static final TIMEOUT_ASYNC_PROCESSING:J = 0x1388L

.field private static final TOTAL_TIME_TO_WAIT_FOR_IDLE_STATE:J = 0x2710L

.field private static final WAIT_TIME_FROM_IDLE_TO_BUSY_STATE:J = 0x1f4L


# instance fields
.field private final mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mInteractionController:Lcom/android/uiautomator/core/InteractionController;

.field private mLastEventTime:J

.field private mLastOperationTime:J

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mQueryController:Lcom/android/uiautomator/core/QueryController;

.field private volatile mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/accessibilityservice/UiTestAutomationBridge;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLock:Ljava/lang/Object;

    .line 62
    iput-wide v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastEventTime:J

    .line 63
    iput-wide v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastOperationTime:J

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    new-instance v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/InteractionController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    .line 78
    new-instance v0, Lcom/android/uiautomator/core/QueryController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    .line 79
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->connect()V

    .line 80
    return-void
.end method

.method private getLastEventTime()J
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-wide v2, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastEventTime:J

    monitor-exit v1

    return-wide v2

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLastOperationTime()J
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-wide v2, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastOperationTime:J

    monitor-exit v1

    return-wide v2

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyListeners(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;

    .line 116
    .local v1, listener:Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;
    invoke-interface {v1, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 118
    .end local v1           #listener:Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;
    :cond_0
    return-void
.end method


# virtual methods
.method addAccessibilityEventListener(Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 13
    .parameter "command"
    .parameter
    .parameter "timeoutMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/accessibility/AccessibilityEvent;>;"
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mWaitingForEventDelivery:Z

    .line 171
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 176
    .local v7, startTimeMillis:J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v2, v9, v7

    .line 177
    .local v2, elapsedTimeMillis:J
    sub-long v5, p3, v2

    .line 178
    .local v5, remainingTimeMillis:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gtz v9, :cond_1

    .line 179
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mWaitingForEventDelivery:Z

    .line 180
    iget-object v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 181
    new-instance v9, Ljava/util/concurrent/TimeoutException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected event not received within: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 184
    :cond_1
    const/4 v4, 0x0

    .line 186
    .local v4, event:Landroid/view/accessibility/AccessibilityEvent;
    :try_start_0
    iget-object v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    if-eqz v4, :cond_0

    .line 191
    invoke-interface {p2, v4}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 192
    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x2710

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(JJ)V

    .line 193
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mWaitingForEventDelivery:Z

    .line 194
    iget-object v9, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 195
    return-object v4

    .line 197
    :cond_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 187
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    return-object v0
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 93
    sget-object v1, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mWaitingForEventDelivery:Z

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 97
    .local v0, clone:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #clone:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    iget-boolean v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mWaitingForEventDelivery:Z

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastEventTime:J

    .line 106
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->notifyListeners(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 107
    return-void

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setOperationTime()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastOperationTime:J

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateEventTime()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mLastEventTime:J

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 134
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 135
    return-void
.end method

.method public waitForIdle(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 138
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(JJ)V

    .line 139
    return-void
.end method

.method public waitForIdle(JJ)V
    .locals 6
    .parameter "idleTimeout"
    .parameter "globalTimeout"

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, start:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getLastOperationTime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getLastEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 125
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/UiTestAutomationBridge;->waitForIdle(JJ)V

    .line 131
    return-void
.end method
