.class public enum Lcom/tutego/jrtf/RtfText$FieldModifier;
.super Ljava/lang/Enum;
.source "RtfText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldModifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfText$FieldModifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRTY:Lcom/tutego/jrtf/RtfText$FieldModifier;

.field public static final enum EDITED:Lcom/tutego/jrtf/RtfText$FieldModifier;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfText$FieldModifier;

.field public static final enum LOCKED:Lcom/tutego/jrtf/RtfText$FieldModifier;

.field public static final enum NONDISPLAYABLE:Lcom/tutego/jrtf/RtfText$FieldModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 671
    new-instance v0, Lcom/tutego/jrtf/RtfText$FieldModifier$1;

    const-string v1, "DIRTY"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfText$FieldModifier$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->DIRTY:Lcom/tutego/jrtf/RtfText$FieldModifier;

    .line 674
    new-instance v0, Lcom/tutego/jrtf/RtfText$FieldModifier$2;

    const-string v1, "EDITED"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfText$FieldModifier$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->EDITED:Lcom/tutego/jrtf/RtfText$FieldModifier;

    .line 677
    new-instance v0, Lcom/tutego/jrtf/RtfText$FieldModifier$3;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfText$FieldModifier$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->LOCKED:Lcom/tutego/jrtf/RtfText$FieldModifier;

    .line 681
    new-instance v0, Lcom/tutego/jrtf/RtfText$FieldModifier$4;

    const-string v1, "NONDISPLAYABLE"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfText$FieldModifier$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->NONDISPLAYABLE:Lcom/tutego/jrtf/RtfText$FieldModifier;

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tutego/jrtf/RtfText$FieldModifier;

    sget-object v1, Lcom/tutego/jrtf/RtfText$FieldModifier;->DIRTY:Lcom/tutego/jrtf/RtfText$FieldModifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfText$FieldModifier;->EDITED:Lcom/tutego/jrtf/RtfText$FieldModifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfText$FieldModifier;->LOCKED:Lcom/tutego/jrtf/RtfText$FieldModifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfText$FieldModifier;->NONDISPLAYABLE:Lcom/tutego/jrtf/RtfText$FieldModifier;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfText$FieldModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfText$FieldModifier;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfText$FieldModifier;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText$FieldModifier;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfText$FieldModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfText$FieldModifier;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfText$FieldModifier;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfText$FieldModifier;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfText$FieldModifier;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfText$FieldModifier;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
