.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->showModeSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedData()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$602(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    const-string v1, "selecteddata"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$600(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 399
    const-string v1, "block_ring"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    iget-object v2, v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelected:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v1, "block_message"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    iget-object v2, v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelected:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method
