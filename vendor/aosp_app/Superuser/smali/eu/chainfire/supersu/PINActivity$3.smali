.class Leu/chainfire/supersu/PINActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Leu/chainfire/supersu/Constants$OnExpireTimeSelected;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ˮ͈:Leu/chainfire/supersu/Settings;

.field private final synthetic 櫯:Leu/chainfire/supersu/Settings$App;

.field final synthetic 鷭:Leu/chainfire/supersu/PINActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PINActivity;Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    iput-object p2, p0, Leu/chainfire/supersu/PINActivity$3;->櫯:Leu/chainfire/supersu/Settings$App;

    iput-object p3, p0, Leu/chainfire/supersu/PINActivity$3;->ˮ͈:Leu/chainfire/supersu/Settings;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final 鷭(J)V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->櫯:Leu/chainfire/supersu/Settings$App;

    iput-wide p1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 173
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->櫯:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x1

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 174
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->櫯:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 175
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->ˮ͈:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->櫯:Leu/chainfire/supersu/Settings$App;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    iget-object v2, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-static {v2}, Leu/chainfire/supersu/PINActivity;->鷭(Leu/chainfire/supersu/PINActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 179
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 180
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$3;->鷭:Leu/chainfire/supersu/PINActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 181
    return-void
.end method
