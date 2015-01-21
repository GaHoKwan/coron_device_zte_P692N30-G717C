.class public Ltmsdk/common/tcc/TrafficSmsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x6

    const-class v1, Ltmsdk/common/tcc/TrafficSmsParser;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getNumberEntrance(Ljava/lang/String;Ljava/lang/String;Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .parameter "address"
    .parameter "body"
    .parameter "matchRule"
    .parameter "trafficRef"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Ltmsdk/common/tcc/TrafficSmsParser;->nativeGetNumberEntrance(Ljava/lang/String;Ljava/lang/String;Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public static getWrongSmsType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "address"
    .parameter "body"

    .prologue
    .line 66
    invoke-static {p0, p1}, Ltmsdk/common/tcc/TrafficSmsParser;->nativeGetWrongSmsType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native nativeGetNumberEntrance(Ljava/lang/String;Ljava/lang/String;Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private static native nativeGetWrongSmsType(Ljava/lang/String;Ljava/lang/String;)I
.end method
