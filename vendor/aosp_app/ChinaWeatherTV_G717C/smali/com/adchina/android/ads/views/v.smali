.class final Lcom/adchina/android/ads/views/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdWebView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/v;->a:Lcom/adchina/android/ads/views/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/v;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/adchina/android/ads/views/v;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/adchina/android/ads/views/v;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->n:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v5

    return-void
.end method
