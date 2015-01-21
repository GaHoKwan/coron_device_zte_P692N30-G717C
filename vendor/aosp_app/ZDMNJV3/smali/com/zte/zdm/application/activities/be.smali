.class Lcom/zte/zdm/application/activities/be;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/be;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/be;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-static {v0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
