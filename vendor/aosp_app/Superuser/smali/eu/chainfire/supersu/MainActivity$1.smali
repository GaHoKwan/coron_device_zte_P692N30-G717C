.class Leu/chainfire/supersu/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu.action.UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "eu.chainfire.supersu.extra.FLAGS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 78
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->鷭()V

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->櫯:Z

    .line 88
    :cond_1
    :goto_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 89
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->鷭(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->鷭()V

    .line 93
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->鷭:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->ˮ͈:Z

    .line 98
    :cond_3
    return-void
.end method
