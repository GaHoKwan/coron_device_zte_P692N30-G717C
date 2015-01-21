.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 3374
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3374
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method

.method private createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 3376
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v3, "RecipientEditTextView"

    const-string v4, "[RecipientReplacementTask.createFreeChip]"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3385
    :goto_0
    return-object v1

    .line 3381
    :cond_0
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2900(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3374
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 3391
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 3392
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "RecipientEditTextView"

    const-string v13, "[RecipientReplacementTask.doInBackground] mIndividualReplacements.cancel()"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3394
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v12, 0x0

    #setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3002(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 3399
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3400
    .local v7, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    .line 3401
    .local v4, existingChips:[Lcom/android/ex/chips/RecipientChip;
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "RecipientEditTextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[RecipientReplacementTask.doInBackground] start, recipient count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v11, v4

    if-ge v5, v11, :cond_1

    .line 3403
    aget-object v11, v4, v5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3402
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3405
    :cond_1
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 3406
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3408
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3410
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 3411
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 3412
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_3

    .line 3413
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3416
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_4
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 3418
    .local v2, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3419
    .local v8, replacements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ex/chips/RecipientChip;

    .line 3420
    .local v9, temp:Lcom/android/ex/chips/RecipientChip;
    const/4 v3, 0x0

    .line 3421
    .local v3, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 3425
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3426
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3427
    .local v10, tokenizedAddress:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #entry:Lcom/android/ex/chips/RecipientEntry;
    check-cast v3, Lcom/android/ex/chips/RecipientEntry;

    .line 3428
    .restart local v3       #entry:Lcom/android/ex/chips/RecipientEntry;
    if-nez v3, :cond_5

    if-eqz v10, :cond_5

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3429
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntryByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 3436
    .end local v10           #tokenizedAddress:Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v3, :cond_7

    .line 3437
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3432
    :cond_6
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v12, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    goto :goto_3

    .line 3439
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3442
    .end local v3           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v9           #temp:Lcom/android/ex/chips/RecipientChip;
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 3443
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v12, p0, v8, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3517
    :cond_9
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v12, 0x0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V
    invoke-static {v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3600(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 3518
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v12, "RecipientEditTextView"

    const-string v13, "[RecipientReplacementTask][doInBackground] end"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const/4 v11, 0x0

    return-object v11
.end method
