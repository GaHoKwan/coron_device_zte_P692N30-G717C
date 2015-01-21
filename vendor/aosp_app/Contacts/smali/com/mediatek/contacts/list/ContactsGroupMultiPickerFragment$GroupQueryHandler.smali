.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsGroupMultiPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    .line 557
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 558
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 562
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mGroupQueryToken:I
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1400(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)I

    move-result v6

    if-eq p1, v6, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 569
    :cond_2
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "intent"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 570
    .local v3, intent:Landroid/content/Intent;
    if-eqz p3, :cond_5

    .line 571
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 572
    .local v0, count:I
    new-array v2, v0, [J

    .line 573
    .local v2, idArray:[J
    new-array v5, v0, [Ljava/lang/String;

    .line 574
    .local v5, titleArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 575
    .local v1, i:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 576
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 578
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 579
    aput-object v4, v5, v1

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error: group title is NULL!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    const-string v6, "TitleArray"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v6, "IdArray"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 588
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 591
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #idArray:[J
    .end local v5           #titleArray:[Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 592
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    new-instance v7, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    iget-object v8, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-direct {v7, v8}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;-><init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)V

    #setter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6, v7}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1502(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    .line 593
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 594
    iget-object v6, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    #getter for: Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->mMoveDialog:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;
    invoke-static {v6}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->access$1500(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;)Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$GroupQueryHandler;->this$0:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "moveGroup"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
