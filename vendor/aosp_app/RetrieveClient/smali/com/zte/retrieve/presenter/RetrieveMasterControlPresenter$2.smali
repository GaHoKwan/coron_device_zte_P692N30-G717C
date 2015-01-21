.class Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;
.super Ljava/lang/Object;
.source "RetrieveMasterControlPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->handleUpdateDialogClick()V
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
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, updateUid:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v2, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateBindingRelation(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, result:I
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->dismissDialogWaitView()V

    .line 203
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    invoke-virtual {v2, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->handleCloudReactiveSuccess(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 207
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ab

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 208
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method
