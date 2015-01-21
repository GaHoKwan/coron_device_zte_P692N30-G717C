.class Lcom/zte/zdm/application/mmi/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bk;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/bk;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    const v3, 0x7f090140

    invoke-virtual {v2, v3}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bk;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
