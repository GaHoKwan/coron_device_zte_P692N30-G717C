.class public final enum Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PauseTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

.field public static final enum ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

.field public static final enum DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

.field public static final enum UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;
    .locals 1

    const-class v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    invoke-virtual {v0}, [Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$PauseTaskType;

    return-object v0
.end method
