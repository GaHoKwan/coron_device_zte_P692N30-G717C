.class public Lcom/zte/zdm/application/b/fv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/zte/zdm/application/b/dd;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:J

.field private h:Ljava/lang/Runnable;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/b/dd;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/zte/zdm/application/b/fv;->f:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/zte/zdm/application/b/fv;->h:Ljava/lang/Runnable;

    iput-wide p6, p0, Lcom/zte/zdm/application/b/fv;->g:J

    iput-object p8, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    iput p9, p0, Lcom/zte/zdm/application/b/fv;->a:I

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fv;->i:[Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/b/fv;->j:[Ljava/lang/Runnable;

    return-void
.end method

.method public run()V
    .locals 10

    const-string v0, "is this a new thread"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/application/b/fv;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->f:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/zte/zdm/application/b/fv;->g:J

    iget-object v7, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;)I

    move-result v0

    invoke-static {v8, v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show yes no button dialog, its id is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->f:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/zte/zdm/application/b/fv;->g:J

    iget-object v7, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;)I

    move-result v0

    invoke-static {v8, v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show download cancel cofirm dialog, its id is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->f:Ljava/lang/Runnable;

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;JILjava/lang/String;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show selection dialog, its id is:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v2}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show yes button dialog, its id is:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v9, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->e:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->f:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/zte/zdm/application/b/fv;->h:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/zte/zdm/application/b/fv;->g:J

    iget-object v8, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/lang/String;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show yes delay no button dialog, its id is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->d(Lcom/zte/zdm/application/b/dd;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/z;->e()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fv;->b:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/application/b/fv;->i:[Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/zdm/application/b/fv;->j:[Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/zte/zdm/application/b/fv;->g:J

    iget-object v7, p0, Lcom/zte/zdm/application/b/fv;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
