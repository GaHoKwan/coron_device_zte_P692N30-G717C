.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$originalRecipients:Ljava/util/ArrayList;

.field final synthetic val$replacements:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3443
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$replacements:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3446
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "RecipientEditTextView"

    const-string v13, "[RecipientReplacementTask][run] start"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 3449
    .local v6, oldText:Landroid/text/Editable;
    const/4 v4, 0x0

    .line 3451
    .local v4, i:I
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$replacements:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3452
    .local v9, totalChips:I
    const/4 v10, 0x0

    .line 3453
    .local v10, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    if-lez v9, :cond_0

    .line 3454
    new-instance v10, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v10           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3455
    .restart local v10       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 3456
    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 3459
    :cond_0
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 3461
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    add-int/lit8 v11, v9, -0x1

    if-ne v4, v11, :cond_2

    .line 3462
    if-eqz v10, :cond_1

    .line 3463
    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 3466
    :cond_1
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 3467
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 3472
    :cond_2
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$replacements:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientChip;

    .line 3473
    .local v7, replacement:Lcom/android/ex/chips/RecipientChip;
    if-eqz v7, :cond_3

    .line 3475
    invoke-interface {v6, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 3476
    .local v8, start:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 3477
    invoke-interface {v6, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 3478
    .local v3, end:I
    invoke-interface {v6, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3481
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v0

    .line 3482
    .local v0, addressText:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3483
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3485
    .local v2, displayText:Landroid/text/SpannableString;
    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v7, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3489
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "MTKRecip"

    const-string v13, "[recipientReplacement] replace"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    invoke-interface {v6, v8, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3491
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 3504
    .end local v0           #addressText:Ljava/lang/String;
    .end local v2           #displayText:Landroid/text/SpannableString;
    .end local v3           #end:I
    .end local v8           #start:I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 3505
    goto :goto_0

    .line 3493
    .restart local v8       #start:I
    :cond_4
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3495
    if-eqz v7, :cond_3

    .line 3496
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_5

    .line 3497
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3402(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3499
    :cond_5
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3506
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v7           #replacement:Lcom/android/ex/chips/RecipientChip;
    .end local v8           #start:I
    :cond_6
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3508
    if-lez v9, :cond_7

    .line 3509
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3512
    :cond_7
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v11, v11, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "RecipientEditTextView"

    const-string v13, "[RecipientReplacementTask][run] end"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    return-void
.end method
