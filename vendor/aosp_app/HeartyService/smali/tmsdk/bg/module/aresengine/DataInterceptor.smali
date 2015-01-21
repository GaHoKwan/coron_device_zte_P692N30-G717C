.class public interface abstract Ltmsdk/bg/module/aresengine/DataInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;
.end method

.method public abstract dataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end method
