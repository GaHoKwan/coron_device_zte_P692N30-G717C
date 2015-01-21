.class public Lcom/mediatek/ngin3d/presentation/IActorNodePresentation$CollisionType;
.super Ljava/lang/Object;
.source "IActorNodePresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollisionType"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final PLANE:I = 0x1

.field public static final SPHERE:I = 0x3

.field public static final SQUARE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
