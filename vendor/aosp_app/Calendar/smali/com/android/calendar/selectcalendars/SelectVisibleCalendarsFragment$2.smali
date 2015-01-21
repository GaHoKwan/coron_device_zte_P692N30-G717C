.class Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;
.super Landroid/database/ContentObserver;
.source "SelectVisibleCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->eventsChanged()V

    .line 208
    return-void
.end method
