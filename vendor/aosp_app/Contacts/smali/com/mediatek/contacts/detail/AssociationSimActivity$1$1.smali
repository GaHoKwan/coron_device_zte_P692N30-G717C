.class Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialogType:I
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$100(Lcom/mediatek/contacts/detail/AssociationSimActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->setShowingIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->closeSelectDialog()V

    .line 267
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v3, v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberDataId()J

    move-result-wide v3

    #setter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J
    invoke-static {v2, v3, v4}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$302(Lcom/mediatek/contacts/detail/AssociationSimActivity;J)J

    .line 247
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v3, v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberSimId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->setShowingIndexBySimId(I)Z

    .line 260
    :goto_1
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v3, v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->getShowingSimId()I

    move-result v3

    #setter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I
    invoke-static {v2, v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$502(Lcom/mediatek/contacts/detail/AssociationSimActivity;I)I

    .line 264
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$600(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;

    iget-object v4, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v4, v4, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v5, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v5, v5, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$800(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v3, v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #calls: Lcom/mediatek/contacts/detail/AssociationSimActivity;->isSimInfoChanged()Z
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$700(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 266
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->closeSelectDialog()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$400(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 252
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 253
    .local v1, slot:I
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;->this$1:Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->setShowingSlot(I)Z

    goto :goto_1
.end method
