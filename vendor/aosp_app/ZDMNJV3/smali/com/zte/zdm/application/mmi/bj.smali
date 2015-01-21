.class Lcom/zte/zdm/application/mmi/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bj;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bj;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bj;->a:Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;

    invoke-static {v1}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->a(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
