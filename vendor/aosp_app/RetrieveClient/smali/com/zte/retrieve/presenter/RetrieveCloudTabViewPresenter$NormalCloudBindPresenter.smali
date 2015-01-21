.class Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;
.super Lcom/zte/retrieve/presenter/CloudBindingPresenter;
.source "RetrieveCloudTabViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalCloudBindPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;Lcom/zte/retrieve/iview/IRetrieveCloudControlView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "context"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;-><init>(Lcom/zte/retrieve/iview/ICloudBindingControlView;Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public displayBindingResultView()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    iget-object v0, v0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;->finish()V

    .line 49
    return-void
.end method
