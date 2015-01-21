.class Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;
.super Landroid/os/AsyncTask;
.source "HandWritePageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CursorDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0x1f4L


# instance fields
.field private volatile delay:Z

.field private volatile running:Z

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 399
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    .line 397
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay:Z

    .line 395
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;)V

    return-void
.end method


# virtual methods
.method public delay()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay:Z

    .line 404
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x1

    .line 409
    .local v0, visibility:Z
    :goto_0
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    if-nez v4, :cond_0

    .line 427
    const/4 v2, 0x0

    return-object v2

    .line 410
    :cond_0
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay:Z

    if-nez v4, :cond_2

    .line 411
    new-array v1, v3, [Ljava/lang/Boolean;

    .line 412
    .local v1, visibilitys:[Ljava/lang/Boolean;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    .line 413
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->publishProgress([Ljava/lang/Object;)V

    .line 414
    if-eqz v0, :cond_1

    move v0, v2

    .line 415
    :goto_1
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay:Z

    goto :goto_0

    :cond_1
    move v0, v3

    .line 414
    goto :goto_1

    .line 417
    .end local v1           #visibilitys:[Ljava/lang/Boolean;
    :cond_2
    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay:Z

    .line 420
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 2
    .parameter "visibilitys"

    .prologue
    .line 432
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawCursor(Z)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;Z)V

    .line 433
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method

.method public startDrawing()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    .line 439
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 441
    :cond_0
    return-void
.end method

.method public stopDrawing()V
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->running:Z

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->cancel(Z)Z

    .line 449
    :cond_0
    return-void
.end method
