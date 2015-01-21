.class final Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$3;
.super Ljava/lang/Object;
.source "TrafficCorrectionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->closeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 151
    #calls: Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->internalCloseReceiver()V
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$300()V

    .line 152
    return-void
.end method
