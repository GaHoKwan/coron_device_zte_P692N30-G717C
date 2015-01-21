.class public Lcom/mediatek/j3m/Appearance$Operation;
.super Ljava/lang/Object;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field public static final DECREMENT:I = 0x4

.field public static final DECREMENT_WRAP:I = 0x7

.field public static final INCREMENT:I = 0x3

.field public static final INCREMENT_WRAP:I = 0x6

.field public static final INVERT:I = 0x5

.field public static final KEEP:I = 0x1

.field public static final REPLACE:I = 0x2

.field public static final ZERO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
