.class public Lcom/mediatek/j3m/Texture$Format;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# static fields
.field public static final ALPHA:I = 0x4

.field public static final DEPTH:I = 0x5

.field public static final LUMINANCE:I = 0x3

.field public static final LUMINANCE_ALPHA:I = 0x2

.field public static final RGB:I = 0x1

.field public static final RGBA:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
