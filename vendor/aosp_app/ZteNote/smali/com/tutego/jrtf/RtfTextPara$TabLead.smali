.class public enum Lcom/tutego/jrtf/RtfTextPara$TabLead;
.super Ljava/lang/Enum;
.source "RtfTextPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfTextPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TabLead"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfTextPara$TabLead;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOTS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabLead;

.field public static final enum EQUALS_SIGN:Lcom/tutego/jrtf/RtfTextPara$TabLead;

.field public static final enum HYPHENS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

.field public static final enum THICK_LINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;

.field public static final enum UNDERLINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabLead$1;

    const-string v1, "DOTS"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfTextPara$TabLead$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->DOTS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    .line 426
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabLead$2;

    const-string v1, "HYPHENS"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfTextPara$TabLead$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->HYPHENS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    .line 429
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabLead$3;

    const-string v1, "UNDERLINE"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfTextPara$TabLead$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->UNDERLINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    .line 432
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabLead$4;

    const-string v1, "THICK_LINE"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfTextPara$TabLead$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->THICK_LINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    .line 435
    new-instance v0, Lcom/tutego/jrtf/RtfTextPara$TabLead$5;

    const-string v1, "EQUALS_SIGN"

    invoke-direct {v0, v1, v6}, Lcom/tutego/jrtf/RtfTextPara$TabLead$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->EQUALS_SIGN:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    .line 420
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tutego/jrtf/RtfTextPara$TabLead;

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabLead;->DOTS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabLead;->HYPHENS:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabLead;->UNDERLINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabLead;->THICK_LINE:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tutego/jrtf/RtfTextPara$TabLead;->EQUALS_SIGN:Lcom/tutego/jrtf/RtfTextPara$TabLead;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabLead;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfTextPara$TabLead;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfTextPara$TabLead;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfTextPara$TabLead;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfTextPara$TabLead;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfTextPara$TabLead;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfTextPara$TabLead;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfTextPara$TabLead;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method