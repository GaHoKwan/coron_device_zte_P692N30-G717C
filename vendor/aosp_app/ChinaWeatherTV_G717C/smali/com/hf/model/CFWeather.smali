.class public final Lcom/hf/model/CFWeather;
.super Ljava/lang/Object;
.source "CFWeather.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public isHalfDay:Z

.field public isToday:Z

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tDay:Ljava/lang/String;

.field public tNight:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public weatherDay:I

.field public weatherNigth:I

.field public week:I

.field public windDirCodeDay:I

.field public windDirCodeNight:I

.field public windPowerDay:I

.field public windPowerNight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    .line 19
    iput-boolean v0, p0, Lcom/hf/model/CFWeather;->isToday:Z

    .line 8
    return-void
.end method
