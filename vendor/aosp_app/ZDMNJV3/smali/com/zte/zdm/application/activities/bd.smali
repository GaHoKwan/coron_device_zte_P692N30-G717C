.class Lcom/zte/zdm/application/activities/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bd;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bd;->a:Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->finish()V

    return-void
.end method
