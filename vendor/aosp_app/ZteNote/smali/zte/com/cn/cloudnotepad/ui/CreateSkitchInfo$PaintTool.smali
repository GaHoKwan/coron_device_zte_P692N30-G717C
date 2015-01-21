.class public final enum Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
.super Ljava/lang/Enum;
.source "CreateSkitchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaintTool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ColorBox:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

.field private static final synthetic ENUM$VALUES:[Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

.field public static final enum Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

.field public static final enum PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

.field public static final enum ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

.field public static final enum SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 820
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    const-string v1, "ColorBox"

    invoke-direct {v0, v1, v2, v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ColorBox:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    const-string v1, "SliderView"

    invoke-direct {v0, v1, v3, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    const-string v1, "PenType"

    invoke-direct {v0, v1, v4, v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    const-string v1, "ShapeType"

    invoke-direct {v0, v1, v5, v5}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    const-string v1, "Eraser"

    invoke-direct {v0, v1, v6, v6}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    .line 819
    const/4 v0, 0x5

    new-array v0, v0, [Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ColorBox:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    aput-object v1, v0, v2

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    aput-object v1, v0, v3

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    aput-object v1, v0, v4

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    aput-object v1, v0, v5

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    aput-object v1, v0, v6

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 823
    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->value:I

    .line 824
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    array-length v1, v0

    new-array v2, v1, [Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->value:I

    return v0
.end method
