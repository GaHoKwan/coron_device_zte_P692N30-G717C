.class Lcom/android/mms/ui/MyScrollListener$MyRunnable;
.super Ljava/lang/Object;
.source "MyScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MyScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field private bindDefaultViewTimes:I

.field private bindViewTimes:I

.field private count:I

.field mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

.field private mNeedRun:Z

.field final synthetic this$0:Lcom/android/mms/ui/MyScrollListener;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MyScrollListener;Z)V
    .locals 1
    .parameter
    .parameter "needRun"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->bindViewTimes:I

    .line 137
    iget v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->bindViewTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->bindDefaultViewTimes:I

    .line 140
    iput-boolean p2, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 159
    .local v2, obj:Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    #getter for: Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z
    invoke-static {v3}, Lcom/android/mms/ui/MyScrollListener;->access$100(Lcom/android/mms/ui/MyScrollListener;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    if-eqz v3, :cond_5

    .line 161
    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnScrollListener.run():count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVelocity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$200()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    #getter for: Lcom/android/mms/ui/MyScrollListener;->mNeedAllRefresh:Z
    invoke-static {v3}, Lcom/android/mms/ui/MyScrollListener;->access$300(Lcom/android/mms/ui/MyScrollListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$200()F

    move-result v3

    const v4, 0x46c35000

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$200()F

    move-result v3

    const v4, -0x393cb000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    .line 171
    :goto_2
    iget v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    .line 172
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    #getter for: Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z
    invoke-static {v3}, Lcom/android/mms/ui/MyScrollListener;->access$100(Lcom/android/mms/ui/MyScrollListener;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    :cond_1
    return-void

    .line 166
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    iget v4, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->bindViewTimes:I

    rem-int/2addr v3, v4

    iget v4, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->bindDefaultViewTimes:I

    if-eq v3, v4, :cond_3

    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    goto :goto_2

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    goto :goto_2

    .line 175
    :cond_4
    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    #getter for: Lcom/android/mms/ui/MyScrollListener;->HANDLE_FLING_THREAD_WAIT_TIME:I
    invoke-static {v3}, Lcom/android/mms/ui/MyScrollListener;->access$400(Lcom/android/mms/ui/MyScrollListener;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_3
    :try_start_1
    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wait has been interrupted."

    invoke-static {v3, v4, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 184
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageCursorAdapter;->setIsScrolling(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    .line 186
    .local v0, adapter:Lcom/android/mms/ui/MessageCursorAdapter;
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;-><init>(Lcom/android/mms/ui/MyScrollListener$MyRunnable;Lcom/android/mms/ui/MessageCursorAdapter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    iget-object v3, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->this$0:Lcom/android/mms/ui/MyScrollListener;

    #getter for: Lcom/android/mms/ui/MyScrollListener;->mNeedDestroy:Z
    invoke-static {v3}, Lcom/android/mms/ui/MyScrollListener;->access$100(Lcom/android/mms/ui/MyScrollListener;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnScrollListener.run(): listener is wait."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    monitor-enter p0

    .line 197
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 201
    :goto_4
    :try_start_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 198
    :catch_1
    move-exception v1

    .line 199
    .restart local v1       #ex:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wait has been interrupted."

    invoke-static {v3, v4, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4
.end method

.method public setConversationListAdapter(Lcom/android/mms/ui/MessageCursorAdapter;)V
    .locals 0
    .parameter "listAdapter"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mListAdapter:Lcom/android/mms/ui/MessageCursorAdapter;

    .line 154
    return-void
.end method

.method public setNeedRun(Z)V
    .locals 2
    .parameter "needRun"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/android/mms/ui/MyScrollListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnScrollListener.onScrollStateChanged(): stop scrolling!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->mNeedRun:Z

    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable;->count:I

    .line 151
    :cond_1
    return-void
.end method
