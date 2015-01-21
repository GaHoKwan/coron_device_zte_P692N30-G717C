.class Lcom/zte/zdm/application/activities/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bl;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "cancell update when roaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
