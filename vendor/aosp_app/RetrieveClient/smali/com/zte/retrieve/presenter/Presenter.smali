.class public Lcom/zte/retrieve/presenter/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/zte/retrieve/iview/IView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mController:Lcom/zte/retrieve/controller/Controller;

.field public mView:Lcom/zte/retrieve/iview/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, this:Lcom/zte/retrieve/presenter/Presenter;,"Lcom/zte/retrieve/presenter/Presenter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/presenter/Presenter;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 16
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 26
    .local p0, this:Lcom/zte/retrieve/presenter/Presenter;,"Lcom/zte/retrieve/presenter/Presenter<TT;>;"
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    .local p0, this:Lcom/zte/retrieve/presenter/Presenter;,"Lcom/zte/retrieve/presenter/Presenter<TT;>;"
    iput-object p1, p0, Lcom/zte/retrieve/presenter/Presenter;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public setView(Lcom/zte/retrieve/iview/IView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/zte/retrieve/presenter/Presenter;,"Lcom/zte/retrieve/presenter/Presenter<TT;>;"
    .local p1, view:Lcom/zte/retrieve/iview/IView;,"TT;"
    iput-object p1, p0, Lcom/zte/retrieve/presenter/Presenter;->mView:Lcom/zte/retrieve/iview/IView;

    .line 24
    return-void
.end method
