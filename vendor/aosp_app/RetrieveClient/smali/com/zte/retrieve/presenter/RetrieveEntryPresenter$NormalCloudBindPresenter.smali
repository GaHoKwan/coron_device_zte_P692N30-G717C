.class Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;
.super Lcom/zte/retrieve/presenter/CloudBindingPresenter;
.source "RetrieveEntryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalCloudBindPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;Lcom/zte/retrieve/iview/IRetrieveEntryView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "context"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;-><init>(Lcom/zte/retrieve/iview/ICloudBindingControlView;Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public displayBindingResultView()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;->this$0:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->jumpToRetrieveMasterView()V

    .line 41
    return-void
.end method
