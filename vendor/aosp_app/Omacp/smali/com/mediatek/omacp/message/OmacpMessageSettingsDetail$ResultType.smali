.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultType"
.end annotation


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "appId"
    .parameter "result"

    .prologue
    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mAppId:Ljava/lang/String;

    .line 1436
    iput p2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1437
    return-void
.end method
