.class public enum Lcom/tutego/jrtf/RtfHeaderFont$CharSet;
.super Ljava/lang/Enum;
.source "RtfHeaderFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfHeaderFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "CharSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfHeaderFont$CharSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANSI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum ARABICSIMPLIFIED:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum ARABICTRADITIONAL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum ARABICUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum BALTIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum CYRILLIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum EASTERNEUROPE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum GREEK:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum HANGUL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum HEBREW:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum HEBREWUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum JOHAB:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum MAC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum OEM:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum PC437:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum SHIFTJIS:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum SYMBOL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum THAI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum TURKISH:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field public static final enum VIETNAMESE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$1;

    const-string v1, "ANSI"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ANSI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 101
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$2;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 104
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$3;

    const-string v1, "SYMBOL"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->SYMBOL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 110
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$4;

    const-string v1, "MAC"

    invoke-direct {v0, v1, v6}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->MAC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 113
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$5;

    const-string v1, "SHIFTJIS"

    invoke-direct {v0, v1, v7}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->SHIFTJIS:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 116
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$6;

    const-string v1, "HANGUL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HANGUL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 119
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$7;

    const-string v1, "JOHAB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->JOHAB:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 122
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$8;

    const-string v1, "GREEK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->GREEK:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 125
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$9;

    const-string v1, "TURKISH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->TURKISH:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 128
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$10;

    const-string v1, "VIETNAMESE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->VIETNAMESE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 131
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$11;

    const-string v1, "HEBREW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HEBREW:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 134
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$12;

    const-string v1, "ARABICSIMPLIFIED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICSIMPLIFIED:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 137
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$13;

    const-string v1, "ARABICTRADITIONAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICTRADITIONAL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 140
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$14;

    const-string v1, "ARABICUSER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 143
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$15;

    const-string v1, "HEBREWUSER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HEBREWUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 146
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$16;

    const-string v1, "BALTIC"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->BALTIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 149
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$17;

    const-string v1, "CYRILLIC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->CYRILLIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 152
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$18;

    const-string v1, "THAI"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->THAI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 155
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$19;

    const-string v1, "EASTERNEUROPE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->EASTERNEUROPE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 158
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$20;

    const-string v1, "PC437"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->PC437:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 161
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$21;

    const-string v1, "OEM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->OEM:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 95
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ANSI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->DEFAULT:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->SYMBOL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->MAC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->SHIFTJIS:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HANGUL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->JOHAB:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->GREEK:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->TURKISH:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->VIETNAMESE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HEBREW:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICSIMPLIFIED:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICTRADITIONAL:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ARABICUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->HEBREWUSER:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->BALTIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->CYRILLIC:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->THAI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->EASTERNEUROPE:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->PC437:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->OEM:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfHeaderFont$CharSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfHeaderFont$CharSet;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfHeaderFont$CharSet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
