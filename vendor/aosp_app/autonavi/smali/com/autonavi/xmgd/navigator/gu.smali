.class Lcom/autonavi/xmgd/navigator/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gu;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gu;->a:Lcom/autonavi/xmgd/navigator/SearchActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchActivity;->g(Lcom/autonavi/xmgd/navigator/SearchActivity;)Lcom/autonavi/xmgd/view/GDImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->performClick()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
