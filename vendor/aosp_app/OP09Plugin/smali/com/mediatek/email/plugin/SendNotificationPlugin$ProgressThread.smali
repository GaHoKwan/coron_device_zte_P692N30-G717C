.class Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;
.super Ljava/lang/Thread;
.source "SendNotificationPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/plugin/SendNotificationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# static fields
.field private static final STEP_FACTOR:I = 0x28


# instance fields
.field private currentProgress:I

.field public mStop:Z

.field private sendingCount:I

.field final synthetic this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;


# direct methods
.method constructor <init>(Lcom/mediatek/email/plugin/SendNotificationPlugin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    .line 272
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    .line 273
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x1000

    const/16 v9, 0x2710

    const/4 v8, 0x0

    .line 277
    :goto_0
    iget-boolean v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    if-nez v5, :cond_8

    .line 278
    iget v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 279
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    iget v7, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v7}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v7

    div-int/2addr v6, v7

    #setter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5, v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$202(Lcom/mediatek/email/plugin/SendNotificationPlugin;I)I

    .line 280
    iget v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    iget v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    div-int/2addr v5, v6

    iput v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    .line 281
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    .line 282
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    invoke-virtual {v5, v9, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 292
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v1

    .line 294
    .local v1, initProgress:I
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$000(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 295
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$400(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4220

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 297
    .local v4, step:I
    if-nez v4, :cond_1

    .line 298
    const/4 v4, 0x1

    .line 302
    :cond_1
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$400(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    sub-int v3, v5, v6

    .line 303
    .local v3, maxProgress:I
    div-int v2, v3, v4

    .line 305
    .local v2, loop:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 307
    iget v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    .line 308
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    invoke-virtual {v5, v9, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 311
    :cond_2
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    if-ne v1, v5, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 314
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :cond_4
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :try_start_2
    iget-boolean v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->sendingCount:I

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 331
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 286
    .end local v0           #i:I
    .end local v1           #initProgress:I
    .end local v2           #loop:I
    .end local v3           #maxProgress:I
    .end local v4           #step:I
    :cond_6
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->currentProgress:I

    .line 287
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 288
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I
    invoke-static {v6}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I

    move-result v6

    invoke-virtual {v5, v9, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 316
    .restart local v0       #i:I
    .restart local v1       #initProgress:I
    .restart local v2       #loop:I
    .restart local v3       #maxProgress:I
    .restart local v4       #step:I
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$000(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/NotificationManager;

    move-result-object v5

    const/16 v6, 0x1000

    iget-object v7, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;
    invoke-static {v7}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 317
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    const-wide/16 v5, 0x1f4

    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 305
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 317
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 321
    :catch_1
    move-exception v5

    goto :goto_3

    .line 335
    .end local v0           #i:I
    .end local v1           #initProgress:I
    .end local v2           #loop:I
    .end local v3           #maxProgress:I
    .end local v4           #step:I
    :cond_8
    return-void
.end method
