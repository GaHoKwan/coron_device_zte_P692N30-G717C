.class public abstract Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
.super Ljava/lang/Object;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/misc/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation


# instance fields
.field private final key:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "key"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;->key:I

    .line 220
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 224
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 229
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final intKey()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;->key:I

    return v0
.end method

.method public abstract isCompatibleValue(Ljava/lang/Object;)Z
.end method
