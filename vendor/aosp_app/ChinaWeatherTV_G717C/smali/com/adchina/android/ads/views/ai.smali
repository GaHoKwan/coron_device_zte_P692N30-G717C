.class final Lcom/adchina/android/ads/views/ai;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ai;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/ai;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ai;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ai;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;I)V

    return-void
.end method
