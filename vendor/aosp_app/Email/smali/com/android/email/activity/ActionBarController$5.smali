.class Lcom/android/email/activity/ActionBarController$5;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActionBarController;->loadAccountMailboxInfo(JJ)V
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    iput-wide p2, p0, Lcom/android/email/activity/ActionBarController$5;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/activity/ActionBarController$5;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$800(Lcom/android/email/activity/ActionBarController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/ActionBarController$5;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/activity/ActionBarController$5;->val$mailboxId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AccountSelectorAdapter;->createLoader(Landroid/content/Context;JJZ)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mIsTitleUpdated:Z
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$900(Lcom/android/email/activity/ActionBarController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    check-cast p2, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    .end local p2
    #setter for: Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
    invoke-static {v0, p2}, Lcom/android/email/activity/ActionBarController;->access$1002(Lcom/android/email/activity/ActionBarController;Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    .line 808
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    #calls: Lcom/android/email/activity/ActionBarController;->updateTitle()V
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$1100(Lcom/android/email/activity/ActionBarController;)V

    .line 810
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 798
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ActionBarController$5;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
    invoke-static {v0, v1}, Lcom/android/email/activity/ActionBarController;->access$1002(Lcom/android/email/activity/ActionBarController;Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    .line 815
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$5;->this$0:Lcom/android/email/activity/ActionBarController;

    #calls: Lcom/android/email/activity/ActionBarController;->updateTitle()V
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$1100(Lcom/android/email/activity/ActionBarController;)V

    .line 816
    return-void
.end method
