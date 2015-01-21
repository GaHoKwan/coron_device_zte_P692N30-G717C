.class public Lcom/android/mms/ui/MyScrollListener;
.super Ljava/lang/Object;
.source "MyScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MyScrollListener$MyRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mVelocity:F


# instance fields
.field private HANDLE_FLING_THREAD_WAIT_TIME:I

.field private final SCROLL_DOWN_VELOCITY:I

.field private final SCROLL_UP_VELOCITY:I

.field private mMinCursorCount:I

.field private mNeedAllRefresh:Z

.field private mNeedDestroy:Z

.field private mThreadName:Ljava/lang/String;

.field private myThread:Ljava/lang/Thread;

.field private runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "Mms/ScrollListener"

    sput-object v0, Lcom/android/mms/ui/MyScrollListener;->TAG:Ljava/lang/String;

    .line 74
    const/high16 v0, 0x4000

    sput v0, Lcom/android/mms/ui/MyScrollListener;->mVelocity:F

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "minCursorCount"
    .parameter "threadName"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener;->HANDLE_FLING_THREAD_WAIT_TIME:I

    .line 66
    const-string v0, "ConversationList_Scroll_Tread"

    iput-object v0, p0, Lcom/android/mms/ui/MyScrollListener;->mThreadName:Ljava/lang/String;

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener;->mMinCursorCount:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MyScrollListener;->myThread:Ljava/lang/Thread;

    .line 69
    iput-boolean v2, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z

    .line 70
    new-instance v0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MyScrollListener$MyRunnable;-><init>(Lcom/android/mms/ui/MyScrollListener;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    .line 72
    const/16 v0, 0x61a8

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener;->SCROLL_DOWN_VELOCITY:I

    .line 73
    const/16 v0, -0x61a8

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener;->SCROLL_UP_VELOCITY:I

    .line 76
    iput-boolean v2, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedAllRefresh:Z

    .line 78
    iput p1, p0, Lcom/android/mms/ui/MyScrollListener;->mMinCursorCount:I

    .line 79
    iput-object p2, p0, Lcom/android/mms/ui/MyScrollListener;->mThreadName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/mms/ui/MyScrollListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MyScrollListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z

    return v0
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/mms/ui/MyScrollListener;->mVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MyScrollListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedAllRefresh:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MyScrollListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/mms/ui/MyScrollListener;->HANDLE_FLING_THREAD_WAIT_TIME:I

    return v0
.end method

.method public static setScrollVelocity(F)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 96
    sput p0, Lcom/android/mms/ui/MyScrollListener;->mVelocity:F

    .line 97
    return-void
.end method


# virtual methods
.method public destroyThread()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/mms/ui/MyScrollListener;->TAG:Ljava/lang/String;

    const-string v2, "destroy thread."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->setNeedRun(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 130
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageCursorAdapter;

    .line 101
    .local v0, mlistAdapter:Lcom/android/mms/ui/MessageCursorAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/MyScrollListener;->mMinCursorCount:I

    if-lt v1, v2, :cond_0

    .line 102
    if-ne p2, v3, :cond_2

    .line 103
    sget-object v1, Lcom/android/mms/ui/MyScrollListener;->TAG:Ljava/lang/String;

    const-string v2, "OnScrollListener.onScrollStateChanged(): on touch state."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    .line 119
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->myThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->setNeedRun(Z)V

    .line 123
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 106
    sget-object v1, Lcom/android/mms/ui/MyScrollListener;->TAG:Ljava/lang/String;

    const-string v2, "OnScrollListener.onScrollStateChanged(): scrolling..."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    monitor-enter v2

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->setConversationListAdapter(Lcom/android/mms/ui/MessageCursorAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->setNeedRun(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->myThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/mms/ui/MyScrollListener;->runnable:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener;->mThreadName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->myThread:Ljava/lang/Thread;

    .line 115
    iget-object v1, p0, Lcom/android/mms/ui/MyScrollListener;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 123
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setIsNeedRefresh(Z)V
    .locals 0
    .parameter "needAllFresh"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/mms/ui/MyScrollListener;->mNeedAllRefresh:Z

    .line 94
    return-void
.end method
