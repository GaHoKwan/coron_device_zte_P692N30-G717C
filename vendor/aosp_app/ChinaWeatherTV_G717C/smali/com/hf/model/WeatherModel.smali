.class public Lcom/hf/model/WeatherModel;
.super Ljava/lang/Object;
.source "WeatherModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cityId:Ljava/lang/String;

.field public healthIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation
.end field

.field public indicesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation
.end field

.field public outDoorIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation
.end field

.field public sid:Ljava/lang/String;

.field public skReportTime:Ljava/lang/String;

.field public skWeather:Lcom/hf/model/SKWeather;

.field public travelIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation
.end field

.field public weatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
