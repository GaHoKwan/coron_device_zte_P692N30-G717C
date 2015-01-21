.class final Lcom/adchina/android/ads/controllers/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/u;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/b;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/b;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/c;->a:Lcom/adchina/android/ads/controllers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/c;->a:Lcom/adchina/android/ads/controllers/b;

    invoke-static {v0}, Lcom/adchina/android/ads/controllers/b;->a(Lcom/adchina/android/ads/controllers/b;)Lcom/adchina/android/ads/controllers/BaseController;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/adchina/android/ads/controllers/BaseController;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
