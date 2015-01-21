.class final Lcom/adchina/android/ads/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/f;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/y;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/adchina/android/ads/n;

    invoke-virtual {p1}, Lcom/adchina/android/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/r;

    iget-object v1, p0, Lcom/adchina/android/ads/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adchina/android/ads/r;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/adchina/android/ads/z;

    invoke-direct {v1, p0, v0, p1}, Lcom/adchina/android/ads/z;-><init>(Lcom/adchina/android/ads/y;Lcom/adchina/android/ads/r;Lcom/adchina/android/ads/n;)V

    new-instance v0, Lcom/adchina/android/ads/aa;

    iget-object v2, p0, Lcom/adchina/android/ads/y;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1}, Lcom/adchina/android/ads/aa;-><init>(Lcom/adchina/android/ads/y;Landroid/content/Context;Lcom/adchina/android/ads/n;)V

    invoke-static {v1, v0}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    goto :goto_0
.end method
