.class Lcom/android/email/activity/MessageCompose$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->resetDropDownWidth()V
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
    .line 807
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 809
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0f0079

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 810
    .local v1, toContentWidth:I
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0f0011

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 812
    .local v2, toLabelWidth:I
    if-nez v1, :cond_0

    .line 823
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v0

    .line 816
    .local v0, offset:I
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToOriginalOffset:I
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1000(Lcom/android/email/activity/MessageCompose;)I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_1

    .line 817
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v3

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 819
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 821
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mToOriginalOffset:I
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageCompose;->access$1002(Lcom/android/email/activity/MessageCompose;I)I

    .line 822
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v4, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mNeedResetDropDownWidth:Z
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->access$002(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_0
.end method
