.class public final Lcom/adchina/android/ads/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/m;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/m;)V
    .locals 1

    iput-object p1, p0, Lcom/adchina/android/ads/n;->a:Lcom/adchina/android/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/n;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adchina/android/ads/n;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adchina/android/ads/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/n;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/n;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/n;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/n;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/n;->d:Ljava/lang/String;

    return-object v0
.end method
