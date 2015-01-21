.class Lcom/android/calendar/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    #getter for: Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/SearchActivity;->access$000(Lcom/android/calendar/SearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    #getter for: Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/SearchActivity;->access$100(Lcom/android/calendar/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    iget-object v3, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    #getter for: Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/calendar/SearchActivity;->access$100(Lcom/android/calendar/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$2;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 105
    return-void
.end method
