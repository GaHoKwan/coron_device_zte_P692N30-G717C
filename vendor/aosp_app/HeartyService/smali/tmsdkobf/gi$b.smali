.class public final Ltmsdkobf/gi$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private jO:I

.field private nu:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ltmsdkobf/gi;Landroid/location/Location;III)V
    .locals 1
    .parameter
    .parameter "location"
    .parameter
    .parameter "usedSatellite"
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gi$b;->nu:Landroid/location/Location;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/gi$b;->jO:I

    .line 202
    if-eqz p2, :cond_0

    .line 209
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Ltmsdkobf/gi$b;->nu:Landroid/location/Location;

    .line 210
    :cond_0
    iput p4, p0, Ltmsdkobf/gi$b;->jO:I

    .line 212
    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Ltmsdkobf/gi$b;->nu:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget v1, p0, Ltmsdkobf/gi$b;->jO:I

    if-lez v1, :cond_2

    iget v1, p0, Ltmsdkobf/gi$b;->jO:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 220
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ltmsdkobf/gi$b;->nu:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bI()Landroid/location/Location;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltmsdkobf/gi$b;->nu:Landroid/location/Location;

    return-object v0
.end method
