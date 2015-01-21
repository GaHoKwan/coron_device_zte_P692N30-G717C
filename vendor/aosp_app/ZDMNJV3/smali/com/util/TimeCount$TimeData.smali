.class Lcom/util/TimeCount$TimeData;
.super Ljava/lang/Object;
.source "TimeCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/util/TimeCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeData"
.end annotation


# instance fields
.field time:J

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/util/TimeCount$TimeData;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/util/TimeCount$TimeData;-><init>()V

    return-void
.end method
