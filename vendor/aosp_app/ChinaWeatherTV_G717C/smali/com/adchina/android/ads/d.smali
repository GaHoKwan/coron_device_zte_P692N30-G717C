.class final Lcom/adchina/android/ads/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic a:Lcom/adchina/android/ads/f;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/f;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/d;->a:Lcom/adchina/android/ads/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/d;->a:Lcom/adchina/android/ads/f;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/adchina/android/ads/f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
