.class Lcom/zte/zdm/application/activities/s;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/activities/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/activities/b;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/application/activities/s;->b:Lcom/zte/zdm/application/activities/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/zte/zdm/application/activities/t;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/t;-><init>(Lcom/zte/zdm/application/activities/s;)V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/s;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/s;->c:Ljava/lang/String;

    iput p4, p0, Lcom/zte/zdm/application/activities/s;->d:I

    iput-object p2, p0, Lcom/zte/zdm/application/activities/s;->e:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/s;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/activities/s;->d:I

    return v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/activities/s;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/s;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/activities/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/s;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/zte/zdm/application/activities/s;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/zdm/application/activities/s;->d:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/s;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/s;->c:Ljava/lang/String;

    iget v2, p0, Lcom/zte/zdm/application/activities/s;->d:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/s;->b:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/s;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/application/activities/b;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/s;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
