.class Lcom/baidu/pcs/BaiduPCSCopy;
.super Lcom/baidu/pcs/BaiduPCSFromToAction;


# static fields
.field private static final Value_Action:Ljava/lang/String; = "copy"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "copy"

    invoke-direct {p0, v0}, Lcom/baidu/pcs/BaiduPCSFromToAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected copy(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToInfo;",
            ">;)",
            "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/pcs/BaiduPCSFromToAction;->execute(Ljava/util/List;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSFileFromToResponse;

    move-result-object v0

    return-object v0
.end method
