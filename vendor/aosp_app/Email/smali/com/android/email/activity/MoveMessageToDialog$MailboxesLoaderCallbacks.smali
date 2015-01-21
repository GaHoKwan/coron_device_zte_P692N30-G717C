.class Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxesLoaderCallbacks"
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
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
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
    .line 255
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$700(Lcom/android/email/activity/MoveMessageToDialog;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MoveMessageToDialog;->access$800(Lcom/android/email/activity/MoveMessageToDialog;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxMoveToAdapter;->createLoader(Landroid/content/Context;JJ)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$1000(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 265
    .local v0, needsShowing:Z
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$1000(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 268
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$1100(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$1200(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$1100(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$1200(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v0           #needsShowing:Z
    :cond_2
    move v0, v1

    .line 264
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 280
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$1000(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 281
    return-void
.end method
