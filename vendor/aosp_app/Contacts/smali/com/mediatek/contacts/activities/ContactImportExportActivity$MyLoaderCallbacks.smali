.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "ContactImportExportActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity;
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
        "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Lcom/mediatek/contacts/activities/ContactImportExportActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V

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
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/mediatek/contacts/model/AccountWithDataSetEx;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/model/AccountWithDataSetEx;>;"
    const/4 v2, 0x1

    .line 341
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isActivityFinished()Z
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$200(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-static {}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadFinished(),This Fragment is not add to the Activity now.data:"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    if-nez p2, :cond_2

    .line 348
    invoke-static {}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load accounts"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$400(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #setter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;
    invoke-static {v0, p2}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$402(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Ljava/util/List;)Ljava/util/List;

    .line 355
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$400(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-virtual {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->getStorageAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$400(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 359
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    new-instance v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks$1;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$500(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setShowingStep(I)V
    invoke-static {v0, v2}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$600(Lcom/mediatek/contacts/activities/ContactImportExportActivity;I)V

    .line 382
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$700(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I

    move-result v1

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedAccount(I)V
    invoke-static {v0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$800(Lcom/mediatek/contacts/activities/ContactImportExportActivity;I)V

    .line 383
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->updateUi()V
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$900(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;->this$0:Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    #getter for: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$500(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I

    move-result v1

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setShowingStep(I)V
    invoke-static {v0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$600(Lcom/mediatek/contacts/activities/ContactImportExportActivity;I)V

    goto :goto_1
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
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/mediatek/contacts/model/AccountWithDataSetEx;>;>;"
    return-void
.end method
