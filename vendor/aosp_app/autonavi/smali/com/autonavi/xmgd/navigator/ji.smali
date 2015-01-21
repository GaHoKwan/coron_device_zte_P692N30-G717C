.class Lcom/autonavi/xmgd/navigator/ji;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SetDataPath;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->g(Lcom/autonavi/xmgd/navigator/SetDataPath;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ji;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
