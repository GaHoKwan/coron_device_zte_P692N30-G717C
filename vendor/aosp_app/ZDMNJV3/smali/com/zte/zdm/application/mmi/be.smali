.class Lcom/zte/zdm/application/mmi/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/FeedbackNewActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/be;->a:Lcom/zte/zdm/application/mmi/FeedbackNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/be;->a:Lcom/zte/zdm/application/mmi/FeedbackNewActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->a(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
