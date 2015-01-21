.class Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 4150
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 4151
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 4152
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 4156
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupQueryToken:I
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 4157
    const-string v3, "ContactDetailFragment"

    const-string v4, "[onQueryComplete] GroupQueryToken is not consistent! return."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    :cond_0
    :goto_0
    return-void

    .line 4161
    :cond_1
    if-eqz p3, :cond_4

    .line 4162
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 4163
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-array v4, v0, [J

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3602(Lcom/android/contacts/detail/ContactDetailFragment;[J)[J

    .line 4164
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-array v4, v0, [Ljava/lang/String;

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3702(Lcom/android/contacts/detail/ContactDetailFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4165
    const/4 v1, 0x0

    .line 4166
    .local v1, i:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4167
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4168
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 4169
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)[J

    move-result-object v3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 4170
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v1

    .line 4171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4173
    :cond_2
    const-string v3, "ContactDetailFragment"

    const-string v4, "Error: group title is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4177
    .end local v2           #title:Ljava/lang/String;
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 4181
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3800(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4182
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onQueryComplete] group list is empty and cancel from groupnamedialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3800(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z
    invoke-static {v3, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3802(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z

    goto :goto_0

    .line 4188
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4190
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->dismissGroupDialogIfShown()V
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 4192
    const-string v3, "ContactDetailFragment"

    const-string v4, "[onQueryComplete] start a new grouplistdialog!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v4, Lcom/mediatek/contacts/detail/GroupListDialog;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/contacts/detail/GroupListDialog;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/mediatek/contacts/detail/GroupListDialog;

    .line 4195
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/mediatek/contacts/detail/GroupListDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3, v4, v6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 4196
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/mediatek/contacts/detail/GroupListDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 4197
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/mediatek/contacts/detail/GroupListDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "groupList"

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
