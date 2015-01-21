.class public final enum Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PCSUploadSameNameFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

.field public static final enum other:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

.field public static final enum overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

.field public static final enum rename:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const-string v1, "overWrite"

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const-string v1, "rename"

    invoke-direct {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->rename:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const-string v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->other:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->overWrite:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->rename:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->other:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;
    .locals 1

    const-class v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    return-object v0
.end method

.method public static values()[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    invoke-virtual {v0}, [Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$PCSUploadSameNameFile;

    return-object v0
.end method
