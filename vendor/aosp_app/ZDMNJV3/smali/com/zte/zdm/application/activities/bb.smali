.class Lcom/zte/zdm/application/activities/bb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bb;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/bb;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bb;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;Landroid/os/Message;)V

    goto :goto_0
.end method
