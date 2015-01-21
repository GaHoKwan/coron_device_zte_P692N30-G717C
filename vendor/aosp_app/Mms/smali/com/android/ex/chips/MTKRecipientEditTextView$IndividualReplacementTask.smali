.class Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
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
    .line 3523
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3523
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3523
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 3530
    const/4 v10, 0x0

    aget-object v7, p1, v10

    check-cast v7, Ljava/util/ArrayList;

    .line 3532
    .local v7, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v11, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[IndividualReplacementTask][doInBackground] start, recipient count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3535
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 3536
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 3537
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_0

    .line 3538
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3535
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3541
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_1
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v3

    .line 3543
    .local v3, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/RecipientChip;

    .line 3544
    .local v8, temp:Lcom/android/ex/chips/RecipientChip;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 3548
    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3549
    .local v2, destination:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v11, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[IndividualReplacementTask] for loop, destination: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const/4 v4, 0x0

    .line 3551
    .local v4, entry:Lcom/android/ex/chips/RecipientEntry;
    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3700(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 3552
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3553
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v11, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[IndividualReplacementTask] tokenizeAddress, destination: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    :cond_3
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v11, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 3556
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    const-string v10, "@"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3558
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntryByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 3563
    :cond_4
    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3564
    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 3566
    :cond_5
    move-object v9, v4

    .line 3567
    .local v9, tempEntry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v9, :cond_2

    .line 3568
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v11, p0, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3581
    .end local v2           #destination:Ljava/lang/String;
    .end local v4           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v8           #temp:Lcom/android/ex/chips/RecipientChip;
    .end local v9           #tempEntry:Lcom/android/ex/chips/RecipientEntry;
    :cond_6
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v11, 0x0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V
    invoke-static {v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3600(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 3582
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v11, "RecipientEditTextView"

    const-string v12, "[IndividualReplacementTask][doInBackground] end"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    const/4 v10, 0x0

    return-object v10
.end method
