.class Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;
.super Ljava/lang/Thread;
.source "QuickResponseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/QuickResponseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field mBody:Ljava/lang/String;

.field mEventId:J

.field final synthetic this$0:Lcom/android/calendar/alerts/QuickResponseActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/QuickResponseActivity;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "eventId"
    .parameter "body"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    iput-wide p2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mEventId:J

    .line 110
    iput-object p4, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    iget-wide v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mEventId:J

    iget-object v5, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/alerts/AlertReceiver;->createEmailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, emailIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread$1;-><init>(Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
