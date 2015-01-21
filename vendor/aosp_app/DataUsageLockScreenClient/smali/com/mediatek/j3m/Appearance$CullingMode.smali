.class public Lcom/mediatek/j3m/Appearance$CullingMode;
.super Ljava/lang/Object;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CullingMode"
.end annotation


# static fields
.field public static final BACK:I = 0x0

.field public static final FRONT:I = 0x1

.field public static final FRONT_AND_BACK:I = 0x2

.field public static final NONE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
