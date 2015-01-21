.class public interface abstract Lcom/android/camera/manager/PickerManager$PickerListener;
.super Ljava/lang/Object;
.source "PickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/PickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PickerListener"
.end annotation


# virtual methods
.method public abstract onCameraPicked(I)Z
.end method

.method public abstract onFlashPicked(Ljava/lang/String;)Z
.end method

.method public abstract onModePicked(ILcom/android/camera/ListPreference;)Z
.end method

.method public abstract onStereoPicked(Z)Z
.end method
