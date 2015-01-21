.class Lcom/zte/zdm/application/autoupdate/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/autoupdate/AlarmReceiver;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/autoupdate/AlarmReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/autoupdate/a;->a:Lcom/zte/zdm/application/autoupdate/AlarmReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AlarmReceiver.run() time out"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/autoupdate/a;->a:Lcom/zte/zdm/application/autoupdate/AlarmReceiver;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/autoupdate/AlarmReceiver;->a(Landroid/content/Context;)V

    return-void
.end method
