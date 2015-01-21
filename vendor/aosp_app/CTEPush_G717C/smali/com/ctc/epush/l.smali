.class final Lcom/ctc/epush/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushAppDetail;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/l;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/l;->a:Lcom/ctc/epush/PushAppDetail;

    invoke-virtual {v0}, Lcom/ctc/epush/PushAppDetail;->finish()V

    return-void
.end method
