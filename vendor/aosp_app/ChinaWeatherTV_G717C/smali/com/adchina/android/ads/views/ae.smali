.class final Lcom/adchina/android/ads/views/ae;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/ad;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ae;->a:Lcom/adchina/android/ads/views/ad;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/ae;->a:Lcom/adchina/android/ads/views/ad;

    iget-object v0, v0, Lcom/adchina/android/ads/views/ad;->a:Lcom/adchina/android/ads/views/ac;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ac;->a(Lcom/adchina/android/ads/views/ac;)Lcom/adchina/android/ads/views/FullScreenAdActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/ae;->a:Lcom/adchina/android/ads/views/ad;

    iget-object v1, v1, Lcom/adchina/android/ads/views/ad;->a:Lcom/adchina/android/ads/views/ac;

    invoke-static {v1}, Lcom/adchina/android/ads/views/ac;->a(Lcom/adchina/android/ads/views/ac;)Lcom/adchina/android/ads/views/FullScreenAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ae;->a:Lcom/adchina/android/ads/views/ad;

    iget-object v0, v0, Lcom/adchina/android/ads/views/ad;->a:Lcom/adchina/android/ads/views/ac;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ac;->a(Lcom/adchina/android/ads/views/ac;)Lcom/adchina/android/ads/views/FullScreenAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;I)V

    return-void
.end method
