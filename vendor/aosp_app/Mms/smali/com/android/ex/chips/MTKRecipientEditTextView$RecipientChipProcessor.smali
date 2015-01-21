.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientChipProcessor"
.end annotation


# instance fields
.field private mChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanEnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 4596
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    .line 4598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanStart:Ljava/util/ArrayList;

    .line 4599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanEnd:Ljava/util/ArrayList;

    .line 4600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanFlags:Ljava/util/ArrayList;

    .line 4601
    return-void
.end method


# virtual methods
.method public addChipsBackWithoutNotification(I)V
    .locals 9
    .parameter "offset"

    .prologue
    .line 4630
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 4665
    :cond_0
    :goto_0
    return-void

    .line 4633
    :cond_1
    const-string v6, "RecipientEditTextView"

    const-string v7, "[addChipsBackWithoutNotification]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    const/4 v4, 0x0

    .line 4636
    .local v4, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    new-instance v4, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v4           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {v4, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4637
    .restart local v4       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 4638
    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 4640
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    .line 4641
    .local v3, textLen:I
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4642
    .local v2, chipsLen:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    if-ge v5, v2, :cond_7

    .line 4643
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_3

    .line 4645
    if-eqz v4, :cond_2

    .line 4646
    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 4649
    :cond_2
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 4650
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 4653
    :cond_3
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanStart:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v1, v6, p1

    .line 4654
    .local v1, chipStart:I
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanEnd:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v6, p1

    .line 4655
    .local v0, chipEnd:I
    if-ltz v1, :cond_4

    if-lt v0, v3, :cond_6

    .line 4656
    :cond_4
    const-string v6, "RecipientEditTextView"

    const-string v7, "[addChipsBackWithoutNotification] New position of chip is wrong while resetting span back."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4659
    :cond_6
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z
    invoke-static {v6, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4300(Lcom/android/ex/chips/MTKRecipientEditTextView;II)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4660
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "MTKRecip"

    const-string v8, "[RecipChipProcessor.addChipsBack] setSpan"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4661
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanFlags:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v8, v1, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 4664
    .end local v0           #chipEnd:I
    .end local v1           #chipStart:I
    :cond_7
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto/16 :goto_0
.end method

.method public removeChipsWithoutNotification(II)V
    .locals 6
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 4604
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 4605
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 4627
    :cond_0
    :goto_0
    return-void

    .line 4608
    :cond_1
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeChipsWithoutNotification] startIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    const/4 v1, 0x0

    .line 4611
    .local v1, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v1           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4612
    .restart local v1       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 4613
    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 4615
    move v2, p1

    .local v2, x:I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 4616
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mChips:Ljava/util/ArrayList;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4617
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanStart:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    aget-object v5, v0, v2

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I
    invoke-static {v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4618
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanEnd:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    aget-object v5, v0, v2

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I
    invoke-static {v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4619
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->mSpanFlags:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4620
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4615
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4623
    :cond_2
    if-eqz v1, :cond_3

    .line 4624
    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 4626
    :cond_3
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V
    invoke-static {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto/16 :goto_0
.end method
