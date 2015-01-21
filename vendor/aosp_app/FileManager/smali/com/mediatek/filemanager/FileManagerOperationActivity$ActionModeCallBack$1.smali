.class Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$500(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)Landroid/widget/PopupMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$600(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)Landroid/widget/Button;

    move-result-object v2

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->createSelectPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    invoke-static {v1, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$700(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    #setter for: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$502(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 1287
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateSelectPopupMenu()V
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$800(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)V

    .line 1285
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;->this$1:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->access$500(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
