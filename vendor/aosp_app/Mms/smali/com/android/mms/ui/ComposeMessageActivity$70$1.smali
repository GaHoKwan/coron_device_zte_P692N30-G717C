.class Lcom/android/mms/ui/ComposeMessageActivity$70$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$70;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$70;)V
    .locals 0
    .parameter

    .prologue
    .line 8688
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 8691
    const/4 v2, -0x1

    .line 8692
    .local v2, position:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHashSim:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectSimType:I
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15500(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 8693
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHashSim:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 8694
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHashSim:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHashSim:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAssociatedSimQueryDone:I
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 8695
    move v2, v0

    .line 8700
    :cond_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8702
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 8703
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 8704
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8705
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 8706
    const v5, 0x7f0f0178

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 8708
    .local v3, textView:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 8709
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8713
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$70$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$70;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHashSim:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 8716
    .end local v0           #i:I
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_2
    return-void

    .line 8693
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
