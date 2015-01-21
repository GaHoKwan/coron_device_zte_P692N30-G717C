.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;
.super Landroid/database/DataSetObserver;
.source "ZTEBlackWhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
