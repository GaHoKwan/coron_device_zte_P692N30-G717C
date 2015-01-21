.class public interface abstract Lcom/android/gallery3d/app/AbstractGalleryActivity$GyroPositionListener;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GyroPositionListener"
.end annotation


# virtual methods
.method public abstract onCalculateAngle(Landroid/hardware/SensorEvent;)F
.end method

.method public abstract onGyroPositionChanged(F)V
.end method
