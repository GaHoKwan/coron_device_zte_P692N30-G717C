.class Lcom/android/calendar/month/MonthListView$1;
.super Ljava/lang/Object;
.source "MonthListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthListView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    iget-object v0, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    iget-object v0, v0, Lcom/android/calendar/month/MonthListView;->mListContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    iget-object v0, v0, Lcom/android/calendar/month/MonthListView;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    iget-object v1, v1, Lcom/android/calendar/month/MonthListView;->mListContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/month/MonthListView$1;->this$0:Lcom/android/calendar/month/MonthListView;

    #getter for: Lcom/android/calendar/month/MonthListView;->mTimezoneUpdater:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/calendar/month/MonthListView;->access$000(Lcom/android/calendar/month/MonthListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method
