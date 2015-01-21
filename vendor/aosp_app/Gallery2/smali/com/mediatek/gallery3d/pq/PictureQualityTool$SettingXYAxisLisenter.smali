.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingXYAxisLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAxisIndex(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {p1}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetXAxisIndex(I)Z

    .line 809
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {p2}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetYAxisIndex(I)Z

    .line 811
    return-void
.end method
