.class public Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmStore$DrmExtra;
.super Ljava/lang/Object;
.source "EncapsulatedDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmExtra"
.end annotation


# static fields
.field public static final DRM_LEVEL_SD:I = 0x2

.field public static final EXTRA_DRM_LEVEL:Ljava/lang/String; = "android.intent.extra.drm_level"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
