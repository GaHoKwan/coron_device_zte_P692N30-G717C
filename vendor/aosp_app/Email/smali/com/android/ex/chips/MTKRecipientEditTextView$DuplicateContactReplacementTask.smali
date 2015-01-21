.class Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateContactReplacementTask"
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
    .line 4679
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4679
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4679
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 4682
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    const-string v9, "[DuplicateContactReplacementTask] start."

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4683
    const/4 v7, 0x0

    aget-object v2, p1, v7

    check-cast v2, Lcom/android/ex/chips/RecipientChip;

    .line 4684
    .local v2, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 4685
    .local v3, currEntry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 4686
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4687
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4688
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 4689
    .local v4, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    const/4 v5, 0x0

    .line 4690
    .local v5, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #entry:Lcom/android/ex/chips/RecipientEntry;
    check-cast v5, Lcom/android/ex/chips/RecipientEntry;

    .line 4691
    .restart local v5       #entry:Lcom/android/ex/chips/RecipientEntry;
    move-object v6, v5

    .line 4692
    .local v6, newEntry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 4693
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    const-string v9, "[DuplicateContactReplacement] Post handleReplaceDuplicateChip."

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4694
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

    invoke-direct {v8, p0, v2, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4701
    :cond_0
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    const-string v9, "[DuplicateContactReplacementTask] end."

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    const/4 v7, 0x0

    return-object v7
.end method
