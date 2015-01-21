.class final Lcom/adchina/android/ads/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/x;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/adchina/android/ads/m;

    invoke-direct {v0}, Lcom/adchina/android/ads/m;-><init>()V

    iget-object v1, p0, Lcom/adchina/android/ads/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/m;->a(Landroid/content/Context;)Lcom/adchina/android/ads/n;

    move-result-object v0

    return-object v0
.end method
