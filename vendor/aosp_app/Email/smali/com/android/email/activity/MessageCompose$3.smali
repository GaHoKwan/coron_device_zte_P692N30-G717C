.class Lcom/android/email/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->resetCcBccDropDownWidth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f0f007d

    const v8, 0x7f0f007c

    const/high16 v7, -0x8000

    .line 830
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 831
    .local v2, ccContentWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 833
    .local v3, ccLabelWidth:I
    if-nez v2, :cond_0

    .line 852
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v4

    .line 837
    .local v4, offset:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 838
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    sub-int v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 840
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 842
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 843
    .local v0, bccContentWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 844
    .local v1, bccLabelWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v4

    .line 845
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 846
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    sub-int v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 848
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 850
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I
    invoke-static {v5, v4}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;I)I

    .line 851
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v6, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mCcBccNeedResetDropDownWidth:Z
    invoke-static {v5, v6}, Lcom/android/email/activity/MessageCompose;->access$202(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_0
.end method
