.class Leu/chainfire/supersu/Settings$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Leu/chainfire/supersu/Settings$App;>;"
    }
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/Settings;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Settings$1;->鷭:Leu/chainfire/supersu/Settings;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 0
    move-object v0, p1

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    move-object v1, p2

    check-cast v1, Leu/chainfire/supersu/Settings$App;

    move-object p2, v1

    invoke-static {v0}, Leu/chainfire/supersu/Settings$App;->鷭(Leu/chainfire/supersu/Settings$App;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Leu/chainfire/supersu/Settings$App;->鷭(Leu/chainfire/supersu/Settings$App;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
