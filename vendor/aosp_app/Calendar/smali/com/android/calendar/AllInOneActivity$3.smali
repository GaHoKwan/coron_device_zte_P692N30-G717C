.class Lcom/android/calendar/AllInOneActivity$3;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/calendar/AllInOneActivity;->access$600(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneActivity;->access$502(Lcom/android/calendar/AllInOneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 282
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;
    invoke-static {v0}, Lcom/android/calendar/AllInOneActivity;->access$800(Lcom/android/calendar/AllInOneActivity;)Lcom/android/calendar/AllInOneActivity$QueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$900(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity$3;->this$0:Lcom/android/calendar/AllInOneActivity;

    #getter for: Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/AllInOneActivity;->access$500(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 283
    return-void
.end method
