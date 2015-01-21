.class public Lcom/zte/retrieve/service/instruct/Location$MapInfo;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private mapUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->mapUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)D
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->latitude:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)D
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->longitude:D

    return-wide v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->address:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->longitude:D

    return-wide v0
.end method

.method public getMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->mapUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->address:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->latitude:D

    .line 98
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->longitude:D

    .line 90
    return-void
.end method

.method public setMapUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "mapUrl"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->mapUrl:Ljava/lang/String;

    .line 114
    return-void
.end method
