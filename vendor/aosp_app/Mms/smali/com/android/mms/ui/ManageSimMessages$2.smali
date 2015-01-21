.class Lcom/android/mms/ui/ManageSimMessages$2;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->updateListWithCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, 0x0

    .line 385
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 386
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 388
    .local v2, mli:Lcom/android/mms/ui/MessageListItem;
    iget-object v4, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 389
    iget-object v4, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    .line 394
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 395
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "index_on_icc"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, msgIndex:Ljava/lang/String;
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simMsg msgIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, index:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->changeSelectedState(Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateActionBarText()V
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 404
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #index:[Ljava/lang/String;
    .end local v2           #mli:Lcom/android/mms/ui/MessageListItem;
    .end local v3           #msgIndex:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 392
    .restart local v2       #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_1
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_1
.end method
