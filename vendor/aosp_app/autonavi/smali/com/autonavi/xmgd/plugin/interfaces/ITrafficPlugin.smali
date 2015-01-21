.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/ITrafficPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# static fields
.field public static final KEY_BATCHTIME:Ljava/lang/String; = "batchtime"

.field public static final KEY_CALLBACKTYPE:Ljava/lang/String; = "callbacktype"

.field public static final KEY_RESULTFLAG:Ljava/lang/String; = "resultflag"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TRAFFICLIST:Ljava/lang/String; = "trafficlist"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final NETWORK_EXCEPTION:I = -0x80000000

.field public static final TRAFFIC_CALLBACK_TYPE_AROUND:I = 0x1

.field public static final TRAFFIC_CALLBACK_TYPE_FRONT:I = 0x0

.field public static final TRAFFIC_CALLBACK_TYPE_HOTSPOT:I = 0x2

.field public static final UNKNOWN_EXCEPITON:I = -0x7ffffffe

.field public static final UNSUPPORTEDOPERATION_EXCEPTION:I = -0x7fffffff


# virtual methods
.method public abstract requestFrontTraffic(Lcom/autonavi/xmgd/plugin/interfaces/ITrafficPlugin$ITrafficCallback;)Ljava/lang/String;
.end method

.method public abstract requestTrafficByName(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/xmgd/plugin/interfaces/ITrafficPlugin$ITrafficCallback;)Ljava/lang/String;
.end method

.method public abstract requestTrafficByPosition(DDFLcom/autonavi/xmgd/plugin/interfaces/ITrafficPlugin$ITrafficCallback;)Ljava/lang/String;
.end method

.method public abstract setFrontTrafficPeriod(I)V
.end method

.method public abstract stopFrontTrafficRequest()V
.end method
