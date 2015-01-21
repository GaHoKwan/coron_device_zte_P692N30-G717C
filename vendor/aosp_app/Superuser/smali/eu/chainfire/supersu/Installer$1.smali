.class Leu/chainfire/supersu/Installer$1;
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
.field private final synthetic 櫯:Ljava/lang/String;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$1;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$1;->櫯:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->櫯:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "%s --auto-daemon &"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/system/xbin/daemonsu"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 410
    return-void
.end method
