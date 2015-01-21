.class Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;
.super Ljava/lang/Object;
.source "TrafficCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TCResult"
.end annotation


# instance fields
.field mErr:I

.field mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CorrectionDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mErr:I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mInfoList:Ljava/util/ArrayList;

    return-void
.end method
