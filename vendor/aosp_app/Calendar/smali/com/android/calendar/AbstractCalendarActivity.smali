.class public abstract Lcom/android/calendar/AbstractCalendarActivity;
.super Landroid/app/Activity;
.source "AbstractCalendarActivity.java"


# instance fields
.field protected mService:Lcom/android/calendar/AsyncQueryService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;
    .locals 1

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v0, p0}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
