.class Lcom/android/mms/ui/WPMessageActivity$2;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 728
    if-nez p2, :cond_1

    .line 776
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 731
    .restart local p2
    :cond_1
    check-cast p2, Lcom/android/mms/ui/WPMessageListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/WPMessageListItem;->getMessageItem()Lcom/android/mms/ui/WPMessageItem;

    move-result-object v3

    .line 732
    .local v3, msgItem:Lcom/android/mms/ui/WPMessageItem;
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 733
    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageItem;->isChecked()Z

    move-result v1

    .line 734
    .local v1, checked:Z
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
    invoke-static {v5}, Lcom/android/mms/ui/WPMessageActivity;->access$400(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    move-result-object v5

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v5, p3, v4}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setItemChecked(IZ)V

    .line 735
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v4, v4, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v4, :cond_0

    .line 736
    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v4, v4, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/WPMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 734
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 740
    .end local v1           #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #calls: Lcom/android/mms/ui/WPMessageActivity;->getWPMessageDetails(Landroid/content/Context;Lcom/android/mms/ui/WPMessageItem;)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/mms/ui/WPMessageActivity;->access$500(Landroid/content/Context;Lcom/android/mms/ui/WPMessageItem;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 742
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b01e9

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 744
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 746
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/ui/WPMessageActivity$2$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/WPMessageActivity$2$1;-><init>(Lcom/android/mms/ui/WPMessageActivity$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    const v4, 0x7f0b01ea

    new-instance v5, Lcom/android/mms/ui/WPMessageActivity$2$2;

    invoke-direct {v5, p0, v3}, Lcom/android/mms/ui/WPMessageActivity$2$2;-><init>(Lcom/android/mms/ui/WPMessageActivity$2;Lcom/android/mms/ui/WPMessageItem;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 774
    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageItem;->markAsRead()V

    goto :goto_0
.end method
