.class public Lcom/mediatek/j3m/Appearance$Function;
.super Ljava/lang/Object;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/j3m/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Function"
.end annotation


# static fields
.field public static final ALWAYS:I = 0x7

.field public static final EQUAL:I = 0x2

.field public static final GEQUAL:I = 0x6

.field public static final GREATER:I = 0x4

.field public static final LEQUAL:I = 0x3

.field public static final LESS:I = 0x1

.field public static final NEVER:I = 0x0

.field public static final NOTEQUAL:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
