.class Lcom/autonavi/xmgd/navigator/kb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Version;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Version;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/kb;->a:Lcom/autonavi/xmgd/navigator/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/kb;->a:Lcom/autonavi/xmgd/navigator/Version;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/Version;->a:[Z

    aput-boolean p3, v0, p2

    return-void
.end method
