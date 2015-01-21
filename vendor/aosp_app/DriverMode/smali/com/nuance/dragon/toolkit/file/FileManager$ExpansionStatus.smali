.class public final enum Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum DIR_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum FILE_CORRUPTED:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum FILE_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum OK:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum SDCARD_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field public static final enum UNPACKING_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->OK:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "FILE_NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->FILE_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "DIR_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->DIR_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "FILE_CORRUPTED"

    invoke-direct {v0, v1, v6}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->FILE_CORRUPTED:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "SDCARD_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->SDCARD_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "UNPACKING_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->UNPACKING_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->UNKNOWN_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    sget-object v1, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->OK:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->FILE_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->DIR_NOT_FOUND:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->FILE_CORRUPTED:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->SDCARD_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->UNPACKING_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->UNKNOWN_ERROR:Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->a:[Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->a:[Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/file/FileManager$ExpansionStatus;

    return-object v0
.end method
