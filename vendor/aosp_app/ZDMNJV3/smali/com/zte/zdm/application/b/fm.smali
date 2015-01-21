.class Lcom/zte/zdm/application/b/fm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fm;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/fm;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "no_remind_under_network"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
