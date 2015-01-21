.class public Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lang;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

.field final synthetic a:Z


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lzp;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iput-boolean p2, p0, Lzp;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " upgradeHotDictInStatusBar onUpgradeFinished :::: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 1115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1116
    iget-object v0, p0, Lzp;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1120
    iget-object v0, p0, Lzp;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1122
    :cond_2
    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    .line 1125
    iget-boolean v0, p0, Lzp;->a:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lzp;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lry;)V
    .locals 0
    .parameter

    .prologue
    .line 1110
    return-void
.end method
