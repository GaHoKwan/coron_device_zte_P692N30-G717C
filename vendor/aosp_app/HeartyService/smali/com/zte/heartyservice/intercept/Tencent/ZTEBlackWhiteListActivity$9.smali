.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->showAddContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

.field final synthetic val$swBlockMessage:Landroid/widget/CheckBox;

.field final synthetic val$swBlockRing:Landroid/widget/CheckBox;

.field final synthetic val$tvContactName:Landroid/widget/EditText;

.field final synthetic val$tvPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$swBlockRing:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$swBlockMessage:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvContactName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 596
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, phoneNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$swBlockRing:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 598
    .local v3, isBlockRing:Z
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$swBlockMessage:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 600
    .local v2, isBlockMessage:Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 601
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a022f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-static {v5, v6}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 621
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvContactName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, contactName:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)I

    move-result v5

    invoke-direct {v0, v1, v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 612
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iput-boolean v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 613
    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 614
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)I

    move-result v6

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V
    invoke-static {v5, v0, v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V

    .line 615
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iput-object v0, v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 616
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-static {v5, v6}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 618
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 619
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
