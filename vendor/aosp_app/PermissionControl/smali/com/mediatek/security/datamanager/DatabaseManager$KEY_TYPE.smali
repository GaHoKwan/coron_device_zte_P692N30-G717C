.class final enum Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;
.super Ljava/lang/Enum;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/datamanager/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KEY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

.field public static final enum Perm_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

.field public static final enum Pkg_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    new-instance v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    const-string v1, "Pkg_Key"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Pkg_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    .line 247
    new-instance v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    const-string v1, "Perm_Key"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Perm_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    sget-object v1, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Pkg_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->Perm_Key:Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->$VALUES:[Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

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
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 245
    const-class v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;->$VALUES:[Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/security/datamanager/DatabaseManager$KEY_TYPE;

    return-object v0
.end method
