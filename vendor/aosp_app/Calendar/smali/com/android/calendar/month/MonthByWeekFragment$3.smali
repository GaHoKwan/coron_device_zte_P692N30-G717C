.class Lcom/android/calendar/month/MonthByWeekFragment$3;
.super Ljava/lang/Object;
.source "MonthByWeekFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    #getter for: Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z
    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$600(Lcom/android/calendar/month/MonthByWeekFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment$3;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    #setter for: Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1, v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$202(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/content/CursorLoader;)Landroid/content/CursorLoader;

    .line 146
    :cond_0
    return-void
.end method
