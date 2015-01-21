.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;
.super Ljava/lang/Thread;
.source "SDLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThreadState:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$700(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdMounted()Z
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$800(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    new-instance v2, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #setter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1300(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    .line 364
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->emptyForder(Z)V
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1400(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)V

    .line 365
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 366
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #setter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I

    .line 367
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    .line 368
    const-string v1, "SD Log"

    const-string v2, "mFileCount > 200 , empty forder."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$300(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    const/4 v2, 0x3

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getRandom(I)I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_1
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    goto :goto_1

    .line 377
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->readFile()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1700(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    goto :goto_1

    .line 380
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->deleteFile()V
    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1800(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    goto :goto_1

    .line 391
    :cond_3
    const-string v1, "SD Log"

    const-string v2, "mThread : mState == false"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 394
    :catch_1
    move-exception v0

    .line 395
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
