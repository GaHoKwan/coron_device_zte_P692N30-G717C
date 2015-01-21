.class Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;
.super Ljava/lang/Thread;
.source "EmoticonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelEmoticonThread"
.end annotation


# instance fields
.field private mStopThread:Z

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonPanel;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->mStopThread:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/EmoticonPanel;Lcom/android/mms/ui/EmoticonPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonPanel;->access$700(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 348
    :try_start_0
    const-string v2, "Mms/EmoticonPanel"

    const-string v4, "Wait for quick delete."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonPanel;->access$700(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 355
    .local v1, object:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonPanel;->access$800(Lcom/android/mms/ui/EmoticonPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "Mms/EmoticonPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start quick delete. mStopThread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->mStopThread:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->mStopThread:Z

    if-nez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonPanel;->access$1000(Lcom/android/mms/ui/EmoticonPanel;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/EmoticonPanel;->access$900(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonPanel;->access$1000(Lcom/android/mms/ui/EmoticonPanel;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/EmoticonPanel;->access$900(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    monitor-enter v1

    .line 364
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 350
    .end local v1           #object:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "Mms/EmoticonPanel"

    const-string v4, "Wait for quick delete.InterruptedException"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 365
    .restart local v1       #object:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 366
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v2, "Mms/EmoticonPanel"

    const-string v3, "DelEmoticonThread.InterruptedException"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 371
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->mStopThread:Z

    .line 342
    return-void
.end method
