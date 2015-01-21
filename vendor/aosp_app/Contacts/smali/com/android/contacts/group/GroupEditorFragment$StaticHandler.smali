.class Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;
.super Landroid/os/Handler;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticHandler"
.end annotation


# static fields
.field public static final ACCOUNT_CHOOSE_CANCEL:I = 0x1

.field public static final ACCOUNT_CHOSEN:I = 0x0

.field private static final ADD_MEMBERS_FINISHED:I = 0x2


# instance fields
.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 2102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2103
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 2104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2124
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] invalid msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :goto_0
    return-void

    .line 2114
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->onAccountChosenInternal(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$2600(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 2117
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->onAccountSelectorCancelledInternal()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$2700(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0

    .line 2121
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->onAddMembersFinished()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$2800(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0

    .line 2112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyAddMemberFinished()V
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2108
    return-void
.end method
