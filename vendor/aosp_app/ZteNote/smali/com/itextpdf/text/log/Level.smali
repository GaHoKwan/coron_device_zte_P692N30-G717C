.class public final enum Lcom/itextpdf/text/log/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/log/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/log/Level;

.field public static final enum DEBUG:Lcom/itextpdf/text/log/Level;

.field public static final enum ERROR:Lcom/itextpdf/text/log/Level;

.field public static final enum INFO:Lcom/itextpdf/text/log/Level;

.field public static final enum TRACE:Lcom/itextpdf/text/log/Level;

.field public static final enum WARN:Lcom/itextpdf/text/log/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/itextpdf/text/log/Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/log/Level;->ERROR:Lcom/itextpdf/text/log/Level;

    new-instance v0, Lcom/itextpdf/text/log/Level;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/log/Level;->WARN:Lcom/itextpdf/text/log/Level;

    new-instance v0, Lcom/itextpdf/text/log/Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/log/Level;->INFO:Lcom/itextpdf/text/log/Level;

    new-instance v0, Lcom/itextpdf/text/log/Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/log/Level;->DEBUG:Lcom/itextpdf/text/log/Level;

    new-instance v0, Lcom/itextpdf/text/log/Level;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/text/log/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/log/Level;->TRACE:Lcom/itextpdf/text/log/Level;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/log/Level;

    sget-object v1, Lcom/itextpdf/text/log/Level;->ERROR:Lcom/itextpdf/text/log/Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/log/Level;->WARN:Lcom/itextpdf/text/log/Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/log/Level;->INFO:Lcom/itextpdf/text/log/Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/log/Level;->DEBUG:Lcom/itextpdf/text/log/Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/log/Level;->TRACE:Lcom/itextpdf/text/log/Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/itextpdf/text/log/Level;->$VALUES:[Lcom/itextpdf/text/log/Level;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/log/Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/itextpdf/text/log/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/log/Level;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/log/Level;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/itextpdf/text/log/Level;->$VALUES:[Lcom/itextpdf/text/log/Level;

    invoke-virtual {v0}, [Lcom/itextpdf/text/log/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/log/Level;

    return-object v0
.end method
