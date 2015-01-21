.class public Lcom/mediatek/camera/ext/CameraExtension;
.super Ljava/lang/Object;
.source "CameraExtension.java"

# interfaces
.implements Lcom/mediatek/camera/ext/ICameraExtension;


# instance fields
.field private mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/mediatek/camera/ext/FeatureExtension;

    invoke-direct {v0}, Lcom/mediatek/camera/ext/FeatureExtension;-><init>()V

    iput-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    return-object v0
.end method
