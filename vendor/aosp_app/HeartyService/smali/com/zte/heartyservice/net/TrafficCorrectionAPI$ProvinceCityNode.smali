.class public Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
.super Ljava/lang/Object;
.source "TrafficCorrectionAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvinceCityNode"
.end annotation


# instance fields
.field public final mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

.field final synthetic this$0:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/TrafficCorrectionAPI;Lcom/zte/heartyservice/net/CodeNameItem;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "province"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 27
    iput-object p3, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mCityList:Ljava/util/List;

    .line 28
    return-void
.end method
