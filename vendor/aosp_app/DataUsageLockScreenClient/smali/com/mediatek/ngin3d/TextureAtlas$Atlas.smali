.class Lcom/mediatek/ngin3d/TextureAtlas$Atlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Atlas"
.end annotation


# instance fields
.field protected final mAsset:Ljava/lang/String;

.field protected final mFrames:Lorg/json/JSONObject;

.field protected final mImageId:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1
    .parameter "resId"
    .parameter "frames"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mImageId:I

    .line 96
    iput-object p2, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mFrames:Lorg/json/JSONObject;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mAsset:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "asset"
    .parameter "frames"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mAsset:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mFrames:Lorg/json/JSONObject;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mImageId:I

    .line 104
    return-void
.end method


# virtual methods
.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mAsset:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/mediatek/ngin3d/TextureAtlas$Atlas;->mImageId:I

    return v0
.end method
