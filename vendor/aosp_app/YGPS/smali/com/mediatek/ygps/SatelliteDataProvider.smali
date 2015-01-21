.class public interface abstract Lcom/mediatek/ygps/SatelliteDataProvider;
.super Ljava/lang/Object;
.source "SatelliteDataProvider.java"


# static fields
.field public static final MAX_SATELLITES_NUMBER:I = 0x100

.field public static final SATELLITES_MASK_BIT_WIDTH:I = 0x20

.field public static final SATELLITES_MASK_SIZE:I = 0x8


# virtual methods
.method public abstract getSatelliteStatus([I[F[F[FII[I)I
.end method

.method public abstract setSatelliteStatus(I[I[F[F[FII[I)V
.end method
