.class public enum Lcom/tutego/jrtf/RtfTextPara$BorderStyle;
.super Ljava/lang/Enum;
.source "RtfTextPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfTextPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfTextPara$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOTTED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

.field public static final enum DOUBLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

.field public static final enum DOUBLE_THICKNESS:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

.field public static final enum SHADOWED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

.field public static final enum SINGLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 529
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$1;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->SINGLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    .line 532
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$2;

    const-string v1, "DOUBLE_THICKNESS"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOUBLE_THICKNESS:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    .line 535
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$3;

    const-string v1, "SHADOWED"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->SHADOWED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    .line 538
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$4;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOUBLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    .line 541
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$5;

    const-string v1, "DOTTED"

    invoke-direct {v0, v1, v6}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOTTED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    .line 526
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->SINGLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOUBLE_THICKNESS:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->SHADOWED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOUBLE:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->DOTTED:Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfTextPara$BorderStyle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfTextPara$BorderStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfTextPara$BorderStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfTextPara$BorderStyle;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfTextPara$BorderStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
