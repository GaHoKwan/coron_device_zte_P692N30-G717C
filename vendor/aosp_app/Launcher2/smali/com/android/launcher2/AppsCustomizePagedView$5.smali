.class Lcom/android/launcher2/AppsCustomizePagedView$5;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->val$sleepMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 3
    .parameter "task"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 1574
    :try_start_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->val$sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1578
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 1582
    :cond_0
    return-void

    .line 1578
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1579
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    :cond_1
    throw v0

    .line 1575
    :catch_0
    move-exception v0

    goto :goto_0
.end method
