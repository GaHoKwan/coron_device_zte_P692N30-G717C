.class final Lcom/adchina/android/ads/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected a:Lcom/adchina/android/ads/u;

.field final synthetic b:Lcom/adchina/android/ads/s;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/s;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/t;->b:Lcom/adchina/android/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/adchina/android/ads/u;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/t;->a:Lcom/adchina/android/ads/u;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/t;->b:Lcom/adchina/android/ads/s;

    iget-object v1, p0, Lcom/adchina/android/ads/t;->a:Lcom/adchina/android/ads/u;

    invoke-static {v0, p1, v1}, Lcom/adchina/android/ads/s;->a(Lcom/adchina/android/ads/s;Landroid/location/Location;Lcom/adchina/android/ads/u;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/t;->b:Lcom/adchina/android/ads/s;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/t;->a:Lcom/adchina/android/ads/u;

    invoke-static {v0, v1, v2}, Lcom/adchina/android/ads/s;->a(Lcom/adchina/android/ads/s;Landroid/location/Location;Lcom/adchina/android/ads/u;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
