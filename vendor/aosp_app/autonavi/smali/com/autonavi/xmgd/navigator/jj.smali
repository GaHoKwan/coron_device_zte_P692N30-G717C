.class Lcom/autonavi/xmgd/navigator/jj;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SetDataPath;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jj;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jj;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jj;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jj;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->h(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    return-void
.end method
