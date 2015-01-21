.class Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/AccountFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/android/contacts/list/AccountFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    #getter for: Lcom/android/contacts/list/AccountFilterActivity;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$300(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    #getter for: Lcom/android/contacts/list/AccountFilterActivity;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$400(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/mediatek/contacts/widget/WaitCursorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->startWaitCursor()V

    .line 234
    new-instance v0, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v0}, Lcom/android/contacts/list/AccountFilterActivity;->isActivityFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/contacts/list/AccountFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadFinished(),This Activity is finishing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/android/contacts/list/AccountFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    #getter for: Lcom/android/contacts/list/AccountFilterActivity;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$400(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/mediatek/contacts/widget/WaitCursorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/WaitCursorView;->stopWaitCursor()V

    .line 256
    if-nez p2, :cond_1

    .line 257
    invoke-static {}, Lcom/android/contacts/list/AccountFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load filters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    #getter for: Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$600(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    iget-object v3, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    #getter for: Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v3}, Lcom/android/contacts/list/AccountFilterActivity;->access$500(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    return-void
.end method
