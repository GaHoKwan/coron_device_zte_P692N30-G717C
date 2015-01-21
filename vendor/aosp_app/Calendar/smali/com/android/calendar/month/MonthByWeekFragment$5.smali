.class Lcom/android/calendar/month/MonthByWeekFragment$5;
.super Landroid/database/ContentObserver;
.source "MonthByWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthByWeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$5;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 526
    const-string v0, "MonthFragment"

    const-string v1, "mCalendarsObserver, onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$5;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/month/MonthByWeekFragment;->mIsAccountChanged:Z
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthByWeekFragment;->access$702(Lcom/android/calendar/month/MonthByWeekFragment;Z)Z

    .line 528
    return-void
.end method
