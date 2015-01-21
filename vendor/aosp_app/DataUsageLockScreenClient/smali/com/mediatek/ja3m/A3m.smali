.class public Lcom/mediatek/ja3m/A3m;
.super Ljava/lang/Object;
.source "A3m.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A3mAssetPool_registerSource_AssetManager(Lcom/mediatek/j3m/AssetPool;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 19
    move-object v0, p0

    check-cast v0, Lcom/mediatek/ja3m/A3mAssetPool;

    invoke-static {v0}, Lcom/mediatek/ja3m/A3mAssetPool;->getCPtr(Lcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v0

    check-cast p0, Lcom/mediatek/ja3m/A3mAssetPool;

    .end local p0
    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_registerSource_AssetManager(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public static A3mAssetPool_registerSource_ResourceDataSource(Lcom/mediatek/j3m/AssetPool;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 15
    move-object v0, p0

    check-cast v0, Lcom/mediatek/ja3m/A3mAssetPool;

    invoke-static {v0}, Lcom/mediatek/ja3m/A3mAssetPool;->getCPtr(Lcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v0

    check-cast p0, Lcom/mediatek/ja3m/A3mAssetPool;

    .end local p0
    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_registerSource_ResourceDataSource(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/Object;)V

    .line 16
    return-void
.end method
