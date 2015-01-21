.class public final enum Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
.super Ljava/lang/Enum;
.source "PRTokeniser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PRTokeniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum ENDOFFILE:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum REF:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum START_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum START_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

.field public static final enum STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 62
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 63
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "START_ARRAY"

    invoke-direct {v0, v1, v7}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 65
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 66
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "START_DIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "END_DIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 68
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "REF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->REF:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 69
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    const-string v1, "ENDOFFILE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ENDOFFILE:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->REF:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ENDOFFILE:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->$VALUES:[Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->$VALUES:[Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    return-object v0
.end method
