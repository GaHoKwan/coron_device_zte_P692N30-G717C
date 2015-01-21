.class Lcom/mediatek/contacts/detail/AssociationSimActivity$1;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 222
    const/4 v3, 0x2

    if-ge p3, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->closeSelectDialog()V

    .line 224
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 225
    const-string v3, "AssociationSimActivity"

    const-string v4, "[onListViewItemClick]: mSimInfoList.size() = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #setter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialogType:I
    invoke-static {v3, p3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$102(Lcom/mediatek/contacts/detail/AssociationSimActivity;I)I

    .line 231
    new-instance v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$1$1;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity$1;)V

    .line 270
    .local v2, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    if-nez p3, :cond_2

    .line 271
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v4, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {v0, v3, v4}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/content/Context;)V

    .line 272
    .local v0, adapter:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    invoke-static {v4}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$900(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplayTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080045

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$402(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 293
    .end local v0           #adapter:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$400(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v4, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v5, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7, v2, v7}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$402(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_1
.end method
