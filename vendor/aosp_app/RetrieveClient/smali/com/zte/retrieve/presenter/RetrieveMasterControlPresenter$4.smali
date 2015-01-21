.class Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;
.super Ljava/lang/Object;
.source "RetrieveMasterControlPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->setSwitchThread(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iput-object p2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;->val$handler:Landroid/os/Handler;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;->val$handler:Landroid/os/Handler;

    #calls: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->queryCloudStatusFromCloud(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$4(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Landroid/os/Handler;)V

    .line 280
    return-void
.end method
