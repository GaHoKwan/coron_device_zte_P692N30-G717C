.class public Lcom/sohu/inputmethod/settings/internet/SoftwareStatistics;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v4, Lami;

    invoke-direct {v4, p1}, Lami;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x6

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v6}, Lsg;->a(Z)V

    .line 27
    invoke-virtual {v0, v6}, Lsg;->b(Z)V

    .line 28
    invoke-static {p1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    .line 29
    return-void
.end method
