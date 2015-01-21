.class Lcom/zte/statistics/sdk/ZTEStatistics$2;
.super Ljava/lang/Thread;
.source "ZTEStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/ZTEStatistics;->asyncFetchAppConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 310
    #calls: Lcom/zte/statistics/sdk/ZTEStatistics;->fetchAppConfiguration()V
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->access$0()V

    .line 311
    return-void
.end method
