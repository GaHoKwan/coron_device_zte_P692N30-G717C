.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 574
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.startActivity.PRIVACY_CALLLOG_BROWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, callLogIntent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v1, cllgBundle:Landroid/os/Bundle;
    const-string v3, "name"

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/CommonListItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v3, "ac"

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getAc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v3, "number"

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "message_name_ac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 582
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;->this$1:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method
