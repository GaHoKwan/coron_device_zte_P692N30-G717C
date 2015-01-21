.class Lcom/mediatek/engineermode/cwtest/CWTest$5;
.super Landroid/os/Handler;
.source "CWTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cwtest/CWTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cwtest/CWTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 550
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 615
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 616
    return-void

    .line 552
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$608(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    .line 554
    const-string v7, "CWTest/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[--CMD--]send start command, times = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v9}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    const-string v8, "$PMTK817,1"

    #calls: Lcom/mediatek/engineermode/cwtest/CWTest;->sendCommand(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$700(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)V

    .line 556
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v7

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$800(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 557
    const-string v7, "CWTest/Activity"

    const-string v8, "Test done"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_1
    const/16 v7, 0x3e9

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mInterval:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$900(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    const-string v8, "$PMTK817,0"

    #calls: Lcom/mediatek/engineermode/cwtest/CWTest;->sendCommand(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$700(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)V

    .line 565
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1000(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1200(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, res:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, strA:[Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1000(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    array-length v7, v3

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    .line 574
    const-string v7, "CWTest/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[--CMD--]receive command, times = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v9}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v7, 0x2

    aget-object v5, v3, v7

    .line 576
    .local v5, strCNR:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 577
    .local v0, cnr:I
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 578
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I
    invoke-static {v7, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1302(Lcom/mediatek/engineermode/cwtest/CWTest;I)I

    .line 579
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I
    invoke-static {v7, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1402(Lcom/mediatek/engineermode/cwtest/CWTest;I)I

    .line 588
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1500(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1300(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1600(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1400(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 593
    .local v4, strB:[C
    const/4 v1, 0x0

    .line 594
    .local v1, index:I
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_3

    .line 595
    aget-char v7, v4, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_7

    .line 601
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v10, v1}, Ljava/lang/String;-><init>([CII)V

    .line 602
    .local v6, strDrift:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1200(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .end local v0           #cnr:I
    .end local v1           #index:I
    .end local v4           #strB:[C
    .end local v5           #strCNR:Ljava/lang/String;
    .end local v6           #strDrift:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v7

    iget-object v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I
    invoke-static {v8}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$800(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 606
    const-string v7, "CWTest/Activity"

    const-string v8, "Test done, Reset button"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 608
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$400(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 581
    .restart local v0       #cnr:I
    .restart local v5       #strCNR:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1300(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v7

    if-ge v7, v0, :cond_6

    .line 582
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I
    invoke-static {v7, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1302(Lcom/mediatek/engineermode/cwtest/CWTest;I)I

    .line 584
    :cond_6
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #getter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1400(Lcom/mediatek/engineermode/cwtest/CWTest;)I

    move-result v7

    if-le v7, v0, :cond_2

    .line 585
    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/CWTest$5;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    #setter for: Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I
    invoke-static {v7, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->access$1402(Lcom/mediatek/engineermode/cwtest/CWTest;I)I

    goto/16 :goto_1

    .line 598
    .restart local v1       #index:I
    .restart local v4       #strB:[C
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
