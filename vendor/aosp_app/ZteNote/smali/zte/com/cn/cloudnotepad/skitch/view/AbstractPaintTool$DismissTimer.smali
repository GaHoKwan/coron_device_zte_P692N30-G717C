.class public Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;
.super Landroid/os/AsyncTask;
.source "AbstractPaintTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final dismissTime:J = 0xbb8L


# instance fields
.field private lastTouchTime:Ljava/lang/Long;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 101
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;

    .line 98
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->lastTouchTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "value"

    .prologue
    const-wide/16 v6, 0xbb8

    .line 107
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->getLastTouchTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 108
    .local v0, remain:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 110
    sub-long v2, v6, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    goto :goto_0

    .line 115
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLastTouchTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->lastTouchTime:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "paramVoid"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->dismiss()V

    .line 131
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->afterAutoDismiss()V

    .line 132
    return-void
.end method

.method public setLastTouchTime(Ljava/lang/Long;)V
    .locals 2
    .parameter "paramLong"

    .prologue
    .line 136
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;

    #getter for: Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->LAST_TOUCH_TIME_LOCK:Ljava/lang/Object;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->access$0(Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool$DismissTimer;->lastTouchTime:Ljava/lang/Long;

    .line 136
    monitor-exit v1

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
