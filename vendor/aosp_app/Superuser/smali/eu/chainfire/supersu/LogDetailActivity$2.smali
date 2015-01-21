.class Leu/chainfire/supersu/LogDetailActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/LogDetailActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogDetailActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v0}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Leu/chainfire/supersu/LogDetailActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Leu/chainfire/supersu/LogDetailActivity;I)V

    .line 205
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    iget-object v1, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v1}, Leu/chainfire/supersu/LogDetailActivity;->櫯(Leu/chainfire/supersu/LogDetailActivity;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v2}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Leu/chainfire/supersu/LogDetailActivity;)I

    move-result v2

    iget-object v3, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v3}, Leu/chainfire/supersu/LogDetailActivity;->ˮ͈(Leu/chainfire/supersu/LogDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    iget-object v1, p0, Leu/chainfire/supersu/LogDetailActivity$2;->鷭:Leu/chainfire/supersu/LogDetailActivity;

    const v2, 0x7f040033

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Leu/chainfire/supersu/LogDetailActivity;Landroid/view/View;)V

    .line 207
    return-void
.end method
