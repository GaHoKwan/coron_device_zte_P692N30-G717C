.class public enum Lcom/tutego/jrtf/RtfTextPara$TabKind;
.super Ljava/lang/Enum;
.source "RtfTextPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfTextPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TabKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfTextPara$TabKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lcom/tutego/jrtf/RtfTextPara$TabKind;

.field public static final enum DECIMAL:Lcom/tutego/jrtf/RtfTextPara$TabKind;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabKind;

.field public static final enum LEFT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

.field public static final enum RIGHT:Lcom/tutego/jrtf/RtfTextPara$TabKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 405
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfTextPara$TabKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->LEFT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    .line 408
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabKind$1;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfTextPara$TabKind$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->RIGHT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    .line 411
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabKind$2;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfTextPara$TabKind$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->CENTER:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    .line 414
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabKind$3;

    const-string v1, "DECIMAL"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfTextPara$TabKind$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->DECIMAL:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    .line 402
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tutego/jrtf/RtfTextPara$TabKind;

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabKind;->LEFT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabKind;->RIGHT:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabKind;->CENTER:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabKind;->DECIMAL:Lcom/tutego/jrtf/RtfTextPara$TabKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfTextPara$TabKind;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfTextPara$TabKind;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfTextPara$TabKind;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfTextPara$TabKind;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfTextPara$TabKind;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabKind;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfTextPara$TabKind;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
