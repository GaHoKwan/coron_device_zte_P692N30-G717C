.class Lcom/android/mms/ui/ComposeMessageActivity$56;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field private mStart:I

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6636
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$56$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$56$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$56;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 6642
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$56$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$56$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$56;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 6719
    const-string v0, "Mms/ipmsg/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged mIsNeedParseEmoticon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedParseEmoticon:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedParseEmoticon:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12200(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLatestText:Landroid/text/Editable;
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12402(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)Landroid/text/Editable;

    .line 6722
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mStart:I

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setEmoticon(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12500(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 6746
    :goto_0
    return-void

    .line 6724
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedParseEmoticon:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6651
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBeforeTextChangeString:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 6652
    const-string v6, "Mms/ipmsg/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeTextChanged count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6654
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/EnhanceEditText;->checkIsMenuItemClicked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6685
    :cond_0
    :goto_0
    return-void

    .line 6657
    :cond_1
    if-nez p4, :cond_0

    .line 6662
    if-ne p3, v10, :cond_3

    .line 6663
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 6664
    .local v1, edit:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 6665
    .local v3, length:I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6666
    .local v0, cursor:I
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 6669
    const-class v6, Landroid/text/style/ImageSpan;

    invoke-interface {v1, v9, v0, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ImageSpan;

    .line 6670
    .local v5, spans:[Landroid/text/style/ImageSpan;
    const/4 v4, 0x0

    .line 6671
    .local v4, span:Landroid/text/style/ImageSpan;
    const/4 v2, 0x0

    .line 6672
    .local v2, index:I
    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    .line 6673
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v5, v6

    .line 6674
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 6676
    :cond_2
    const-string v6, "Mms/ipmsg/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeTextChanged cursor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6678
    if-le v0, v2, :cond_0

    .line 6679
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedParseEmoticon:Z
    invoke-static {v6, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0

    .line 6681
    .end local v0           #cursor:I
    .end local v1           #edit:Landroid/text/Editable;
    .end local v2           #index:I
    .end local v3           #length:I
    .end local v4           #span:Landroid/text/style/ImageSpan;
    .end local v5           #spans:[Landroid/text/style/ImageSpan;
    :cond_3
    if-le p3, v10, :cond_0

    .line 6682
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedParseEmoticon:Z
    invoke-static {v6, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6693
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 6695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getIsExceedSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6698
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsExceedSize(Z)V

    .line 6699
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6700
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6703
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/AttachmentEditor;->onTextChangeForOneSlide(Ljava/lang/CharSequence;)V

    .line 6707
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6708
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6710
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V

    .line 6711
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$56;->mStart:I

    .line 6715
    return-void
.end method
