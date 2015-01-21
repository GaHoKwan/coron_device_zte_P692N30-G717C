.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createNewContactDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

.field final synthetic val$tvContactName:Landroid/widget/EditText;

.field final synthetic val$tvPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvContactName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 767
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 769
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const v5, 0x7f0a022f

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 771
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 772
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 792
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvContactName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, contactName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 777
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 783
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 784
    .local v0, acHashSet:Ljava/util/HashSet;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertContact(Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-instance v4, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {v4, v5, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$302(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 787
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$300(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 788
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 790
    .end local v0           #acHashSet:Ljava/util/HashSet;
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 791
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
