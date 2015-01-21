.class Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "FolderViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FolderViewList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "mcontext"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;->this$0:Lcom/android/mms/ui/FolderViewList;

    .line 350
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 351
    #getter for: Lcom/android/mms/ui/FolderViewList;->mFolderSpinner:Landroid/view/View;
    invoke-static {p1}, Lcom/android/mms/ui/FolderViewList;->access$400(Lcom/android/mms/ui/FolderViewList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 354
    new-instance v0, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup$1;-><init>(Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;Lcom/android/mms/ui/FolderViewList;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 360
    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 364
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 365
    .local v3, windowM:Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 366
    .local v0, config:Landroid/content/res/Configuration;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 367
    .local v1, defDisplay:Landroid/view/Display;
    const/4 v2, 0x0

    .line 368
    .local v2, w:I
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_0

    .line 369
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 373
    :goto_0
    div-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 374
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 375
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 377
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 378
    return-void

    .line 371
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_0
.end method
