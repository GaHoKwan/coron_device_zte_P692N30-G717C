.class public final enum Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;
.super Ljava/lang/Enum;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field private static final synthetic ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum LINE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum MARKER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum PENCIL:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

.field public static final enum RECT:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "PEN"

    invoke-direct {v0, v1, v4, v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "PENCIL"

    invoke-direct {v0, v1, v5, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "MARKER"

    invoke-direct {v0, v1, v6, v6}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "ERASER"

    invoke-direct {v0, v1, v7, v7}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "ELLIPSE"

    invoke-direct {v0, v1, v8, v8}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "RECT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->RECT:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "LINE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->LINE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    const-string v1, "ARROW"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    .line 144
    const/16 v0, 0x8

    new-array v0, v0, [Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v1, v0, v6

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v1, v0, v7

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->RECT:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->LINE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    aput-object v2, v0, v1

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->value:I

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    array-length v1, v0

    new-array v2, v1, [Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->value:I

    return v0
.end method
