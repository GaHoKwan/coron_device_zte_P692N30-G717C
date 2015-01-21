.class Lcom/zte/zdm/application/activities/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/s;->a(Lcom/zte/zdm/application/activities/s;)I

    move-result v0

    div-int/lit16 v0, v0, 0x73a

    iget-object v1, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-static {v1}, Lcom/zte/zdm/application/activities/s;->a(Lcom/zte/zdm/application/activities/s;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x73a

    iget-object v2, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-static {v2}, Lcom/zte/zdm/application/activities/s;->b(Lcom/zte/zdm/application/activities/s;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-static {v3}, Lcom/zte/zdm/application/activities/s;->c(Lcom/zte/zdm/application/activities/s;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    iget-object v3, v3, Lcom/zte/zdm/application/activities/s;->b:Lcom/zte/zdm/application/activities/b;

    invoke-static {v3, v0, v2, v1}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/application/activities/b;ILandroid/widget/Toast;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/t;->a:Lcom/zte/zdm/application/activities/s;

    invoke-static {v2}, Lcom/zte/zdm/application/activities/s;->a(Lcom/zte/zdm/application/activities/s;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " custom timed toast because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
