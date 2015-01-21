.class Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;
.super Ljava/lang/Object;
.source "DisguiseCommunicationFragmentTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->showManualDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$tvContactName:Landroid/widget/EditText;

.field final synthetic val$tvPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$tvPhoneNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$tvContactName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 169
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$tvPhoneNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$000(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a022f

    invoke-static {v4, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$tvContactName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, contactName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    move-object v0, v3

    .line 180
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    new-instance v1, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {v1, v4, v3, v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v1, item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #calls: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->startImport(Ljava/util/ArrayList;)V
    invoke-static {v4, v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$100(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/util/ArrayList;)V

    .line 185
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
