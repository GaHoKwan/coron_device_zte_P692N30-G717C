.class Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;
.super Ljava/lang/Thread;
.source "RetrieveMasterControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    .line 346
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 349
    new-instance v3, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v5, v5, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;-><init>(Landroid/content/Context;)V

    .line 350
    .local v3, manager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;
    const/4 v2, 0x0

    .line 352
    .local v2, info:Lcom/zte/retrieve/upgrade/UpgradeInfo;
    :try_start_0
    invoke-virtual {v3}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->checkUpdate()Lcom/zte/retrieve/upgrade/UpgradeInfo;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->isNewVer()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 356
    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 358
    const-string v5, "VERSION_INFO"

    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->getVerProp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v5, "updateURL"

    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 362
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$5(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 368
    return-void

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
