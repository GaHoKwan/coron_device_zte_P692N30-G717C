.class public final Ltmsdkobf/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/aresengine/DataInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;",
        "Ltmsdk/bg/module/aresengine/DataInterceptor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private oB:Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private oC:Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private oD:Ltmsdk/bg/module/aresengine/DataHandler;


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/aresengine/DataMonitor;Ltmsdk/bg/module/aresengine/DataFilter;Ltmsdk/bg/module/aresengine/DataHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter "datahandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;",
            "Ltmsdk/bg/module/aresengine/DataHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Ltmsdkobf/gx;,"Ltmsdkobf/gx<TT;>;"
    .local p1, datamonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p2, datafilter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ltmsdkobf/gx;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 16
    iput-object p2, p0, Ltmsdkobf/gx;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 17
    iput-object p3, p0, Ltmsdkobf/gx;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    .line 18
    return-void
.end method


# virtual methods
.method public dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Ltmsdkobf/gx;,"Ltmsdkobf/gx<TT;>;"
    iget-object v0, p0, Ltmsdkobf/gx;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    return-object v0
.end method

.method public dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Ltmsdkobf/gx;,"Ltmsdkobf/gx<TT;>;"
    iget-object v0, p0, Ltmsdkobf/gx;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    return-object v0
.end method

.method public dataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Ltmsdkobf/gx;,"Ltmsdkobf/gx<TT;>;"
    iget-object v0, p0, Ltmsdkobf/gx;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    return-object v0
.end method
