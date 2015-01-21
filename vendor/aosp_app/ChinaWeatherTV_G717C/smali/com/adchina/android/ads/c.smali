.class public final Lcom/adchina/android/ads/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V
    .locals 2

    new-instance v0, Lcom/adchina/android/ads/d;

    invoke-direct {v0, p1}, Lcom/adchina/android/ads/d;-><init>(Lcom/adchina/android/ads/f;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    new-instance v0, Lcom/adchina/android/ads/j;

    invoke-direct {v0, p0, v1}, Lcom/adchina/android/ads/j;-><init>(Lcom/adchina/android/ads/e;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/j;->start()V

    return-void
.end method
