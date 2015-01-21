.class public Lcom/nuance/dragon/toolkit/cloudservices/reset/CloudProfileReset;
.super Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;)V
    .locals 2

    const-string v0, "NVC_RESET_USER_PROFILE_CMD"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudSimpleCommand;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-void
.end method
