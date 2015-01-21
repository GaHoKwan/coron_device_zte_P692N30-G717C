.class Leu/chainfire/supersu/Installer$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic 櫯:Landroid/content/Context;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$7;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$7;->櫯:Landroid/content/Context;

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$7;->櫯:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Landroid/content/Context;)V

    .line 1286
    return-void
.end method
