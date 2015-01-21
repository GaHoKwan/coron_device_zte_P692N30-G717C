.class Lhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lhx;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lhx;->a:Lhr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhr;->a(Lhr;Z)Z

    .line 581
    iget-object v0, p0, Lhx;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lhx;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lhx;->a:Lhr;

    invoke-static {v1}, Lhr;->b(Lhr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lhx;->a:Lhr;

    invoke-static {v1}, Lhr;->b(Lhr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    iget-object v1, p0, Lhx;->a:Lhr;

    invoke-static {v1, v0}, Lhr;->a(Lhr;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    :cond_0
    iget-object v0, p0, Lhx;->a:Lhr;

    invoke-static {v0}, Lhr;->d(Lhr;)Z

    .line 587
    return-void
.end method
