.class final enum Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
.super Ljava/lang/Enum;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field public static final enum SET_DISGUISE_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "RESET_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "RECHECK"

    invoke-direct {v0, v1, v5}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "SET_DISGUISE_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->SET_DISGUISE_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "BACKUP_CHECK"

    invoke-direct {v0, v1, v7}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    const-string v1, "RESTORE_CHECK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->SET_DISGUISE_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->$VALUES:[Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->$VALUES:[Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    return-object v0
.end method
