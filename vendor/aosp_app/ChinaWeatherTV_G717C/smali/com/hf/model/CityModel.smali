.class public Lcom/hf/model/CityModel;
.super Ljava/lang/Object;
.source "CityModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cityID:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public cityPinyin:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public englishName:Ljava/lang/String;

.field public isDefault:Z

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public stationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/model/CityModel;->isDefault:Z

    .line 5
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    return-object v0
.end method
