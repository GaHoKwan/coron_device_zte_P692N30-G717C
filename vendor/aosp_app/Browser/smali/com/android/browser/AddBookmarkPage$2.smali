.class Lcom/android/browser/AddBookmarkPage$2;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/browser/AddBookmarkPage;->access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;)V
    .locals 8
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    const-wide/16 v6, -0x1

    const/4 v5, -0x2

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, setAccount:Z
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    const/4 v2, 0x1

    #setter for: Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z
    invoke-static {v1, v2}, Lcom/android/browser/AddBookmarkPage;->access$002(Lcom/android/browser/AddBookmarkPage;Z)Z

    .line 588
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #calls: Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$100(Lcom/android/browser/AddBookmarkPage;)V

    .line 589
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c0088

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 590
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$300(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_id"

    iget-wide v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 593
    const/4 v0, 0x1

    .line 594
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentId:J

    #setter for: Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J
    invoke-static {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->access$602(Lcom/android/browser/AddBookmarkPage;J)J

    .line 596
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #calls: Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$700(Lcom/android/browser/AddBookmarkPage;)V

    .line 597
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$800(Lcom/android/browser/AddBookmarkPage;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$900(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v2}, Lcom/android/browser/AddBookmarkPage;->access$800(Lcom/android/browser/AddBookmarkPage;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 599
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #setter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v1, v5}, Lcom/android/browser/AddBookmarkPage;->access$802(Lcom/android/browser/AddBookmarkPage;I)I

    .line 606
    :cond_0
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-wide v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$1000(Lcom/android/browser/AddBookmarkPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    if-eqz v0, :cond_3

    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lcom/android/browser/AddBookmarkPage;->access$1100(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v4, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    .line 626
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 627
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$1200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 629
    :cond_2
    return-void

    .line 612
    :cond_3
    if-nez v0, :cond_1

    .line 613
    const/4 v0, 0x1

    .line 614
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lcom/android/browser/AddBookmarkPage;->access$1100(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 616
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v4, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$800(Lcom/android/browser/AddBookmarkPage;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$900(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v2}, Lcom/android/browser/AddBookmarkPage;->access$800(Lcom/android/browser/AddBookmarkPage;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 621
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    #setter for: Lcom/android/browser/AddBookmarkPage;->mRestoreFolder:I
    invoke-static {v1, v5}, Lcom/android/browser/AddBookmarkPage;->access$802(Lcom/android/browser/AddBookmarkPage;I)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    check-cast p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    return-void
.end method
