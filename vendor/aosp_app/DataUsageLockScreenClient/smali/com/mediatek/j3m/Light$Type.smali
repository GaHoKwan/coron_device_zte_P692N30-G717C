.class public Lcom/mediatek/j3m/Light$Type;
.super Ljava/lang/Object;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final DIRECTIONAL:I = 0x1

.field public static final OMNI:I = 0x0

.field public static final SPOT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
