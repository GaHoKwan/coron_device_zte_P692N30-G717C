.class public final enum Lcom/itextpdf/text/Font$FontStyle;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/Font$FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum BOLD:Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum ITALIC:Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum LINETHROUGH:Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum NORMAL:Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum OBLIQUE:Lcom/itextpdf/text/Font$FontStyle;

.field public static final enum UNDERLINE:Lcom/itextpdf/text/Font$FontStyle;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "NORMAL"

    const-string v2, "normal"

    invoke-direct {v0, v1, v4, v2}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->NORMAL:Lcom/itextpdf/text/Font$FontStyle;

    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "BOLD"

    const-string v2, "bold"

    invoke-direct {v0, v1, v5, v2}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->BOLD:Lcom/itextpdf/text/Font$FontStyle;

    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "ITALIC"

    const-string v2, "italic"

    invoke-direct {v0, v1, v6, v2}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->ITALIC:Lcom/itextpdf/text/Font$FontStyle;

    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "OBLIQUE"

    const-string v2, "oblique"

    invoke-direct {v0, v1, v7, v2}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->OBLIQUE:Lcom/itextpdf/text/Font$FontStyle;

    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "UNDERLINE"

    const-string v2, "underline"

    invoke-direct {v0, v1, v8, v2}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->UNDERLINE:Lcom/itextpdf/text/Font$FontStyle;

    .line 88
    new-instance v0, Lcom/itextpdf/text/Font$FontStyle;

    const-string v1, "LINETHROUGH"

    const/4 v2, 0x5

    const-string v3, "line-through"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/Font$FontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->LINETHROUGH:Lcom/itextpdf/text/Font$FontStyle;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/itextpdf/text/Font$FontStyle;

    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->NORMAL:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->BOLD:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->ITALIC:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->OBLIQUE:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v1, v0, v7

    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->UNDERLINE:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/Font$FontStyle;->LINETHROUGH:Lcom/itextpdf/text/Font$FontStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/Font$FontStyle;->$VALUES:[Lcom/itextpdf/text/Font$FontStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/itextpdf/text/Font$FontStyle;->code:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontStyle;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/itextpdf/text/Font$FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Font$FontStyle;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/Font$FontStyle;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/itextpdf/text/Font$FontStyle;->$VALUES:[Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v0}, [Lcom/itextpdf/text/Font$FontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/Font$FontStyle;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/itextpdf/text/Font$FontStyle;->code:Ljava/lang/String;

    return-object v0
.end method
