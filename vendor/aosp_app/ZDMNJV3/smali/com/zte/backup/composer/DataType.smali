.class public final enum Lcom/zte/backup/composer/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/backup/composer/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALARM:Lcom/zte/backup/composer/DataType;

.field public static final enum APPS:Lcom/zte/backup/composer/DataType;

.field public static final enum BROWSER:Lcom/zte/backup/composer/DataType;

.field public static final enum CALENDAR:Lcom/zte/backup/composer/DataType;

.field public static final enum CALLHISTORY:Lcom/zte/backup/composer/DataType;

.field private static final synthetic ENUM$VALUES:[Lcom/zte/backup/composer/DataType;

.field public static final enum FAVORITES:Lcom/zte/backup/composer/DataType;

.field public static final enum GALLERY:Lcom/zte/backup/composer/DataType;

.field public static final enum MMS:Lcom/zte/backup/composer/DataType;

.field public static final enum NONEAPP:Lcom/zte/backup/composer/DataType;

.field public static final enum NOTES:Lcom/zte/backup/composer/DataType;

.field public static final enum PHONEBOOK:Lcom/zte/backup/composer/DataType;

.field public static final enum SETTINGS:Lcom/zte/backup/composer/DataType;

.field public static final enum SMS:Lcom/zte/backup/composer/DataType;

.field public static final enum SMSMMS:Lcom/zte/backup/composer/DataType;

.field public static final enum ZTEBROWSER:Lcom/zte/backup/composer/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "PHONEBOOK"

    invoke-direct {v0, v1, v3}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    .line 18
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v4}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    .line 19
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v5}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    .line 20
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1, v6}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    .line 21
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "CALLHISTORY"

    invoke-direct {v0, v1, v7}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    .line 22
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "BROWSER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    .line 23
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "SETTINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    .line 24
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "ALARM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    .line 25
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "NOTES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    .line 26
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "FAVORITES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    .line 27
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "GALLERY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->GALLERY:Lcom/zte/backup/composer/DataType;

    .line 28
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "ZTEBROWSER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->ZTEBROWSER:Lcom/zte/backup/composer/DataType;

    .line 29
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "SMSMMS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->SMSMMS:Lcom/zte/backup/composer/DataType;

    .line 30
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "NONEAPP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->NONEAPP:Lcom/zte/backup/composer/DataType;

    .line 31
    new-instance v0, Lcom/zte/backup/composer/DataType;

    const-string v1, "APPS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/zte/backup/composer/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    .line 16
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/zte/backup/composer/DataType;

    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zte/backup/composer/DataType;->GALLERY:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zte/backup/composer/DataType;->ZTEBROWSER:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/zte/backup/composer/DataType;->SMSMMS:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/zte/backup/composer/DataType;->NONEAPP:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/backup/composer/DataType;->ENUM$VALUES:[Lcom/zte/backup/composer/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/backup/composer/DataType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/backup/composer/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/DataType;

    return-object v0
.end method

.method public static values()[Lcom/zte/backup/composer/DataType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/backup/composer/DataType;->ENUM$VALUES:[Lcom/zte/backup/composer/DataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/backup/composer/DataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
