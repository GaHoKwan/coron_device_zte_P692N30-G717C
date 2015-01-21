.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConSmsClLogTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 551
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "transaction"

    .prologue
    const/4 v2, 0x0

    .line 556
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->onlyChangeMenu:Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$900(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/ContactType;

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;
    invoke-static {v1, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1002(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactType;)Lcom/zte/heartyservice/privacy/ContactType;

    .line 560
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 561
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 563
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$12;->$SwitchMap$com$zte$heartyservice$privacy$ContactType:[I

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1000(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ContactType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    goto :goto_0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$202(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    .line 566
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_1

    .line 569
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$202(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    .line 570
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$1;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/FromSmsStrategy;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V

    #setter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$202(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener$2;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 611
    return-void
.end method
