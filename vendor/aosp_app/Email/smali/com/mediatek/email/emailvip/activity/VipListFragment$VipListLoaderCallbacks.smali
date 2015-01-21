.class Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;
.super Ljava/lang/Object;
.source "VipListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipListLoaderCallbacks"
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
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/mediatek/email/emailvip/activity/VipListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V

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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mImmutableAccountId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$500(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->createVipContentLoader(Landroid/content/Context;J)Landroid/content/Loader;

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
    .line 299
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 300
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ListFragment;->setListShown(Z)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchContent:Landroid/view/View;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$600(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$700(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mVipNumber:I
    invoke-static {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$802(Lcom/mediatek/email/emailvip/activity/VipListFragment;I)I

    .line 306
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$700(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mVipNumber:I
    invoke-static {v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$800(Lcom/mediatek/email/emailvip/activity/VipListFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;->onVipMemberChanged(I)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$900(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$900(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$1000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$902(Lcom/mediatek/email/emailvip/activity/VipListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .end local v0           #position:I
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 321
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 322
    return-void
.end method
