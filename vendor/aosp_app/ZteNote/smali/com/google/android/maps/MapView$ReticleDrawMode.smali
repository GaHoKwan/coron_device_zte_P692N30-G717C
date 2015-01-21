.class public final enum Lcom/google/android/maps/MapView$ReticleDrawMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReticleDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/MapView$ReticleDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;


# direct methods
.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/MapView$ReticleDrawMode;
    .locals 2
    .parameter "this"

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lcom/google/android/maps/MapView$ReticleDrawMode;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
