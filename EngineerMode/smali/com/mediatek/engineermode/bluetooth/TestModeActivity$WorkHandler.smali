.class final Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;
.super Landroid/os/Handler;
.source "TestModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/TestModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    .line 263
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0xd

    const/16 v6, 0xc

    const/4 v8, 0x5

    const/4 v7, -0x1

    .line 269
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    .line 270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 272
    .local v1, rt:Ljava/lang/Runtime;
    :try_start_0
    const-string v4, "su"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 273
    const-string v4, "TestMode"

    const-string v5, "excute su command."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    new-instance v5, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    #setter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 280
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, val:Ljava/lang/String;
    const/4 v2, 0x0

    .line 283
    .local v2, tmpValue:I
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 288
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setPower(I)V

    .line 289
    const-string v4, "TestMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "power set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->doBtTest(I)I

    move-result v4

    if-ne v7, v4, :cond_1

    .line 292
    const-string v4, "TestMode"

    const-string v5, "transmit data failed."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    :goto_2
    const-string v4, "TestMode"

    const-string v5, "pollingStart"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStart()I

    .line 326
    .end local v1           #rt:Ljava/lang/Runtime;
    .end local v2           #tmpValue:I
    .end local v3           #val:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 274
    .restart local v1       #rt:Ljava/lang/Runtime;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/IOException;
    const-string v4, "TestMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #tmpValue:I
    .restart local v3       #val:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TestMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 302
    .end local v1           #rt:Ljava/lang/Runtime;
    .end local v2           #tmpValue:I
    .end local v3           #val:Ljava/lang/String;
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v6, :cond_3

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_0

    .line 303
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 305
    .restart local v1       #rt:Ljava/lang/Runtime;
    :try_start_2
    const-string v4, "su"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 306
    const-string v4, "TestMode"

    const-string v5, "excute su command."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 311
    :goto_4
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 312
    const-string v4, "TestMode"

    const-string v5, "pollingStop"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStop()I

    .line 314
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->doBtTest(I)I

    move-result v4

    if-ne v7, v4, :cond_4

    .line 316
    const-string v4, "TestMode"

    const-string v5, "transmit data failed 1."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    const/4 v5, 0x0

    #setter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 320
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_6

    .line 321
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 307
    :catch_2
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    const-string v4, "TestMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 322
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_0

    .line 323
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method
