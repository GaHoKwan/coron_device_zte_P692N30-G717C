.class Lcom/android/contacts/group/GroupDetailFragment$2;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 326
    const-string v0, "GroupDetailFragment"

    const-string v1, "onCreateLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/mediatek/contacts/widget/WaitCursorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->startWaitCursor()V

    .line 329
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$302(Z)Z

    .line 334
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/contacts/group/GroupDetailFragment;->OCL:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$402(Lcom/android/contacts/group/GroupDetailFragment;J)J

    .line 335
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupDetailFragment mGroupMetadataLoaderListener onCreateLoader OCL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->OCL:J
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$400(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$500(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$600(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
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
    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v2, 0x1

    .line 344
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 345
    const-string v2, "GroupDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished(),This Fragment is not add to the Activity now.data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz p2, :cond_0

    .line 347
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/android/contacts/group/GroupDetailFragment;->OLF:J
    invoke-static {v4, v5, v6}, Lcom/android/contacts/group/GroupDetailFragment;->access$702(Lcom/android/contacts/group/GroupDetailFragment;J)J

    .line 355
    const-string v4, "GroupDetailFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GroupDetailFragment mGroupMetadataLoaderListener onLoadFinished OLF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->OLF:J
    invoke-static {v6}, Lcom/android/contacts/group/GroupDetailFragment;->access$700(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | OLF-OCL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->OLF:J
    invoke-static {v6}, Lcom/android/contacts/group/GroupDetailFragment;->access$700(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->OCL:J
    invoke-static {v8}, Lcom/android/contacts/group/GroupDetailFragment;->access$400(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz p2, :cond_3

    .line 363
    invoke-interface {p2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 364
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 365
    const/16 v4, 0x8

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 366
    .local v0, deleted:Z
    :goto_1
    if-nez v0, :cond_3

    .line 367
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V
    invoke-static {v2, p2}, Lcom/android/contacts/group/GroupDetailFragment;->access$800(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 372
    new-instance v1, Lcom/android/contacts/group/GroupDetailFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupDetailFragment$2$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment$2;)V

    .line 379
    .local v1, restartLoaderHandler:Landroid/os/Handler;
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #deleted:Z
    .end local v1           #restartLoaderHandler:Landroid/os/Handler;
    :cond_2
    move v0, v3

    .line 365
    goto :goto_1

    .line 389
    :cond_3
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No member data to load!! isFinished:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/contacts/group/GroupDetailFragment;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$302(Z)Z

    .line 391
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/mediatek/contacts/widget/WaitCursorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/widget/WaitCursorView;->stopWaitCursor()V

    .line 394
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V
    invoke-static {v2, v10}, Lcom/android/contacts/group/GroupDetailFragment;->access$1000(Lcom/android/contacts/group/GroupDetailFragment;I)V

    .line 395
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v3, 0x0

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupDetailFragment;->access$1100(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupNotFound()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
