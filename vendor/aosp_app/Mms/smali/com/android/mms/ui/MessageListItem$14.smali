.class Lcom/android/mms/ui/MessageListItem$14;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setMediaOnClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1601
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 1602
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v5, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1604
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1605
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 1610
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1611
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1612
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v5, "mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v5, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    neg-long v5, v5

    :goto_2
    long-to-int v2, v5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1613
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_4

    :goto_3
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 1615
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1616
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1640
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v2, v4

    .line 1602
    goto :goto_0

    .line 1607
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    goto :goto_1

    .line 1612
    .restart local v0       #msg:Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v5, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto :goto_2

    :cond_4
    move v3, v4

    .line 1613
    goto :goto_3

    .line 1621
    .end local v0           #msg:Landroid/os/Message;
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$802(Z)Z

    .line 1626
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1627
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1631
    :goto_5
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1632
    new-instance v1, Lcom/android/mms/ui/MessageListItem$14$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$14$1;-><init>(Lcom/android/mms/ui/MessageListItem$14;)V

    .line 1637
    .local v1, run:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1629
    .end local v1           #run:Ljava/lang/Runnable;
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v4, 0x2

    #calls: Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->access$2000(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_5
.end method
