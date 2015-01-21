.class Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/GDMyNavigateTitle;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;->this$0:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    iput-object p2, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {v1, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
