.class public Lzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lang;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lzq;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " autoUpgrade onUpgradeFinished :::: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 1217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1219
    iget-object v0, p0, Lzq;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1222
    iget-object v0, p0, Lzq;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1225
    :cond_2
    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    .line 1228
    const-string v0, " set a alarm for try to auto upgrade dict again "

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lzq;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lafp;->b(D)V

    goto :goto_0
.end method

.method public a(Lry;)V
    .locals 2
    .parameter

    .prologue
    .line 1212
    iget-object v0, p0, Lzq;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)Z

    .line 1213
    return-void
.end method
