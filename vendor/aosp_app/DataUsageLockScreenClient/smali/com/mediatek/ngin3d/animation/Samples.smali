.class public Lcom/mediatek/ngin3d/animation/Samples;
.super Ljava/lang/Object;
.source "Samples.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ALPHA:I = 0x4

.field public static final ANCHOR_POINT:I = 0x8

.field public static final CURVE_TYPE:Ljava/lang/String; = "type"

.field public static final IN_TANVAL:Ljava/lang/String; = "itx"

.field public static final IN_TANX:Ljava/lang/String; = "itx"

.field public static final IN_TANY:Ljava/lang/String; = "ity"

.field public static final IN_TANZ:Ljava/lang/String; = "itz"

.field public static final KEYFRAME_TIME:Ljava/lang/String; = "time"

.field public static final MARKER:I = 0x9

.field public static final MARKER_TIME:Ljava/lang/String; = "time"

.field public static final OUT_TANVAL:Ljava/lang/String; = "otx"

.field public static final OUT_TANX:Ljava/lang/String; = "otx"

.field public static final OUT_TANY:Ljava/lang/String; = "oty"

.field public static final OUT_TANZ:Ljava/lang/String; = "otz"

.field public static final ROTATE:I = 0x2

.field public static final SCALE:I = 0x3

.field public static final TRANSLATE:I = 0x1

.field public static final VALUE:Ljava/lang/String; = "v"

.field public static final X_AXIS:Ljava/lang/String; = "x"

.field public static final X_ROTATE:I = 0x5

.field public static final Y_AXIS:Ljava/lang/String; = "y"

.field public static final Y_ROTATE:I = 0x6

.field public static final Z_AXIS:Ljava/lang/String; = "z"

.field public static final Z_ROTATE:I = 0x7


# instance fields
.field private final mIntSampleArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mSampleArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field private final mStringSampleArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mSampleArrays:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mIntSampleArrays:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mStringSampleArrays:Ljava/util/HashMap;

    .line 84
    iput p1, p0, Lcom/mediatek/ngin3d/animation/Samples;->mType:I

    .line 85
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;[F)Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1
    .parameter "name"
    .parameter "array"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public add(Ljava/lang/String;[I)Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1
    .parameter "name"
    .parameter "array"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mIntSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method

.method public add(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1
    .parameter "name"
    .parameter "array"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mStringSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object p0
.end method

.method public get(Ljava/lang/String;)[F
    .locals 1
    .parameter "name"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)[I
    .locals 1
    .parameter "name"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mIntSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mStringSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mType:I

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Samples;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Samples;->mIntSampleArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method
