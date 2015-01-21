.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createModifyContactDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

.field final synthetic val$ac:Ljava/lang/String;

.field final synthetic val$tvContactName:Landroid/widget/EditText;

.field final synthetic val$tvPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$tvPhoneNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$tvContactName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$ac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 995
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 997
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    const v6, 0x7f0a022f

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7d0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1026
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$tvContactName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, tmpcontactName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1005
    :cond_1
    move-object v0, v3

    .line 1006
    .local v0, contactName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1009
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->val$ac:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v5}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->modifyContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1010
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035f

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    .end local v0           #contactName:Ljava/lang/String;
    :goto_1
    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;

    invoke-direct {v6, p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11$1;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0174

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1023
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1025
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .restart local v0       #contactName:Ljava/lang/String;
    :cond_3
    move-object v0, v2

    .line 1010
    goto :goto_1
.end method
