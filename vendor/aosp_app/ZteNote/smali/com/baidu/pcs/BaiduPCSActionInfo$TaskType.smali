.class public final enum Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

.field public static final enum ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

.field public static final enum DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

.field public static final enum UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->ALL:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->DOWNLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->UPLOAD:Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;
    .locals 1

    const-class v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    invoke-virtual {v0}, [Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$TaskType;

    return-object v0
.end method
