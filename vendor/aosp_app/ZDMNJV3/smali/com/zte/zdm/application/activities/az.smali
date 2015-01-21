.class public Lcom/zte/zdm/application/activities/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/zte/zdm/application/mmi/aa;

.field b:I

.field final synthetic c:Lcom/zte/zdm/application/activities/z;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/activities/z;Lcom/zte/zdm/application/mmi/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/az;->c:Lcom/zte/zdm/application/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zte/zdm/application/activities/az;->a:Lcom/zte/zdm/application/mmi/aa;

    iput p3, p0, Lcom/zte/zdm/application/activities/az;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing progress dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/activities/az;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/az;->a:Lcom/zte/zdm/application/mmi/aa;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/aa;->b()Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/az;->c:Lcom/zte/zdm/application/activities/z;

    invoke-static {v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/application/activities/z;)Ljava/util/Hashtable;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/application/activities/az;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
