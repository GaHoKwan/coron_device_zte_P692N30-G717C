.class public abstract Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.super Ljava/lang/Object;
.source "ContextBasedProxy.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

.field private mProxyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    .line 74
    const-string v0, "ContextBasedProxy"

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mProxyName:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    return-object v0
.end method

.method public getProxyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mProxyName:Ljava/lang/String;

    return-object v0
.end method

.method public registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->registerSelfChangeObserver(Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;)V

    .line 128
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->setInnerContentResolver(Landroid/content/ContentResolver;)V

    .line 112
    return-void
.end method

.method public setProxyName(Ljava/lang/String;)V
    .locals 0
    .parameter "proxyName"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mProxyName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public unregisterSelfChangeObserver()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->unregisterSelfChangeObserver()V

    .line 135
    return-void
.end method
