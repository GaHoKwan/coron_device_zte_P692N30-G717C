.class Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "ViaCdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1992
    const-string/jumbo v1, "net.cdma.pppd_via.ipchanged"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, ipChanged:Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    const-string/jumbo v1, "net.cdma.pppd_via.ipchanged"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V

    .line 1997
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1999
    .end local v0           #ipChanged:Ljava/lang/String;
    :cond_1
    return-void
.end method
