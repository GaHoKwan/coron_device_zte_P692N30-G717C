.class Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;
.super Lcom/zte/retrieve/presenter/CloudBindingPresenter;
.source "SecurityInfoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityCloudBindPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "context"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;-><init>(Lcom/zte/retrieve/iview/ICloudBindingControlView;Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public displayBindingResultView()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter$SecurityCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->displayBindingSuccess()V

    .line 51
    return-void
.end method
