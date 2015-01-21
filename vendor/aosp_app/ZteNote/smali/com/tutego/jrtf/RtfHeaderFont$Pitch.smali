.class public enum Lcom/tutego/jrtf/RtfHeaderFont$Pitch;
.super Ljava/lang/Enum;
.source "RtfHeaderFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfHeaderFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Pitch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfHeaderFont$Pitch;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

.field public static final enum FIXED:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

.field public static final enum VARIABLE:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    .line 173
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$2;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->FIXED:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    .line 176
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$3;

    const-string v1, "VARIABLE"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfHeaderFont$Pitch$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->VARIABLE:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->FIXED:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->VARIABLE:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfHeaderFont$Pitch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfHeaderFont$Pitch;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfHeaderFont$Pitch;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfHeaderFont$Pitch;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
