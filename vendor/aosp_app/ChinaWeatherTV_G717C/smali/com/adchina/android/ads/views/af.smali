.class final Lcom/adchina/android/ads/views/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/views/ak;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/af;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/adchina/android/ads/views/af;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/adchina/android/ads/views/ag;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/ag;-><init>(Lcom/adchina/android/ads/views/af;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
