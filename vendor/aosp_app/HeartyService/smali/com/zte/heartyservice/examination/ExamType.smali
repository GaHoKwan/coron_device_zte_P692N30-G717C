.class public final enum Lcom/zte/heartyservice/examination/ExamType;
.super Ljava/lang/Enum;
.source "ExamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/examination/ExamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum BACKUP:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum MEMORYANDDEVICE:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum NOSENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

.field public static final enum VIRRUS:Lcom/zte/heartyservice/examination/ExamType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "NETTRAFFIC"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "POWERPROTECTED"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "AUTOUPDATE"

    invoke-direct {v0, v1, v5}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "RETRIEVE"

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "PERMISSION"

    invoke-direct {v0, v1, v7}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "MEMORYANDDEVICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->MEMORYANDDEVICE:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "GABAGECLEAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "AUTORUNNING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "RUNNINGAPP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "VIRRUS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "SENSITIVEPERMISSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    .line 6
    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "NOSENSITIVEPERMISSION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->NOSENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "NOSTORAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    new-instance v0, Lcom/zte/heartyservice/examination/ExamType;

    const-string v1, "BACKUP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/examination/ExamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/zte/heartyservice/examination/ExamType;

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->MEMORYANDDEVICE:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->NOSENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/examination/ExamType;->$VALUES:[Lcom/zte/heartyservice/examination/ExamType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/examination/ExamType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/zte/heartyservice/examination/ExamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/examination/ExamType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/examination/ExamType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/zte/heartyservice/examination/ExamType;->$VALUES:[Lcom/zte/heartyservice/examination/ExamType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/examination/ExamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/examination/ExamType;

    return-object v0
.end method
