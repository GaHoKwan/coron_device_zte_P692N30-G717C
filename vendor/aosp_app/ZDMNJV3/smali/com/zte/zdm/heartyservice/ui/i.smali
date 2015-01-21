.class Lcom/zte/zdm/heartyservice/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/i;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "HeartyService"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/i;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-static {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->a(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V

    return-void
.end method
