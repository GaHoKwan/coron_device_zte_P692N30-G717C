.class public Lcom/mediatek/j3m/Texture$FilterMode;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterMode"
.end annotation


# static fields
.field public static final LINEAR:I = 0x1

.field public static final LINEAR_MIPMAP_LINEAR:I = 0x5

.field public static final LINEAR_MIPMAP_NEAREST:I = 0x4

.field public static final NEAREST:I = 0x0

.field public static final NEAREST_MIPMAP_LINEAR:I = 0x3

.field public static final NEAREST_MIPMAP_NEAREST:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
