.class Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;
.super Ljava/lang/Thread;
.source "RetrieveInfoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->doUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    .line 188
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, info:Lcom/zte/retrieve/upgrade/UpgradeInfo;
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->upgradeManager:Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;
    invoke-static {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$6(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/upgrade/PublicServerNewUpgradeManager;->checkUpdate()Lcom/zte/retrieve/upgrade/UpgradeInfo;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->isNewVer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 199
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 201
    const-string v4, "VERSION_INFO"

    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->getVerProp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "updateURL"

    invoke-virtual {v2}, Lcom/zte/retrieve/upgrade/UpgradeInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 205
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->access$4(Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    const/4 v3, 0x0

    .line 207
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->dismissDialogWaitView()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 222
    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 210
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->dismissDialogWaitView()V

    .line 211
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v4, v4, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0600c7

    invoke-static {v4, v5}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 212
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 216
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->dismissDialogWaitView()V

    .line 217
    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v4, v4, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0600a6

    invoke-static {v4, v5}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 218
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 219
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
