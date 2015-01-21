.class public abstract Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DisguiseAbstractCommunicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DisguisedLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/CommonItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 194
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    .line 198
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    .line 226
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 242
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->onStopLoading()V

    .line 244
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    .line 245
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 247
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 248
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->deliverResult(Ljava/util/List;)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_3

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 210
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->forceLoad()V

    .line 216
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;->cancelLoad()Z

    .line 235
    return-void
.end method
