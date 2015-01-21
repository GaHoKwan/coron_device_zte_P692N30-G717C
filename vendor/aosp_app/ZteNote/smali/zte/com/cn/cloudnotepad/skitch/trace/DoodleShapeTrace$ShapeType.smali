.class public final enum Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;
.super Ljava/lang/Enum;
.source "DoodleShapeTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

.field public static final enum ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

.field private static final synthetic ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

.field public static final enum LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

.field public static final enum RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    const-string v1, "ELLIPSE"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    const-string v1, "RECT"

    invoke-direct {v0, v1, v3}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v4}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    const-string v1, "ARROW"

    invoke-direct {v0, v1, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    aput-object v1, v0, v2

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    aput-object v1, v0, v3

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    aput-object v1, v0, v4

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    aput-object v1, v0, v5

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    array-length v1, v0

    new-array v2, v1, [Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
