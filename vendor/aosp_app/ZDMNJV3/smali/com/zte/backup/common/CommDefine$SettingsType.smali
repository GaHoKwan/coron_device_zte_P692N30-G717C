.class public final enum Lcom/zte/backup/common/CommDefine$SettingsType;
.super Ljava/lang/Enum;
.source "CommDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/common/CommDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/backup/common/CommDefine$SettingsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum CHECK_UPDATE:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum CLOUD_DISK:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum CLOUD_ONE_KEY_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum CLOUD_USER_MGR:Lcom/zte/backup/common/CommDefine$SettingsType;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum FEEDBACK:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum HELP:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum HISTORY:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum LOCAL_ONE_KEY_BACKPU:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum NONE:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum SELECT_CONTACTS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum SELECT_GROUPS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum SHARE:Lcom/zte/backup/common/CommDefine$SettingsType;

.field public static final enum TITLE:Lcom/zte/backup/common/CommDefine$SettingsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "AUTO_BACKUP"

    invoke-direct {v0, v1, v3}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->AUTO_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 174
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "LOCAL_ONE_KEY_BACKPU"

    invoke-direct {v0, v1, v4}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->LOCAL_ONE_KEY_BACKPU:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 175
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "CLOUD_ONE_KEY_BACKUP"

    invoke-direct {v0, v1, v5}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_ONE_KEY_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 176
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "CLOUD_USER_MGR"

    invoke-direct {v0, v1, v6}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_USER_MGR:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 177
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "SELECT_CONTACTS_BACKUP"

    invoke-direct {v0, v1, v7}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->SELECT_CONTACTS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 178
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "SELECT_GROUPS_BACKUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->SELECT_GROUPS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 179
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "CHECK_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->CHECK_UPDATE:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 180
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "HISTORY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->HISTORY:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 181
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "HELP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->HELP:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 182
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "SHARE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->SHARE:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 183
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "TITLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->TITLE:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 184
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "CLOUD_DISK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_DISK:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 185
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "FEEDBACK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->FEEDBACK:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 186
    new-instance v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    const-string v1, "NONE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/common/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->NONE:Lcom/zte/backup/common/CommDefine$SettingsType;

    .line 172
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/zte/backup/common/CommDefine$SettingsType;

    sget-object v1, Lcom/zte/backup/common/CommDefine$SettingsType;->AUTO_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/backup/common/CommDefine$SettingsType;->LOCAL_ONE_KEY_BACKPU:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_ONE_KEY_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_USER_MGR:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/backup/common/CommDefine$SettingsType;->SELECT_CONTACTS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->SELECT_GROUPS_BACKUP:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->CHECK_UPDATE:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->HISTORY:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->HELP:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->SHARE:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->TITLE:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->CLOUD_DISK:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->FEEDBACK:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/zte/backup/common/CommDefine$SettingsType;->NONE:Lcom/zte/backup/common/CommDefine$SettingsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->ENUM$VALUES:[Lcom/zte/backup/common/CommDefine$SettingsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/backup/common/CommDefine$SettingsType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/common/CommDefine$SettingsType;

    return-object v0
.end method

.method public static values()[Lcom/zte/backup/common/CommDefine$SettingsType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/backup/common/CommDefine$SettingsType;->ENUM$VALUES:[Lcom/zte/backup/common/CommDefine$SettingsType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/backup/common/CommDefine$SettingsType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
