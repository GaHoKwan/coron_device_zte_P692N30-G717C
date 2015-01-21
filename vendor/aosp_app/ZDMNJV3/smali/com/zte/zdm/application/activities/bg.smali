.class Lcom/zte/zdm/application/activities/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bg;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bg;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
