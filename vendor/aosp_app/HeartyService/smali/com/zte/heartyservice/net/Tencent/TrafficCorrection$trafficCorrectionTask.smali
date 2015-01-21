.class Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;
.super Landroid/os/AsyncTask;
.source "TrafficCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "trafficCorrectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mSubscription:I

.field private msg:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "subscription"
    .parameter "phonenum"
    .parameter "msg"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->mSubscription:I

    .line 635
    iput p2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->mSubscription:I

    .line 636
    iput-object p3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->phoneNum:Ljava/lang/String;

    .line 637
    iput-object p4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->msg:Ljava/lang/String;

    .line 638
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 629
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->phoneNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->msg:Ljava/lang/String;

    iget v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$trafficCorrectionTask;->mSubscription:I

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->trafficCorrection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 643
    const/4 v0, 0x0

    return-object v0
.end method
