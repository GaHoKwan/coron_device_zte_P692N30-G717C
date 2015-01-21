.class Lcom/zte/heartyservice/privacy/FilesActivity$2;
.super Landroid/database/DataSetObserver;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0e0412

    const v4, 0x7f0e0402

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$100(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$100(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 163
    :cond_2
    :goto_0
    return-void

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$100(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$100(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_6

    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 150
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 156
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
