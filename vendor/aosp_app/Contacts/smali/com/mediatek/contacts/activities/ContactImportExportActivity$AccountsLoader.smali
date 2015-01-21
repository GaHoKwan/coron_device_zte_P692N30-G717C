.class Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/ContactImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 257
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;->mContext:Landroid/content/Context;

    .line 258
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;->mContext:Landroid/content/Context;

    #calls: Lcom/mediatek/contacts/activities/ContactImportExportActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;->onStopLoading()V

    .line 278
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 268
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 273
    return-void
.end method
