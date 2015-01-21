.class Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

.field final synthetic val$temp:Lcom/android/ex/chips/RecipientChip;

.field final synthetic val$tempEntry:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3568
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$temp:Lcom/android/ex/chips/RecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$tempEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[IndividualReplacementTask][run]"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$temp:Lcom/android/ex/chips/RecipientChip;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$tempEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 3575
    :cond_0
    return-void
.end method
